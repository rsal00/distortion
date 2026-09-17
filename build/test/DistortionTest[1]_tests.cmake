add_test([=[Distortion.Foo]=]  /Users/rubensalazar/Programming/AUDIO/distortion/build/test/DistortionTest [==[--gtest_filter=Distortion.Foo]==] --gtest_also_run_disabled_tests)
set_tests_properties([=[Distortion.Foo]=]  PROPERTIES WORKING_DIRECTORY /Users/rubensalazar/Programming/AUDIO/distortion/build/test SKIP_REGULAR_EXPRESSION [==[\[  SKIPPED \]]==])
set(  DistortionTest_TESTS Distortion.Foo)
