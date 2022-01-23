#pragma once

#include <iosfwd>

namespace AsmParser
{

class IParser
{
    public:
    virtual void fromStream(std::istream &in) = 0;

    virtual void outputJson(std::ostream &out) const = 0;
    virtual void outputText(std::ostream &out) const = 0;

    virtual void outputDebugJson(std::ostream &out) const = 0;
};

} // namespace AsmParser
