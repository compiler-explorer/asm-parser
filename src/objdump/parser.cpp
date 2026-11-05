#include "parser.hpp"
#include "../types/line.hpp"
#include "../utils/jsonwriter.hpp"
#include "../utils/regexwrappers.hpp"
#include "../utils/utils.hpp"
#include <algorithm>
#include <clocale>
#include <ctre.hpp>
#include <istream>
#include <iterator>
#include <string_view>
#include <unordered_map>

namespace
{
constexpr std::size_t maxLines = 5000;
}

void AsmParser::ObjDumpParserState::commonReset()
{
    this->currentLine = {};
    this->text.clear();
    this->hasPrefixingWhitespace = false;
    this->inComment = false;
    this->afterSpacedHash = false;
    this->inAddress = true;
    this->inOpcodes = false;
    this->inLabel = false;
    this->inSectionStart = false;
    this->inSectionName = false;
    this->inSourceRef = false;
    this->skipRestOfTheLine = false;
    this->inRelocation = false;
    this->inSourceRefLineNumber = false;
}

AsmParser::ObjDumpParser::ObjDumpParser(const Filter &filter) : filter(filter)
{
    reproducible = false;
}

void AsmParser::ObjDumpParser::updateSourceRefLineNumber()
{
    auto lineNum = atoi(this->state.text.c_str());
    if (lineNum > 0)
    {
        this->state.currentSourceRef.line = lineNum;
    }
}

void AsmParser::ObjDumpParser::eol()
{
    this->total_lines++;

    if (this->state.inLabel)
    {
        this->label();
    }

    if (this->state.ignoreUntilNextLabel)
    {
        this->state.commonReset();
        return;
    }

    if (this->state.inSourceRefLineNumber)
    {
        this->updateSourceRefLineNumber();
    }
    else if (!this->state.text.empty())
    {
        this->state.currentLine.text = this->state.text;
        this->state.currentLine.section = this->state.currentSection;

        if (!this->state.currentLine.is_label)
        {
            this->state.currentLine.text = ' ' + this->state.currentLine.text;

            for (auto &label : this->state.currentLine.labels)
            {
                // cols start at 1, and we added a space, so add 2
                label.range.start_col += 2;
                label.range.end_col += 2;
            }
        }

        this->state.currentLine.source = this->state.currentSourceRef;
        if (this->state.currentLine.source.is_usercode)
            this->lastFunctionHasUserCode = true;

        // A function without user code is only removed at the next label, so its lines mustn't use up the limit,
        // otherwise a large statically linked runtime hides the user's functions behind it. The same goes for the
        // lines of hidden functions, which only get in once it is known that they fit alongside the shown code.
        const bool hidden = this->inHiddenFunction();
        const std::size_t counted = this->lines.size() - this->hiddenLines;
        if (counted >= maxLines && !this->may_remove_last_function())
        {
            // the lines are cut to the limit, and the marker added, once the hidden functions are gone
            this->truncated = true;
            this->state.stopParsing = true;
        }
        else if (hidden && this->hiddenLines >= maxLines)
        {
            this->abandonHiddenFunction();
        }
        else
        {
            lines.push_back(this->state.currentLine);
            if (hidden)
                this->hiddenLines++;
        }
    }

    this->state.commonReset();
}

bool AsmParser::ObjDumpParser::may_remove_last_function() const
{
    return this->filter.library_functions && !this->labels.empty() && !this->lastFunctionHasUserCode;
}

void AsmParser::ObjDumpParser::maybe_remove_last_function()
{
    if (this->may_remove_last_function())
    {
        // labels.back() can be a .L label inside the function, so a hidden function is removed from its own start
        // instead: a prefix left behind would still be there to be promoted by a later caller
        std::size_t first = this->labels.back().second - 1;
        if (this->inHiddenFunction())
        {
            first = this->hiddenFunctions.back().start;
            this->hiddenLines -= this->lines.size() - first;
            this->hiddenFunctions.pop_back();
            while (!this->labels.empty() && static_cast<std::size_t>(this->labels.back().second) > first)
                this->labels.pop_back();
        }
        else
        {
            this->labels.pop_back();
        }
        this->lines.erase(this->lines.begin() + first, this->lines.end());
        // every function that is still there was kept for having user code
        this->lastFunctionHasUserCode = true;
    }
}

void AsmParser::ObjDumpParser::label()
{
    if (this->state.text.empty())
    {
        this->state.inLabel = false;
        return;
    }

    auto label = AssemblyTextParserUtils::getLabelFromObjdumpLabel(this->state.text);
    if (label)
        this->state.text = label.value();

    const bool wasInHiddenFunction = this->inHiddenFunction();
    this->maybe_remove_last_function();
    // labels starting with .L are inside a function
    const bool startsFunction = !this->state.text.starts_with(".L");
    if (wasInHiddenFunction && !this->inHiddenFunction())
    {
        this->state.currentLine.address.reset();
        if (!startsFunction)
        {
            // the rest of the function that was just removed
            this->state.ignoreUntilNextLabel = true;
            return;
        }
    }
    if (startsFunction)
        this->endHiddenFunction();

    // objdump only prints a source line when it changes, but a new function doesn't continue the source of the one
    //  before it; labels starting with a dot are inside a function (e.g. .l_start in hand-written assembly)
    if (!this->state.text.starts_with("."))
        this->state.currentSourceRef = {};

    const auto visibility = AssemblyTextParserUtils::getFunctionVisibility(this->state.text, this->filter);
    const bool startsHiddenFunction = startsFunction && visibility == AssemblyTextParserUtils::FunctionVisibility::HiddenUnlessReferenced;

    if (startsHiddenFunction && this->hiddenLines >= maxLines)
        this->hiddenCapReached = true;

    // a label inside a function that is being skipped doesn't start showing it
    this->state.ignoreUntilNextLabel = (!startsFunction && this->state.ignoreUntilNextLabel) ||
                                       visibility == AssemblyTextParserUtils::FunctionVisibility::Hidden ||
                                       (startsHiddenFunction && this->hiddenCapReached);
    if (this->state.ignoreUntilNextLabel)
        return;

    if (startsHiddenFunction)
        this->startHiddenFunction(this->state.text);

    if (this->filter.library_functions)
        this->state.checkNextFileForLibraryCode = true;

    this->state.previousLabel = this->state.text;
    this->state.currentLine.label = this->state.text;

    this->state.text = this->state.text + ":";
    this->state.currentLine.is_label = true;

    this->labels.push_back({ this->state.previousLabel, static_cast<int32_t>(lines.size() + 1) });
    this->lastFunctionHasUserCode = false;
}

void AsmParser::ObjDumpParser::labelref()
{
    if (this->state.ignoreUntilNextLabel)
    {
        this->state.currentLabelReference = {};
        return;
    }

    std::size_t lastBracketPos = this->state.text.find_last_of('>');
    if (lastBracketPos == std::string::npos)
    {
        this->state.currentLabelReference = {};
        return;
    }

    std::size_t startBracketPos = std::string::npos;
    for (std::size_t i = lastBracketPos; i-- > 0;)
    {
        if (this->state.text[i] == '<')
        {
            if (i == 0 || is_whitespace(this->state.text[i - 1]))
            {
                startBracketPos = i;
            }
        }
    }

    if (startBracketPos != std::string::npos && startBracketPos < lastBracketPos)
    {
        std::size_t labelEndPos = lastBracketPos;

        std::size_t lastPlusPos = this->state.text.find_last_of('+', lastBracketPos);

        if (lastPlusPos != std::string::npos && lastPlusPos > startBracketPos)
        {
            std::size_t offsetLen = lastBracketPos - lastPlusPos - 1;

            if (offsetLen >= 3 && this->state.text[lastPlusPos + 1] == '0' && this->state.text[lastPlusPos + 2] == 'x')
            {
                bool validHex = true;
                for (std::size_t i = 3; i <= offsetLen; ++i)
                {
                    if (!is_hex(this->state.text[lastPlusPos + i]))
                    {
                        validHex = false;
                        break;
                    }
                }

                if (validHex)
                {
                    labelEndPos = lastPlusPos;
                }
            }
        }

        if (labelEndPos > startBracketPos + 1)
        {
            try
            {
                std::string_view text_view(this->state.text);

                this->state.currentLabelReference.range.start_col =
                static_cast<uint16_t>(ustrlen(text_view.substr(0, startBracketPos)) + 1);

                this->state.currentLabelReference.range.end_col =
                static_cast<uint16_t>(ustrlen(text_view.substr(0, labelEndPos)));

                std::size_t nameLen = labelEndPos - startBracketPos - 1;
                this->state.currentLabelReference.name = text_view.substr(startBracketPos + 1, nameLen);

                const auto visibility =
                AssemblyTextParserUtils::getFunctionVisibility(this->state.currentLabelReference.name, this->filter);
                if (visibility != AssemblyTextParserUtils::FunctionVisibility::Hidden)
                {
                    this->state.currentLine.labels.push_back(this->state.currentLabelReference);
                    if (visibility == AssemblyTextParserUtils::FunctionVisibility::HiddenUnlessReferenced &&
                        !this->hiddenReferenceTargets.contains(this->state.currentLabelReference.name))
                        this->hiddenReferenceTargets.emplace(this->state.currentLabelReference.name);
                }
            }
            catch (...)
            {
                // ignore erroneous nonsense
                this->state.currentLabelReference.name = "";
            }
        }
    }

    this->state.currentLabelReference = {};
}

void AsmParser::ObjDumpParser::opcodes()
{
    if (!this->state.ignoreUntilNextLabel)
    {
        std::string opcode{};
        for (auto c : this->state.text)
        {
            if (c != ' ')
            {
                opcode += c;
            }
            else
            {
                if (!opcode.empty())
                {
                    this->state.currentLine.opcodes.push_back(opcode);
                    opcode.clear();
                }
            }
        }
    }

    this->state.text.clear();
    this->state.inOpcodes = false;
}

void AsmParser::ObjDumpParser::actually_address()
{
    bool maybeNotHexAfterall = false;

    if (!this->state.ignoreUntilNextLabel)
    {
        int64_t addr = 0;
        int8_t bitsdone = 0;
        for (auto c = this->state.text.rbegin(); c != this->state.text.rend(); c++)
        {
            if (!is_hex(*c))
            {
                maybeNotHexAfterall = true;
                break;
            }

            auto hint = hex2int(*c);
            if (hint != 0)
            {
                // note: the if works for cases in 64 bit objdumps where label lines are formatted like this "0000000000408000 <_init>:"
                //  because it most likely won't get to the last/first hex chunk this way.
                //  Otherwise makes gcc think it's gonna be bigger than a int64_t and complain about potential overflows.
                //  (or maybe some other bit of the code is wrong??)
                addr += hint << bitsdone;
            }
            bitsdone += 4;
        }

        this->state.currentLine.address = addr;
    }

    if (maybeNotHexAfterall)
    {
        // it might be a label that we can ignore because its noise..
        this->state.skipRestOfTheLine = true;
        this->state.inAddress = false;
    }
    else
    {
        this->state.inAddress = false;
        this->state.inOpcodes = true;
    }
}

void AsmParser::ObjDumpParser::undo_last_line_if_label()
{
    const auto lastLine = this->lines.back();
    if (lastLine.is_label)
    {
        std::erase_if(this->labels,
                      [lastLine](auto &label)
                      {
                          return label.first == lastLine.label;
                      });
        this->lines.pop_back();
    }
}

void AsmParser::ObjDumpParser::do_file_check(std::string_view filename)
{
    this->state.currentSourceRef.is_usercode = !this->lib_detection.file_in_library(filename);
}

void AsmParser::ObjDumpParser::actually_filename()
{
    this->state.currentFilename = this->state.text;
    this->state.inAddress = false;
    this->state.inOpcodes = false;
    this->state.skipRestOfTheLine = true;

    this->do_file_check(this->state.currentFilename);
}

void AsmParser::ObjDumpParser::address()
{
    if (!this->state.text.empty())
    {
        if (this->state.text[0] == '/')
        {
            // probably a filename
            this->actually_filename();
        }
        else
        {
            // usually it's an actual hex address
            this->actually_address();
        }
    }
    else
    {
        this->state.inAddress = false;
        this->state.inOpcodes = false;
    }

    this->state.text.clear();
}

void AsmParser::ObjDumpParser::setReproducible()
{
    this->reproducible = true;
}

bool AsmParser::ObjDumpParser::inHiddenFunction() const
{
    return !this->hiddenFunctions.empty() && this->hiddenFunctions.back().end == std::string::npos;
}

void AsmParser::ObjDumpParser::startHiddenFunction(const std::string &name)
{
    this->hiddenFunctions.push_back({ name, this->lines.size(), std::string::npos, this->lastFunctionHasUserCode });
}

void AsmParser::ObjDumpParser::endHiddenFunction()
{
    if (this->inHiddenFunction())
        this->hiddenFunctions.back().end = this->lines.size();
}

void AsmParser::ObjDumpParser::abandonHiddenFunction()
{
    const auto &function = this->hiddenFunctions.back();
    this->hiddenLines -= this->lines.size() - function.start;
    this->lines.erase(this->lines.begin() + function.start, this->lines.end());
    while (!this->labels.empty() && static_cast<std::size_t>(this->labels.back().second) > function.start)
        this->labels.pop_back();
    // as if the function had been hidden outright: the next label looks at the function before it
    this->lastFunctionHasUserCode = function.hadUserCode;
    this->hiddenFunctions.pop_back();
    this->hiddenCapReached = true;
    this->state.ignoreUntilNextLabel = true;
}

void AsmParser::ObjDumpParser::finishParsing()
{
    this->maybe_remove_last_function();
    this->endHiddenFunction();
    this->removeHiddenFunctions(this->chooseHiddenFunctionsToKeep());

    if (this->truncated || this->lines.size() > maxLines)
    {
        this->lines.resize(std::min(this->lines.size(), maxLines));
        std::erase_if(this->labels,
                      [](const auto &label)
                      {
                          return static_cast<std::size_t>(label.second) > maxLines;
                      });

        asm_line truncatedLine = {};
        truncatedLine.text = "[truncated; too many lines]";
        this->lines.push_back(truncatedLine);
    }

    this->removeReferencesToRemovedHiddenFunctions();
}

std::vector<bool> AsmParser::ObjDumpParser::chooseHiddenFunctionsToKeep() const
{
    std::vector<bool> keep(this->hiddenFunctions.size(), false);
    if (this->hiddenFunctions.empty())
        return keep;

    // The output is the shown lines and the kept hidden functions merged in file order and cut at maxLines, so a kept
    // function has to end before the cut and be referenced from a line before it. Only references from lines of shown
    // code count, wherever the hidden function is defined.
    std::unordered_map<std::string_view, std::size_t> firstReference;
    std::vector<std::size_t> shownBefore(this->hiddenFunctions.size());
    std::size_t shown = 0;
    std::size_t next = 0;
    for (std::size_t i = 0; i < this->lines.size();)
    {
        if (next < this->hiddenFunctions.size() && this->hiddenFunctions[next].start == i)
        {
            shownBefore[next] = shown;
            i = this->hiddenFunctions[next++].end;
            continue;
        }
        for (const auto &label : this->lines[i].labels)
        {
            if (this->hiddenReferenceTargets.contains(label.name))
                firstReference.emplace(label.name, shown);
        }
        shown++;
        i++;
    }

    std::vector<std::size_t> kept;
    for (std::size_t i = 0; i < this->hiddenFunctions.size(); i++)
    {
        if (firstReference.contains(this->hiddenFunctions[i].name))
            kept.push_back(i);
    }

    // Start with everything that a shown line refers to and drop what doesn't qualify. Only the last failing function
    // goes each time: dropping one pulls what follows it back into the output, which can rescue the others.
    std::vector<std::size_t> heldBefore;
    for (;;)
    {
        heldBefore.assign(1, 0);
        for (const auto i : kept)
            heldBefore.push_back(heldBefore.back() + this->hiddenFunctions[i].end - this->hiddenFunctions[i].start);

        const auto positionOfShownLine = [&](std::size_t index)
        {
            const auto firstAfter = std::partition_point(kept.begin(), kept.end(),
                                                         [&](std::size_t i)
                                                         {
                                                             return shownBefore[i] <= index;
                                                         });
            return index + heldBefore[static_cast<std::size_t>(firstAfter - kept.begin())];
        };

        std::size_t failing = kept.size();
        for (std::size_t k = kept.size(); k-- > 0 && failing == kept.size();)
        {
            const auto &function = this->hiddenFunctions[kept[k]];
            const bool fits = shownBefore[kept[k]] + heldBefore[k] + function.end - function.start <= maxLines;
            if (!fits || positionOfShownLine(firstReference.at(function.name)) >= maxLines)
                failing = k;
        }
        if (failing == kept.size())
            break;
        kept.erase(kept.begin() + static_cast<std::ptrdiff_t>(failing));
    }

    for (const auto i : kept)
        keep[i] = true;
    return keep;
}

void AsmParser::ObjDumpParser::removeHiddenFunctions(const std::vector<bool> &keep)
{
    std::vector<HiddenFunction> removed;
    for (std::size_t i = 0; i < this->hiddenFunctions.size(); i++)
    {
        if (!keep[i])
            removed.push_back(this->hiddenFunctions[i]);
    }
    if (removed.empty())
        return;

    // the functions were added in order, so the ranges are sorted and don't overlap
    std::size_t out = removed.front().start;
    for (std::size_t i = 0; i < removed.size(); i++)
    {
        const auto next = i + 1 < removed.size() ? removed[i + 1].start : this->lines.size();
        for (std::size_t from = removed[i].end; from < next; from++)
        {
            this->lines[out++] = std::move(this->lines[from]);
            // The label that follows a hidden function has no address in the output, as it used to be read while the
            //  hidden function was still being skipped.
            if (from == removed[i].end)
                this->lines[out - 1].address.reset();
        }
    }
    this->lines.resize(out);

    // a label is a 1-based index into the lines, which have moved up by the size of the functions before it
    std::vector<asm_labelpair_t> remaining;
    std::size_t range = 0;
    std::size_t removedBefore = 0;
    for (auto &label : this->labels)
    {
        const auto index = static_cast<std::size_t>(label.second) - 1;
        while (range < removed.size() && removed[range].end <= index)
        {
            removedBefore += removed[range].end - removed[range].start;
            range++;
        }
        if (range < removed.size() && removed[range].start <= index)
            continue;
        label.second -= static_cast<int32_t>(removedBefore);
        remaining.push_back(std::move(label));
    }
    this->labels = std::move(remaining);
}

void AsmParser::ObjDumpParser::removeReferencesToRemovedHiddenFunctions()
{
    if (this->hiddenReferenceTargets.empty())
        return;

    // A reference to a hidden function was kept in case it turned out to be referenced from a function we show. Only
    //  one that was kept has a definition to link to, any other would point at nothing.
    std::unordered_set<std::string_view> defined;
    for (const auto &label : this->labels)
        defined.emplace(label.first);

    for (auto &line : this->lines)
    {
        std::erase_if(line.labels,
                      [&](const auto &label)
                      {
                          return this->hiddenReferenceTargets.contains(label.name) && !defined.contains(label.name);
                      });
    }
}

void AsmParser::ObjDumpParser::fromStream(std::istream &in)
{
    char c;

    this->total_lines = 0;
    this->state.inAddress = true;
    while (!this->state.stopParsing && in.get(c))
    {
        if (c == '\r')
        {
            // skip cr (assuming there's going to be an lf)
        }
        else if (c == '\n')
        {
            if (!this->state.inComment && !this->state.inLabel)
            {
                this->labelref();
            }
            this->eol();
            continue;
        }
        else if (!this->state.skipRestOfTheLine)
        {
            if (this->state.inAddress)
            {
                if (c == '/')
                {
                    // source reference
                    this->state.inAddress = false;
                    this->state.inSourceRef = true;
                }
                else if (c == ';')
                {
                    continue;
                }
                else if (c == ':')
                {
                    // a source reference on Windows starts with a drive letter, e.g. C:\Windows\TEMP\...\example.cpp:5
                    const auto next = in.peek();
                    if (this->state.text.length() == 1 && (next == '\\' || next == '/') &&
                        is_windows_path(this->state.text + c + static_cast<char>(next)))
                    {
                        this->state.inAddress = false;
                        this->state.inSourceRef = true;
                        this->state.text += c;
                        continue;
                    }

                    this->address();
                    continue;
                }
                else if (is_whitespace(c))
                {
                    if (this->state.text == "Disassembly")
                    {
                        this->state.inAddress = false;
                        this->state.inSectionStart = true;
                        this->state.currentSection.clear();
                    }
                    else if (!this->state.text.empty())
                    {
                        this->address();
                        this->state.inAddress = false;
                        this->state.inLabel = true;
                        continue;
                    }
                    else
                    {
                        // skip prefixing whitespace
                        continue;
                    }
                }
            }
            else if (this->state.inLabel)
            {
                // go on until eol
            }
            else if (this->state.inOpcodes)
            {
                if ((c == ' ') || (c == '\t'))
                {
                    if (this->state.text.empty())
                        continue;
                    if (this->state.text[this->state.text.length() - 1] == ' ')
                    {
                        this->opcodes();
                        continue;
                    }
                }
                else if (c == 'R')
                {
                    this->state.inRelocation = true;
                    this->state.inOpcodes = false;

                    this->state.text += "   ";
                }
                else if (!is_hex(c))
                {
                    this->state.inOpcodes = false;
                }
            }
            else if (this->state.inRelocation)
            {
                // R_XXXXXX<tab>data for reloc
                // data can be symbol, symbol + addend, some value alone.
                // Simply change TAB to single space then take everything until EOL as data.
                if (c == '\t')
                {
                    this->state.text += ' ';
                    continue;
                }
            }
            else if (this->state.inSectionStart)
            {
                if (!this->state.inSectionName)
                {
                    this->state.inSectionName = (this->state.text == "Disassembly of section ");
                    if (this->state.inSectionName)
                    {
                        this->state.text.clear();

                        this->state.currentSection.clear();
                        this->state.currentSection += c;
                        continue;
                    }
                }
                else
                {
                    if (c == ':')
                    {
                        this->state.skipRestOfTheLine = true;
                        this->state.text.clear();
                    }
                    else
                    {
                        this->state.currentSection += c;
                    }
                    continue;
                }
            }
            else if (this->state.inSourceRef)
            {
                if (c == ':')
                {
                    // the header of the output looks the same on Windows when objdump got an absolute path, e.g.
                    //  C:\Windows\TEMP\compiler-explorer-compilerAbC123\output.s.exe:     file format pei-x86-64
                    //  while a source reference is followed by its line number
                    const auto next = in.peek();
                    if (is_windows_path(this->state.text) && !(next >= '0' && next <= '9'))
                    {
                        this->state.text.clear();
                        this->state.inSourceRef = false;
                        this->state.skipRestOfTheLine = true;
                        continue;
                    }

                    this->state.currentSourceRef = asm_source{ .file = this->state.text, .line = 0, .column = 0 };
                    this->state.currentFilename = this->state.currentSourceRef.file;
                    this->state.text.clear();
                    this->do_file_check(this->state.currentSourceRef.file);

                    // like /app/ paths, the user's sources in the Compiler Explorer temp directory on Windows
                    //  are shown relative to it
                    if (auto relative = windows_program_relative_path(this->state.currentSourceRef.file))
                        this->state.currentSourceRef.file = std::move(relative.value());

                    this->state.inSourceRef = true;
                    this->state.inSourceRefLineNumber = true;
                    continue;
                }
                else if (this->state.inSourceRefLineNumber && is_whitespace(c))
                {
                    this->updateSourceRefLineNumber();
                    this->state.text.clear();
                    this->state.skipRestOfTheLine = true;
                    continue;
                }
            }
            else if (!this->state.inComment)
            {
                // An x86 comment is ` # `; elsewhere `#` is an immediate prefix (`tbz w0, #0, 4005a8 <foo>`), which is
                //  never followed by whitespace
                if (this->state.afterSpacedHash && is_whitespace(c))
                {
                    if (!this->state.inLabel)
                    {
                        this->labelref();
                    }
                    this->state.inComment = true;
                }
                this->state.afterSpacedHash = c == '#' && !this->state.text.empty() && is_whitespace(this->state.text.back());
            }

            if (is_whitespace(c) && this->state.text.empty())
                continue;
            this->state.text += c;
        }
    }

    this->finishParsing();
}

void AsmParser::ObjDumpParser::outputJson(std::ostream &out) const
{
    std::vector<std::unique_ptr<asm_line_v>> linesv;
    linesv.reserve(this->lines.size());
    for (auto &line : this->lines)
    {
        linesv.push_back(std::make_unique<asm_line_v>(line));
    }

    std::vector<asm_labelpair> labelsv;
    labelsv.reserve(this->labels.size());
    for (auto &label : this->labels)
    {
        labelsv.push_back(asm_labelpair{ std::string_view{ label.first.begin(), label.first.end() }, label.second });
    }

    JsonWriter writer(out, linesv, labelsv, this->filter, this->total_lines);
    if (this->reproducible)
        writer.setReproducible();
    writer.write();
}

void AsmParser::ObjDumpParser::outputDebugJson(std::ostream &out) const
{
    out << "Not implemented"
        << "\n";
    throw std::runtime_error("Not implemented");
}

void AsmParser::ObjDumpParser::outputText(std::ostream &out) const
{
    for (const auto &line : this->lines)
    {
        out << line.text << "\n";
    }
}
