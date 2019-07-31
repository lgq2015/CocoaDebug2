Pod::Spec.new do |s|
  s.name                = "CocoaDebug2"
  s.summary             = "iOS Debugging Tool"
  s.homepage            = "https://github.com/CocoaDebug/CocoaDebug2"
  s.author              = {"CocoaDebug2" => "man.li@shopee.com"}
  s.license             = "MIT"
  s.source_files        = "Sources", "Sources/**/*.{h,m,swift,c}"
  s.public_header_files = "Sources/**/*.h"
  s.resources           = "Sources/**/*.{png,xib,storyboard}"
  s.frameworks          = 'UIKit', 'Foundation'
  s.requires_arc        = true
  s.swift_version       = '5.0'
  s.platform            = :ios, "8.0"
  s.source              = { :git => "https://github.com/CocoaDebug/CocoaDebug2.git", :branch => 'master', :tag => '0.0.2' }
  s.version             = '0.0.2'
  s.requires_arc = false
  s.requires_arc = 
    [
    'Classes/App', 
    'Classes/Categories', 
    'Classes/Core', 
    'Classes/CustomHTTPProtocol', 
    'Classes/Logs',
    'Classes/Network',
    'Classes/Sandbox',
    'Classes/Swizzling',
    'Classes/WHDebugTool', 
    'Classes/Window'
    ]

end
