cmake_minimum_required(VERSION 3.31)

project(DistortionAudioPlugin)

set(CMAKE_CXX_STANDARD 23)

set(LIB_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libs)
include(cmake/cpm.cmake)

CPMAddPackage(
	NAME JUCE
	GITHUB_REPOSITORY juce-framework/JUCE
	GIT_TAG 9.0.2
	VERSION 9.0.2
	SOURCE_DIR ${LIB_DIR}/juce
)

CPMAddPackage(
	NAME GOOGLETEST
	GITHUB_REPOSITORY google/googletest
	VERSION 1.18.0
	SOURCE ${LIB_DIR}/googletest
	OPTIONS
		"INSTALL_GTEST OFF"
		"gtest_force_shared_crt ON"
)

enable_testing()

if (MSVC)
	add_compile_options(/Wall /WX)
else()
	add_compile_options(-Wall -Wextra -Wpedantic)
endif()

add_subdirectory(plugin)
add_subdirectory(test)