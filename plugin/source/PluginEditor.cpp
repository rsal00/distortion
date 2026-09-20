#include "afdistort/PluginProcessor.h"
#include "afdistort/PluginEditor.h"

//==============================================================================
DistortionAudioProcessorEditor::DistortionAudioProcessorEditor (DistortionAudioProcessor& p)
    : AudioProcessorEditor (&p), processorRef (p)
{
    juce::ignoreUnused (processorRef);

    background.setImage(bg_img);
    drive_lb.setImage(drive_lb_img);
    tone_lb.setImage(tone_lb_img);
    output_lb.setImage(output_lb_img);

    // Drive slider
    drive_sl.setSliderStyle(juce::Slider::SliderStyle::RotaryHorizontalVerticalDrag);
    drive_sl.setTextBoxStyle(juce::Slider::NoTextBox, true, 100, 25);
    drive_sl.setColour(juce::Slider::rotarySliderOutlineColourId, juce::Colour(92, 22, 22));
    drive_sl.setColour(juce::Slider::rotarySliderFillColourId, juce::Colour(224, 0, 0));
    drive_sl.setColour(juce::Slider::thumbColourId, juce::Colour(224, 0, 0));
    drive_sl.setPopupDisplayEnabled(true, false, this);
    drive_sl.setRange(0.0, 30.0, 0.5);
    drive_sl.setName("Drive level");
    drive_sl.setTextValueSuffix(" dB");
    
    // Tone slider
    tone_sl.setSliderStyle(juce::Slider::SliderStyle::RotaryHorizontalVerticalDrag);
    tone_sl.setTextBoxStyle(juce::Slider::NoTextBox, true, 100, 25);
    tone_sl.setColour(juce::Slider::rotarySliderOutlineColourId, juce::Colour(92, 22, 22));
    tone_sl.setColour(juce::Slider::rotarySliderFillColourId, juce::Colour(224, 0, 0));
    tone_sl.setColour(juce::Slider::thumbColourId, juce::Colour(224, 0, 0));
    tone_sl.setPopupDisplayEnabled(true, false, this);
    tone_sl.setRange(20.0, 20000.0, 2);
    tone_sl.setName("Tone level");
    tone_sl.setTextValueSuffix(" Hz");

    // Output slider
    output_sl.setSliderStyle(juce::Slider::SliderStyle::RotaryHorizontalVerticalDrag);
    output_sl.setTextBoxStyle(juce::Slider::NoTextBox, true, 100, 25);
    output_sl.setColour(juce::Slider::rotarySliderOutlineColourId, juce::Colour(92, 22, 22));
    output_sl.setColour(juce::Slider::rotarySliderFillColourId, juce::Colour(224, 0, 0));
    output_sl.setColour(juce::Slider::thumbColourId, juce::Colour(224, 0, 0));
    output_sl.setPopupDisplayEnabled(true, false, this);
    output_sl.setRange(-20.0, 20.0, 0.5);
    output_sl.setValue(-2.0);
    output_sl.setName("Output level");
    output_sl.setTextValueSuffix(" dB");

    // Bypass button
    bypass_btn.setColour(juce::ToggleButton::tickColourId, juce::Colour(255, 255, 255));

    // Visualizer
    processorRef.signalView.setColours(juce::Colour(153, 0, 0), juce::Colour(92, 22, 22));

    addAndMakeVisible(background);
    addAndMakeVisible(bypass_btn);
    addAndMakeVisible(processorRef.signalView);

    // Make sliders visible
    addAndMakeVisible(drive_sl);
    addAndMakeVisible(tone_sl);
    addAndMakeVisible(output_sl);

    // Make label images visible
    addAndMakeVisible(drive_lb);
    addAndMakeVisible(tone_lb);
    addAndMakeVisible(output_lb);
    // Make sure that before the constructor has finished, you've set the
    // editor's size to whatever you need it to be.
    setSize(540, 270);
}

DistortionAudioProcessorEditor::~DistortionAudioProcessorEditor()
{
}

//==============================================================================
// void DistortionAudioProcessorEditor::paint (juce::Graphics& g)
// {
//     // (Our component is opaque, so we must completely fill the background with a solid colour)
//     g.fillAll (getLookAndFeel().findColour (juce::ResizableWindow::backgroundColourId));

//     g.setColour (juce::Colours::white);
//     g.setFont (15.0f);
//     g.drawFittedText ("Hello World!", getLocalBounds(), juce::Justification::centred, 1);
// }

void DistortionAudioProcessorEditor::resized()
{
    // This is generally where you'll want to lay out the positions of any
    // subcomponents in your editor..
    const auto bounds = getLocalBounds();
    background.setBounds(bounds);

    processorRef.signalView.setBounds({0, 0, 270, 210});

    bypass_btn.setBounds({500, 200, 120, 90});

    drive_sl.setBounds({getWidth() / 2, 5, 120, 90});
    tone_sl.setBounds({getWidth() - 130, 5, 120, 90});
    output_sl.setBounds({getWidth() - 200, getHeight() - 130, 120, 90});

    drive_lb.setBounds({getWidth() / 2 + 10, 90, 100, 25});
    tone_lb.setBounds({getWidth() - 120, 90, 100, 25});
    output_lb.setBounds({getWidth() - 190, getHeight() - 45, 100, 25});
}
