Pod::Spec.new do |s|
  s.name             = 'IcedCoffee'
  s.version          = '1.0.0'
  s.summary          = 'Technical pod'
  s.description      = 'Simple Drawer'
  s.homepage         = 'https://github.com/riley-usagi/IcedCoffee'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Riley Usagi' => 'riley.usagi@gmail.com' }
  s.source           = { :git => 'https://github.com/riley-usagi/IcedCoffee.git', :tag => s.version.to_s }
  s.ios.deployment_target = '9.3'
  s.swift_version    = '4.2'
  s.source_files = 'IcedCoffee/Classes/**/*'
end
