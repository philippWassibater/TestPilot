Pod::Spec.new do |s|
  s.name         = "TestPilot"
  s.version      = "0.0.5"
  s.summary      = "Unit-testing Cocoa just got easy."
  s.homepage     = "https://github.com/itsthejb/TestPilot"
  s.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  s.author       = { "Jonathan Crooke" => "joncrooke@gmail.com" }
  s.source       = { :git => "https://github.com/itsthejb/TestPilot.git", :branch => "release/0.0.5", :submodules => 'true' }
  s.ios.deployment_target = '4.3'
  s.osx.deployment_target = '10.6'
  s.source_files = 'TestPilot/Classes/**/*.{h,m}'
  s.requires_arc = true

  s.dependency 'Stubbilino', :git => 'git@github.com:itsthejb/Stubbilino.git', :branch => 'feature/osx-framework'
  s.dependency 'OCHamcrest', '1.9'
  s.dependency 'OCMock', '2.0.1'
  s.dependency 'OCMockito', '0.23'

  s.subspec 'AppHelpers' do |ah|
    ah.source_files = 'TestPilot/AppHelpers'
  end
  
  s.subspec 'Kiwi' do [kiwi]
    kiwi.dependency 'Kiwi', '2.0.5'
  end

  s.subspec 'Specta' do [specta]
    specta.dependency 'Specta', '0.1.8'
  end

end
