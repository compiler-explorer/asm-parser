
set(TEST_SOURCES
    test_test.cpp)

add_executable(test
    ${TEST_SOURCES})

target_link_libraries(test
    ${CONAN_LIBS})
