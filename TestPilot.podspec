#
# Be sure to run `pod spec lint TestPilot.podspec' to ensure this is a
# valid spec.
#
# Remove all comments before submitting the spec. Optional attributes are commented.
#
# For details see: https://github.com/CocoaPods/CocoaPods/wiki/The-podspec-format
#
Pod::Spec.new do |s|
  s.name         = "TestPilot"
  s.version      = "0.0.1"
  s.summary      = "Unit-testing Cocoa just got easy."
  s.homepage     = "https://github.com/itsthejb/TestPilot"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "Jonathan Crooke" => "joncrooke@gmail.com" }
  s.source       = { :git => "https://github.com/itsthejb/TestPilot.git", :tag => "v0.0.1" }
  s.ios.deployment_target = '4.0'
  s.osx.deployment_target = '10.6'
  s.source_files = 'TestPilot/**/*.{h,m}'
  s.public_header_files = 'TestPilot/**/*.h'
 
  # s.frameworks = 'SenTestingKit', 'Stubbilino', 'OCHamcrest', 'OCMock', 'OCMockito'
  #s.libraries = '

  s.requires_arc = true
end
