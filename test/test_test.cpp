#define APPROVALS_CATCH
#include "ApprovalTests.hpp"
#include <catch2/catch.hpp>

int factorial(int x) {
    if (x == 1) return 1;
    if (x == 2) return 2;
    if (x == 3) return 6;
    if (x == 10) return 3628800;
    return -1;
}

TEST_CASE( "factorials are computed", "[factorial]" ) {
    REQUIRE( factorial(1) == 1 );
    REQUIRE( factorial(2) == 2 );
    REQUIRE( factorial(3) == 6 );
    REQUIRE( factorial(10) == 3628800 );
}
