#include "parser.hpp"
#include "../types/line.hpp"
#include "../utils/utils.hpp"
#include "../utils/jsonwriter.hpp"
#include <iostream>

AsmParser::ObjDumpParser::ObjDumpParser(const Filter filter) : filter(filter) {
}

void AsmParser::ObjDumpParser::eol() {
    if (!this->state.text.empty()) {
        this->state.currentLine.text = this->state.text;
        this->state.currentLine.section = this->state.currentSection;

        if (!this->state.currentLine.is_label) {
            this->state.currentLine.text = ' ' + this->state.currentLine.text;

            for (auto &label: this->state.currentLine.labels) {
                // cols start at 1, and we added a space, so add 2
                label.range.start_col += 2;
                label.range.end_col += 2;
            }
        }

        lines.push_back(this->state.currentLine);
    }

    this->state.commonReset();
}

void AsmParser::ObjDumpParser::label() {
    this->state.previousLabel = this->state.text;

    this->state.text = this->state.text + ":";
    this->state.currentLine.is_label = true;

    labels.emplace(this->state.previousLabel, lines.size());
}

void AsmParser::ObjDumpParser::labelref() {
    this->state.currentLabelReference.range.end_col = this->state.text.length();
    this->state.currentLabelReference.name = this->state.text.substr(
        this->state.currentLabelReference.range.start_col
    );

    this->state.currentLine.labels.push_back(this->state.currentLabelReference);
    this->state.currentLabelReference = {};
}

void AsmParser::ObjDumpParser::opcodes() {
    std::string opcode{};
    for (auto c: this->state.text) {
        if (c != ' ') {
            opcode += c;
        } else {
            if (!opcode.empty()) {
                this->state.currentLine.opcodes.push_back(opcode);
                opcode.clear();
            }
        }
    }
    this->state.text.clear();
    this->state.inOpcodes = false;
}

void AsmParser::ObjDumpParser::actually_address() {
    int64_t addr = 0;
    int8_t bitsdone = 0;
    for (auto c = this->state.text.rbegin(); c != this->state.text.rend(); c++) {
        if (!is_hex(*c)) break;

        addr += hex2int(*c) << bitsdone;
        bitsdone += 4;
    }

    this->state.currentLine.address = addr;

    this->state.inAddress = false;
    this->state.inOpcodes = true;
}

void AsmParser::ObjDumpParser::actually_filename() {
    this->state.currentFilename = this->state.text;

    this->state.inAddress = false;
    this->state.inOpcodes = false;
    this->state.skipRestOfTheLine = true;
}

void AsmParser::ObjDumpParser::address() {
    if (!this->state.text.empty()) {
        if (this->state.text[0] == '/') {
            // probably a filename
            this->actually_filename();
        } else {
            // usually it's an actual hex address
            this->actually_address();
        }
    } else {
        this->state.inAddress = false;
        this->state.inOpcodes = false;
    }

    this->state.text.clear();
}

void AsmParser::ObjDumpParser::fromStream(std::istream &in) {
    char c;

    this->state.inAddress = true;
    while(in.get(c)) {
        if (c == 13) {
            // skip cr (assuming there's going to be an lf)
        } else if (c == 10) {
            this->eol();
            continue;
        } else if (!this->state.skipRestOfTheLine) {

            if (this->state.inAddress) {
                if (c == ':') {
                    this->address();
                    continue;
                } else if (is_whitespace(c)) {
                    if (this->state.text == "Disassembly") {
                        this->state.inAddress = false;
                        this->state.inSectionStart = true;
                        this->state.currentSection.clear();
                    } else if (!this->state.text.empty()) {
                        this->address();
                        this->state.inAddress = false;
                        this->state.inLabel = true;
                        continue;
                    } else {
                        // skip prefixing whitespace
                        continue;
                    }
                }
            } else if (this->state.inLabel) {
                if (c == ':') {
                    this->label();
                    continue;
                } else if (c == ' ') {
                    // not really a label it seems
                    this->state.inLabel = false;
                } else if (c == '<') {
                    // skip
                    continue;
                } else if (c == '>') {
                    // skip
                    continue;
                }
            } else if (this->state.inOpcodes) {
                if ((c == ' ') || (c == '\t')) {
                    if (this->state.text.empty()) continue;
                    if (this->state.text[this->state.text.length() - 1] == ' ') {
                        this->opcodes();
                        continue;
                    }
                } else if (!is_hex(c)) {
                    this->state.inOpcodes = false;
                }
            } else if (this->state.inSectionStart) {
                if (!this->state.inSectionName) {
                    this->state.inSectionName = (this->state.text == "Disassembly of section ");
                    if (this->state.inSectionName) {
                        this->state.text.clear();

                        this->state.currentSection = "";
                        this->state.currentSection += c;
                        continue;
                    }
                } else {
                    if (c == ':') {
                        this->state.skipRestOfTheLine = true;
                        this->state.text.clear();
                    } else {
                        this->state.currentSection += c;
                    }
                    continue;
                }
            } else if (!this->state.inComment) {
                if (c == '#') {
                    this->state.inComment = true;
                } else if (c == '<') {
                    this->state.inSomethingWithALabel = true;
                    this->state.currentLabelReference.range = {
                        (uint16_t)(this->state.text.length() + 1),
                        (uint16_t)0
                    };
                } else if (this->state.inSomethingWithALabel) {
                    if (c == '>') {
                        this->state.inSomethingWithALabel = false;
                        if (this->state.currentLabelReference.name.empty()) {
                            this->labelref();
                        }
                    } else if (c == '+') {
                        this->state.inSomethingWithALabel = false;
                        this->labelref();
                    }
                }
            }

            if (is_whitespace(c) && this->state.text.empty()) continue;
            this->state.text += c;
        }
    }
}

void AsmParser::ObjDumpParser::outputJson(std::ostream &out) {
    JsonWriter writer(out, this->lines, this->labels, this->filter);
    writer.write();
}

void AsmParser::ObjDumpParser::outputText(std::ostream &out) {
    for (auto line: this->lines) {
        out << line.text << "\n";
    }
}
