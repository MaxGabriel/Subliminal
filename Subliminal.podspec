Pod::Spec.new do |s|
  s.name         = "Subliminal"
  s.version      = "1.0.1"
  s.summary      = "An understated approach to iOS integration testing."
  s.description  = <<-DESC
                     Subliminal provides an OCUnit/SenTest-like interface on top of Apple’s UIAutomation framework,
                     with tests written entirely in Objective-C. 
                     Subliminal also provides a powerful mechanism for your tests to manipulate your application directly.
                     Visit Subliminal's website for [complete API documentation](http://inkling.github.io/Subliminal/Documentation/).
                    DESC
  s.homepage     = "http://inkling.github.io/Subliminal/"
  s.license      = 'Apache 2.0'
  s.author       = { "Jeff Wear" => "jeff@inkling.com" }
  s.source       = { :git => "https://github.com/inkling/Subliminal.git", :tag => "1.0.1" }
  s.platform     = :ios, '5.0'
  s.source_files = 'Sources/**/*.{h,m}'
  s.preserve_paths = ['Rakefile','Supporting Files/CI/**','Supporting Files/Instruments/**','Supporting Files/Xcode/File Templates/**']
  s.requires_arc = true
  s.xcconfig = { 
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) INTEGRATION_TESTING=1',
    'INFOPLIST_FILE' => '$(TARGET_NAME)/$(TARGET_NAME)-Info.plist',
    'PRODUCT_NAME' => '$(PROJECT_NAME) ($(TARGET_NAME))',
   }
end
