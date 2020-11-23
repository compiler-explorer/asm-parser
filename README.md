# asm-parser

Categorises and filters assembly in a way that's understood by Compiler Explorer.

Possible filters as command line parameters:

* `-binary` changes to the Binary mode filtering that's based on the assembly output from GNU Objdump
* `-unused_labels`
* `-directives`
* `-comment_only`
* `-whitespace`
* `-library_functions`

Other parameters:

* `-plt` Also leaves out labels that End with `@plt` (without this, only labels that Start with `.plt` are left out)
* `-nocompat` Leaves some experimental extra information and returns correct sourcefile/line information in `-binary` mode
* `-stdin` Reads assembly from STDIN instead of from a given file


### Example usage

Feeding an objdump via stdin into asm-parser:

`objdump --d a.out -l --insn-width=16 | asm-parser -stdin -binary`
