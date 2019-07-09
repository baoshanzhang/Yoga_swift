#
#  Be sure to run `pod spec lint Yoga_swift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = 'Yoga_swift'
  s.version      = '0.0.1'
  s.summary      = 'A short description of Yoga_swift'
  s.description  = <<-DESC
                   12345671234
                    DESC

  s.homepage     = 'https://github.com/baoshanzhang/Yoga_swift'
  s.license      = 'MIT'
  s.author       = { 'zhangbaoshan' => 'ios_zbs@163.com' }
  s.source       = { :git => 'https://github.com/baoshanzhang/Yoga_swift.git', :tag => s.version.to_s }
  s.source_files = 'source/*.{h,m}'
  s.requires_arc = true

end
