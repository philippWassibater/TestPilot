
target :TestPilotTests, :exclusive => true do
  platform :ios, '4.3'
  pod 'TestPilot', :local => '/Users/jc/dev/TestPilot/TestPilot.podspec', :branch => 'feature/pod-build'
end

target :TestPilotFrameworkTests, :exclusive => true do
  platform :osx, '10.6'
  pod 'TestPilot', :local => '/Users/jc/dev/TestPilot/TestPilot.podspec', :branch => 'feature/pod-build'
end

target :Subspec-Kiwi-iOS, :exclusive => true do
  platform :ios, '4.3'
  pod 'TestPilot/Kiwi', :local => '/Users/jc/dev/TestPilot/TestPilot.podspec', :branch => 'feature/pod-build'
end

target :Subspec-Kiwi-OSX, :exclusive => true do
  platform :osx, '10.6'
  pod 'TestPilot/Kiwi', :local => '/Users/jc/dev/TestPilot/TestPilot.podspec', :branch => 'feature/pod-build'
end

