#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint zego_express_engine.podspec' to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'zego_express_engine'
  s.version          = '1.5.1'
  s.summary          = 'A flutter plugin which can use zego audio/video services.'
  s.description      = <<-DESC
A new Flutter plugin.
                       DESC
  s.homepage         = 'https://www.zego.im'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'Zego' => 'lizhanpeng@zego.im' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.static_framework = true
  s.dependency 'Flutter'
  s.dependency 'ZegoExpressEngine', '1.5.1'
  s.platform = :ios, '8.0'
  s.ios.deployment_target = '8.0'
  
  # Flutter.framework does not contain a i386 slice. Only x86_64 simulators are supported.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
