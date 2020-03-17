Pod::Spec.new do |s|
  s.name             = "KanNavigationBarPlugin"
  s.version          = '2.1.0'
  s.summary          = "KanNavigationBarPlugin"
  s.description      = <<-DESC
                        Kan navigation bar plugin.
                       DESC
  s.homepage         = "https://github.com/applicaster-plugins/KanNavigationBarPlugin-iOS"
  s.license          = 'CMPS'
  s.author           = { "cmps" => "m.vecselboim@applicaster.com" }
  s.source           = { :git => "git@github.com:applicaster-plugins/KanNavigationBarPlugin-iOS.git", :tag => s.version.to_s }
  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.public_header_files = 'KanNavigationBarPlugin/**/*.h'
  s.source_files = 'KanNavigationBarPlugin/**/**/*.{h,m,swift}'


  s.resources = [
    "**/*.{png,xib}"
  ]

  s.xcconfig =  {
                  'ENABLE_BITCODE' => 'YES',
                  'FRAMEWORK_SEARCH_PATHS' => '$(inherited) "${PODS_ROOT}"/**',
                  'SWIFT_VERSION' => '5.1'
                }

  s.dependency 'ZappPlugins'
  s.dependency 'ZappNavigationBarPluginsSDK'
  s.dependency 'ApplicasterSDK'
  s.dependency 'ZappRootPluginsSDK'
  s.dependency 'ZappSDK'
  s.dependency 'Alamofire'
end
