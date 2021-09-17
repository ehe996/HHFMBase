#
# Be sure to run `pod lib lint HHFMBase.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HHFMBase'
  s.version          = '0.1.0'
  s.summary          = 'HHFMBase is a base lib'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/hejunhe/HHFMBase'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'hejunhe' => 'hejunhe@koolearn.com' }
  s.source           = { :git => 'https://github.com/hejunhe/HHFMBase.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  #这里s.source_files的意思是去上面那个git仓库里，去下载HHFMBase/Classes/这个目录下的文件
# s.source_files = 'HHFMBase/Classes/**/*'

#如果我们想把组件中某些模块再细分的话，就可以采用这样的方式
#例如这里的Category子模块，指的是HHFMBase/Classes/Category/ 路径下的内容
    s.subspec 'Category' do |category|
        category.source_files = 'HHFMBase/Classes/Category/**/*'
    end
    s.subspec 'NetWork' do |network|
        network.source_files = 'HHFMBase/Classes/NetWork/**/*'
        network.dependency = 'AFNetWorking' #添加NetWork组件依赖的其他库
    end
  
  # s.resource_bundles = {
  #   'HHFMBase' => ['HHFMBase/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
