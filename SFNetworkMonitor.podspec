#
# Be sure to run `pod lib lint SFNetworkMonitor.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SFNetworkMonitor'
  s.version          = '0.1.4'
  s.summary          = '监听网络状态工具类'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
可以选择闭包方式或通知方式获取网络状态，全局单例
                       DESC

  s.homepage         = 'https://github.com/Sfh03031/SFNetworkMonitor'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Sfh03031' => 'sfh894645252@163.com' }
  s.source           = { :git => 'https://github.com/Sfh03031/SFNetworkMonitor.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.swift_versions = '5'
  s.ios.deployment_target = '12.0'

  s.source_files = 'SFNetworkMonitor/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SFNetworkMonitor' => ['SFNetworkMonitor/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
    s.dependency 'ReachabilitySwift'
    
end
