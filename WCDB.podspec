#
# Be sure to run `pod lib lint WCDB.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'WCDB'
  s.version          = '1.0.8'
  s.summary          = 'WCDB is a cross-platform database framework developed by WeChat.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
The WeChat Database, for Objective-C.
WCDB is an efficient, complete, easy-to-use mobile database framework used in the WeChat application.
It can be a replacement for Core Data, SQLite & FMDB.
                       DESC

  s.homepage         = 'https://github.com/acornology/wcdb'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Chason Tang' => 'tangjiacheng@acornsemi.com' }
  s.source           = { :git => 'https://github.com/acornology/wcdb.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '9.0'
  
  s.source_files = 'objc/WCDB/**/*.{h,m,hpp,cpp,mm}'
  
  # s.resource_bundles = {
  #   'WCDB' => ['WCDB/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'

  s.libraries = 'sqlite3', 'c++'
  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'WCDB_BUILTIN_COLUMN_CODING',
    'DEFINES_MODULE' => 'YES'
  }
end
