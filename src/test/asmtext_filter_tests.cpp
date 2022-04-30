#define APPROVALS_CATCH
#include "ApprovalTests.hpp"
#include <catch2/catch.hpp>

auto directoryDisposer = ApprovalTests::Approvals::useApprovalsSubdirectory("../../resources");

TEST_CASE("HelloApprovals")
{
    ApprovalTests::Approvals::verify("Hello Approvals");
}

TEST_CASE("")
{
}
