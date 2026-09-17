# Install script for directory: /Users/rubensalazar/Programming/AUDIO/distortion/libs/juce

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/Library/Developer/CommandLineTools/usr/bin/objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-build/modules/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-build/extras/Build/cmake_install.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/JUCE-9.0.2" TYPE FILE FILES
    "/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-build/JUCEConfigVersion.cmake"
    "/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-build/JUCEConfig.cmake"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/FindCppwinrt.cmake"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/FindWebView2.cmake"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/FindWindowsMIDIServices.cmake"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/JUCECheckAtomic.cmake"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/JUCEHelperTargets.cmake"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/JUCEModuleSupport.cmake"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/JUCEUtils.cmake"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/JuceLV2Defines.h.in"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/LaunchScreen.storyboard"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/PIPAudioProcessor.cpp.in"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/PIPAudioProcessorWithARA.cpp.in"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/PIPComponent.cpp.in"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/PIPConsole.cpp.in"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/RecentFilesMenuTemplate.nib"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/UnityPluginGUIScript.cs.in"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/bundleplaceholder.mm"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/checkBundleSigning.cmake"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/copyDir.cmake"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/juce_LinuxSubprocessHelper.cpp"
    "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/juce_runtime_arch_detection.cpp"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/JUCE-9.0.2" TYPE DIRECTORY FILES "/Users/rubensalazar/Programming/AUDIO/distortion/libs/juce/extras/Build/CMake/juce_vst3_helper")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/rubensalazar/Programming/AUDIO/distortion/build/_deps/juce-build/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
