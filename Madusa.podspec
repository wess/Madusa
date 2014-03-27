Pod::Spec.new do |s|
  s.name                  = "Madusa"
  s.version               = "0.0.1"
  s.summary               = "A tiny lightweight set of extensions that implements Map/Reduce on NSArrays (and more coming!)."
  s.homepage              = "http://github.com/wess/Madusa"
  s.license               = 'MIT'
  s.author                = { "Wess Cope" => "wcope@me.com" }
  s.ios.deployment_target = '7.0'
  s.source                = { :git => "https://github.com/wess/Madusa.git", :tag => "0.1.0" }
  s.source_files          = 'Madusa/*.{h,m}'
  s.requires_arc          = true
  s.framework             = 'Foundation'
end