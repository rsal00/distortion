# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce")
  file(MAKE_DIRECTORY "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce")
endif()
file(MAKE_DIRECTORY
  "/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-build"
  "/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-subbuild/juce-populate-prefix"
  "/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-subbuild/juce-populate-prefix/tmp"
  "/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-subbuild/juce-populate-prefix/src/juce-populate-stamp"
  "/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-subbuild/juce-populate-prefix/src"
  "/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-subbuild/juce-populate-prefix/src/juce-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-subbuild/juce-populate-prefix/src/juce-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-subbuild/juce-populate-prefix/src/juce-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
