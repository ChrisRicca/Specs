Pod::Spec.new do |s|
  s.name         = "MSWeakTimer"
  s.version      = "0.0.1"
  s.summary      = "Thread-safe NSTimer alternative that doesn't retain the target and supports being used with GCD queues."
  s.homepage     = "https://github.com/mindsnacks/MSWeakTimer"
  s.license      = 'MIT'
  s.author       = { "Javier Soto" => "ios@javisoto.es" }
  s.source       = { :git => "https://github.com/mindsnacks/MSWeakTimer.git", :commit => '031b40358d4cf8a7d3c7c6acbbe66e6c6ec33b50' }
  s.platform     = :ios, '5.0'
  s.source_files = 'MSWeakTimer.{h,m}'
  s.requires_arc = true
end
