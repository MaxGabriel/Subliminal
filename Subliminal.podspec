Pod::Spec.new do |s|
  s.name         = "Subliminal"
  s.version      = "1.1.0"
  s.summary      = "Objective-C Integration Testing framework built on UIAutomation."
  # Idea: add link to Subliminal cocoapods documentation.
  s.description  = <<-DESC
                     Subliminal is an open-source framework for writing iOS integration tests. 
                      It provides a familiar OCUnit/SenTest-like interface on top of Apple’s UIAutomation framework, with tests written entirely in Objective-C. 
                      Subliminal also provides a powerful mechanism for your tests to manipulate your application directly.
                    DESC
  s.homepage     = "http://inkling.github.io/Subliminal/"
  s.license      = 'Apache 2.0'
  s.author       = { "Jeff Wear" => "jeff@inkling.com" }
  s.source       = { :git => "https://github.com/MaxGabriel/Subliminal.git", :tag => "1.1.0" }
  s.platform     = :ios, '5.0'
  s.source_files = 'Sources/**/*.{h,m}'
  s.resources = ['Rakefile','Supporting Files/**',]
  s.exclude_files = ['Supporting Files/Xcode/Integration Tests.xcconfig','Supporting Files/Xcode/Schemes/*']
  s.framework  = 'SenTestingKit'
  s.requires_arc = true
  s.xcconfig = { 
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) INTEGRATION_TESTING=1',
    'OTHER_LDFLAGS' => '$(inherited) -ObjC',
    'HEADER_SEARCH_PATHS' => '$(inherited) $(BUILT_PRODUCTS_DIR)/usr/local/include',
    'INFOPLIST_FILE' => '$(TARGET_NAME)/$(TARGET_NAME)-Info.plist',
    'PRODUCT_NAME' => '$(PROJECT_NAME) ($(TARGET_NAME))',
   }
end
