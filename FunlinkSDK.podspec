Pod::Spec.new do |s|
  s.name         = "FunlinkSDK"
  s.version      = "1.0.0.0.0"
  s.summary      = "Mobile App Aggregation Ad SDK of FunlinkSDK for iOS."
  s.description  = <<-DESC
            FunlinkSDK is an advertising aggregation SDK that allows you to monetize iOS applications through FunlinkSDK advertising.
                   DESC
  s.homepage     = "https://www.mediatom.cn/dockingdocs/detail?id=70"
  s.license      = { :type => "MIT" }
  s.author       = 'YJoo'
  
  s.platform     = :ios, '11.0'
  s.ios.deployment_target = '11.0'
  s.static_framework = true
  s.requires_arc = true
  s.swift_versions = '5.1'
  
  s.frameworks   = 'AssetsLibrary', 'MapKit', 'JavaScriptCore', 'StoreKit', 'MobileCoreServices', 'WebKit', 'MediaPlayer', 'CoreMedia', 'AVFoundation', 'CoreLocation', 'CoreTelephony', 'SystemConfiguration', 'AdSupport', 'CoreMotion', 'Security', 'QuartzCore', 'CoreGraphics', 'SafariServices', 'UIKit', 'Foundation', 'AppTrackingTransparency', 'DeviceCheck', 'CoreML'
  s.libraries    = 'c++', 'c++abi', 'resolv', 'xml2', 'bz2', 'z', 'iconv', 'sqlite3'
  
  s.xcconfig =   { 'OTHER_LDFLAGS' => ['-lObjC']}
  s.pod_target_xcconfig =   { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i' }
  
  s.source = { :http => "https://github.com/QianChengWuXian/FunlinkSDK/releases/download/#{s.version}/FunlinkSDK.zip" }

  s.default_subspecs = 'FunlinkSDK'

  s.subspec 'FunlinkSDK' do |ss|
    ss.ios.deployment_target = '11.0'
    ss.vendored_frameworks = 'FunlinkSDK.xcframework'
  end
  
end
