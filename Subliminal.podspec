#
# Be sure to run `pod spec lint Subliminal.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about the attributes see http://docs.cocoapods.org/specification.html
#
Pod::Spec.new do |s|
  s.name         = "Subliminal"
  s.version      = "1.1.0"
  s.summary      = "Objective-C Integration Testing framework built on UIAutomation"
  s.description  = <<-DESC
                     Subliminal is an open-source framework for writing iOS integration tests. 
                      It provides a familiar OCUnit/SenTest-like interface on top of Apple’s UIAutomation framework, with tests written entirely in Objective-C. 
                      Subliminal also provides a powerful mechanism for your tests to manipulate your application directly.
                    DESC
  s.homepage     = "http://inkling.github.io/Subliminal/"
  s.license      = 'Apache 2.0'

  # Specify the authors of the library, with email addresses. You can often find
  # the email addresses of the authors by using the SCM log. E.g. $ git log
  #
  s.author       = { "Jeff Wear" => "feedback.tagher@gmail.com" }
  s.source       = { :git => "https://github.com/MaxGabriel/Subliminal.git", :tag => "1.1.0" }
  s.platform     = :ios, '5.0'
  s.source_files = 'Sources/**/*.{h,m}'
  s.resources = ['Rakefile','Supporting Files/**',]
  # s.exclude_files = 'Supporting Files/Xd'

  # A list of paths to preserve after installing the Pod.
  # CocoaPods cleans by default any file that is not used.
  # Please don't include documentation, example, and test files.
  #
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"
  s.framework  = 'SenTestingKit'
  # s.frameworks = 'SomeFramework', 'AnotherFramework'

  # If this Pod uses ARC, specify it like so.
  #
  s.requires_arc = true

  # If you need to specify any other build settings, add them to the
  # xcconfig hash.
  #
  s.xcconfig = { 
    'GCC_PREPROCESSOR_DEFINITIONS' => '$(inherited) INTEGRATION_TESTING=1',
    'OTHER_LDFLAGS' => '$(inherited) -ObjC',
    'HEADER_SEARCH_PATHS' => '$(inherited) $(BUILT_PRODUCTS_DIR)/usr/local/include',
    'INFOPLIST_FILE' => '$(TARGET_NAME)/$(TARGET_NAME)-Info.plist',
    'PRODUCT_NAME' => '$(PROJECT_NAME) ($(TARGET_NAME))',
   }

  # Finally, specify any Pods that this Pod depends on.
  #
  # s.dependency 'JSONKit', '~> 1.4'
end
