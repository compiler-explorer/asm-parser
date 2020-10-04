#include "parser.hpp"
#include "../types/line.hpp"

#include <iostream>

AsmParser::ObjDumpParser::ObjDumpParser() {
}

bool is_whitespace(const char c) {
    return ((c == 32) || (c == 7));
}

bool is_hex(const char c) {
    return (c >= 'a' && c <= 'f') || (c >= '0' && c <= '9');
}

int8_t hex2int(const char c) {
    if (c >= '0' && c <= '9') {
        return c - '0';
    } else {
        return 10 + (c - 'a');
    }
}

void AsmParser::ObjDumpParser::eol() {
    this->state.currentLine.text = this->state.text;
    lines.push_back(this->state.currentLine);

    this->state.commonReset();
}

void AsmParser::ObjDumpParser::label() {
    this->state.previousLabel = this->state.text;
    this->state.text.clear();
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
    int64_t addr = 0;
    int8_t bitsdone = 0;
    for (auto c = this->state.text.rbegin(); c != this->state.text.rend(); c++) {
        if (!is_hex(*c)) break;

        addr += hex2int(*c) << bitsdone;
        bitsdone += 4;
    }

    this->state.currentLine.address = addr;
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
        } else {
            if (this->state.inAddress) {
                if (c == ':') {
                    this->address();
                    this->state.inAddress = false;
                    this->state.inOpcodes = true;
                    continue;
                } else if (c == ' ' || c == '\t') {
                    this->address();
                    this->state.inAddress = false;
                    this->state.inLabel = true;
                    continue;
                }
            } else if (this->state.inLabel) {
                if (c == ':') {
                    this->label();
                    continue;
                } else if (c == ' ') {
                    // not really a label it seems
                    this->state.inLabel = false;
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
            }

            this->state.text += c;
        }
    }
}

void AsmParser::ObjDumpParser::outputJson(std::ostream &out) {
    out << "[";

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
            out << "]\n";
        }
        out << "},\n";
    }

    out << "]";
}

void AsmParser::ObjDumpParser::outputText(std::ostream &out) {
    for (auto line: this->lines) {
        out << line.text << "\n";
    }
}
