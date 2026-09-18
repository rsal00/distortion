cmake_minimum_required(VERSION 3.31)

project(Distortion VERSION 0.1.0)

juce_add_plugin(${PROJECT_NAME}
    COMPANY_NAME Aemlyflow
    IS_SYNTH FALSE
    NEEDS_MIDI_INPUT FALSE
    NEEDS_MIDI_OUTPUT FALSE
    PLUGIN_MANUFACTURER_CODE AMFW
    PLUGIN_CODE AFDS
    FORMATS AU VST3 Standalone
    PRODUCT_NAME "AFDistort"
    COPY_PLUGIN_AFTER_BUILD TRUE
)

juce_add_binary_data(DistortionAssets
    NAMESPACE assets
    SOURCES
        ../assets/background.png
)

target_sources(${PROJECT_NAME}
    PRIVATE
        source/PluginEditor.cpp
        source/PluginProcessor.cpp
)

target_include_directories(${PROJECT_NAME}
    PRIVATE
        include
        # ${CMAKE_CURRENT_BINARY_DIR}/${PROJECT_NAME}_artefacts/JuceLibraryCode
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
        juce::juce_audio_utils
    PUBLIC
        juce::juce_recommended_config_flags
        juce::juce_recommended_lto_flags
        juce::juce_recommended_warning_flags
)

target_link_libraries(${PROJECT_NAME}
    PRIVATE
        DistortionAssets
        # juce::juce_gui_basics
        # juce::juce_audio_processors
)

target_compile_definitions(${PROJECT_NAME}
    PUBLIC
        JUCE_WEB_BROWSER=0
        JUCE_USE_CURL=0
        JUCE_VST3_CAN_REPLACE_VST2=0
)

if (MSVC)
target_compile_definitions(${PROJECT_NAME}
    PRIVATE
        _SILENCE_CXX23_ALIGNED_STORAGE_DEPRECATION_WARNING
)
endif()