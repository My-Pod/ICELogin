Pod::Spec.new do |s|
s.name             = 'ICELogin'
s.version          = '1.0.0'
s.summary          = '登陆管理'
s.description      = <<-DESC
TODO: 自定义登陆管理, 创建window的形式.
DESC

s.homepage         = 'https://github.com/My-Pod/ICELogin'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'gumengxiao' => 'rare_ice@163.com' }
s.source           = { :git => 'https://github.com/My-Pod/ICELogin.git', :tag => s.version.to_s }

s.ios.deployment_target = '7.0'
s.source_files = 'Classes/*.{h,m}'

end
