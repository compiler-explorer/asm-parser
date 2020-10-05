#include "parser.hpp"
#include "../types/line.hpp"
#include "../utils/utils.hpp"

#include <iostream>

AsmParser::ObjDumpParser::ObjDumpParser() {
}

void AsmParser::ObjDumpParser::eol() {
    this->state.currentLine.text = this->state.text;
    if (!this->state.currentLine.text.empty()) {
        lines.push_back(this->state.currentLine);
    }

    this->state.commonReset();
}

void AsmParser::ObjDumpParser::label() {
    this->state.previousLabel = this->state.text;

    this->state.text = this->state.text + ":";

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
}

void AsmParser::ObjDumpParser::address() {
    if (!this->state.text.empty()) {
        if (this->state.text[0] == '/') {
            // probably a filename
            this->state.currentFilename = this->state.text;

            this->state.inAddress = false;
            this->state.inOpcodes = false;
            this->state.skipRestOfTheLine = true;
        } else {
            // usually it's an actual hex address
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

            // todo: when encountering "Disassembly of section .text:", reset everything
            // todo: or perhaps put section in state and ignore everything but .text

            if (this->state.inAddress) {
                if (c == ':') {
                    this->address();
                    continue;
                } else if (c == ' ' || c == '\t') {
                    if (!this->state.text.empty()) {
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
                        if (this->state.currentLabelReference.name.length() != 0) {
                            this->labelref();
                        }
                    } else if (c == '+') {
                        this->labelref();
                    }
                }
            }

            this->state.text += c;
        }
    }
}

void AsmParser::ObjDumpParser::outputJson(std::ostream &out) {
    out << "{\"asm\": [";

    for (auto line: this->lines) {
        out << "{\n";
        if (line.address.has_value()) {
            out << "  \"address\": ";
            out << line.address.value() << ",\n";
        }
        if (!line.text.empty()) {
            out << " \"line\": ";
            out << "\"" << line.text << "\",\n";
        }
        if (line.opcodes.size() > 0) {
            out << " \"opcodes\": [";
            for (auto opcode: line.opcodes) {
                out << "\"" << opcode << "\", ";
            }
            out << "],\n";
        }
        if (line.labels.size() > 0) {
            out << " \"labels\": {";
            for (auto labelref: line.labels) {
                out << "\"" << labelref.name << "\": {\"start_col\": " << labelref.range.start_col << ", \"end_col\": " << labelref.range.end_col << "},";
            }
            out << "},\n";
        }
        out << "},\n";
    }

    out << "],";

    out << "\"labels\": {\n";
    for (auto label: this->labels) {
        out << "\"" << label.first << "\": " << label.second << ",\n";
    }
    out << "}}\n";
}

void AsmParser::ObjDumpParser::outputText(std::ostream &out) {
    for (auto line: this->lines) {
        out << line.text << "\n";
    }
}
