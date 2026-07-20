
include(FetchContent)

set(fetchcontent_args)
if(CMAKE_VERSION VERSION_GREATER_EQUAL 3.28)
  list(APPEND asm_parser_extra_args EXCLUDE_FROM_ALL)
endif()

FetchContent_Declare(ApprovalTests
  GIT_REPOSITORY    https://github.com/approvals/ApprovalTests.cpp.git
  GIT_TAG           1e7fe545f5f3e013b832ca450b8191a8dceb33c4 # v10.12.2
  GIT_SHALLOW       TRUE
  ${fetchcontent_args}
  FIND_PACKAGE_ARGS 10.12.2 CONFIG
)

FetchContent_Declare(Catch2
  GIT_REPOSITORY    https://github.com/catchorg/Catch2.git
  GIT_TAG           182c910b4b63ff587a3440e08f84f70497e49a81 # v2.13.10
  GIT_SHALLOW       TRUE
  ${fetchcontent_args}
  FIND_PACKAGE_ARGS 2.13.10 CONFIG
)

FetchContent_Declare(ctre
  GIT_REPOSITORY    https://github.com/hanickadot/compile-time-regular-expressions.git
  GIT_TAG           1ca2fa83ec60e0905da5516875d3a64610022459 # v3.7.1
  GIT_SHALLOW       TRUE
  ${fetchcontent_args}
  FIND_PACKAGE_ARGS 3.7.1 CONFIG
)

FetchContent_Declare(fmt
  GIT_REPOSITORY    https://github.com/fmtlib/fmt.git
  GIT_TAG           0041a40c1350ba702d475b9c4ad62da77caea164 # v11.0.0
  GIT_SHALLOW       TRUE
  ${fetchcontent_args}
  FIND_PACKAGE_ARGS 11.0.0 CONFIG
)

FetchContent_MakeAvailable(ApprovalTests Catch2 ctre fmt)
