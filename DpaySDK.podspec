Pod::Spec.new do |spec|
    spec.name         = "DpaySDK"
    spec.version      = "1.0.3"
    spec.summary      = "iOS sdk for Durianpay"
    # spec.description  = <<-DES
    # This is a way longer description
    # DESC
    spec.homepage     = "https://github.com/durianpay/dpay-ios-kit"
    spec.license      = { :type => "MIT", :file => "LICENSE" }
    spec.author             = { "author" => "tech@durian.money" }
    spec.documentation_url = "https://durianpay.id/docs/mobile/ios-native/"
    spec.platforms = { :ios => "13.0" }
    spec.swift_version = "5.1"
    spec.source       = { :git => "https://github.com/durianpay/dpay-ios-kit", :tag => "#{spec.version}" }
    # spec.source_files  = "Sources/DpaySDK/**/*.swift"
    spec.resource_bundles = { 'DpaySDK' => ['Sources/DpaySDK/Resources/**/*'] }
    spec.ios.vendored_frameworks = "DpaySDK.xcframework"
    spec.xcconfig = { "SWIFT_VERSION" => "5.1" }
    spec.dependency 'SnowplowTracker', '~> 1.6.0'
end
    