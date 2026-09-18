#pragma once

#include "PluginProcessor.h"
#include "BinaryData.h"

//==============================================================================
class DistortionAudioProcessorEditor final : public juce::AudioProcessorEditor
{
public:
    explicit DistortionAudioProcessorEditor (DistortionAudioProcessor&);
    ~DistortionAudioProcessorEditor() override;

    //==============================================================================
    // void paint (juce::Graphics&) override;
    void resized() override;

private:
    // This reference is provided as a quick way for your editor to
    // access the processor object that created it.
    DistortionAudioProcessor& processorRef;
    juce::ImageComponent background;
    juce::ImageComponent drive_lb;
    juce::ImageComponent tone_lb;
    juce::ImageComponent output_lb;

    juce::Image bg_img = juce::ImageCache::getFromMemory(
        assets::background_png, 
        assets::background_pngSize
    );

    juce::Image drive_lb_img = juce::ImageCache::getFromMemory(
        assets::drivelb_PNG, 
        assets::drivelb_PNGSize
    );

    juce::Image tone_lb_img = juce::ImageCache::getFromMemory(
        assets::tonelb_PNG,
        assets::tonelb_PNGSize
    );

    juce::Image output_lb_img = juce::ImageCache::getFromMemory(
        assets::outputlb_PNG,
        assets::outputlb_PNGSize
    );

    juce::Slider drive_sl;
    juce::Slider tone_sl;
    juce::Slider output_sl;
    juce::ToggleButton bypass_btn;

    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (DistortionAudioProcessorEditor)
};
