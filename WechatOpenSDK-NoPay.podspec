Pod::Spec.new do |spec|
    spec.name                   = 'WechatOpenSDK-NoPay' # 不包含支付功能
    spec.version                = '1.9.2' # 版本号和微信的保持一致
    spec.homepage               = 'https://developers.weixin.qq.com/doc/oplatform/Mobile_App/Access_Guide/iOS.html'
    spec.source                 = { :git => 'https://github.com/arcangelw/WechatOpenSDK.git', :tag => spec.version }
    spec.summary                = 'WeChat SDK without payment function'
    spec.license                = { :type => 'MIT', :file => 'LICENSE' }
    spec.author                 = { 'wuzhe' => 'wuzhe@staff.hexun.com' }
    spec.platform               = :ios, '12.0'
    spec.ios.deployment_target  = '12.0'
    spec.module_name            = 'WechatOpenSDK' # 模块名和微信保持一致
    spec.requires_arc           = true
    spec.static_framework       = true
    spec.swift_version          = '5.0'
    spec.vendored_libraries 	= 'OpenSDK_NoPay/*.a'
    spec.public_header_files    = 'OpenSDK_NoPay/*.h'
    spec.source_files           = 'OpenSDK_NoPay/*.{h,swift}'
    spec.frameworks             = 'Security', 'UIKit', 'CoreGraphics', 'WebKit'
    spec.libraries              = 'z', 'c++', 'sqlite3.0'
    spec.pod_target_xcconfig    = { 
        'OTHER_LDFLAGS' => '-all_load',
        'VALID_ARCHS' => 'x86_64 armv7 arm64'
    }
end