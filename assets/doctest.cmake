cmake_minimum_required(VERSION 3.12)

enable_testing()

include(FetchContent)

FetchContent_Declare(doctest
        GIT_REPOSITORY https://github.com/doctest/doctest.git
        GIT_SHALLOW TRUE
        GIT_PROGRESS FALSE
        )

FetchContent_GetProperties(doctest)
if(NOT doctest_POPULATED)
    FetchContent_Populate(doctest)
    add_library(doctest INTERFACE)
    target_include_directories(doctest INTERFACE ${doctest_SOURCE_DIR}/doctest)
endif()
