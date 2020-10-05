
namespace AsmParser {

struct Filter {
    bool binary{};
    bool unused_labels{};
    bool library_functions{};
    bool directives{};
    bool comment_only{};
    bool whitespace{};

    bool code_only{};
};

}