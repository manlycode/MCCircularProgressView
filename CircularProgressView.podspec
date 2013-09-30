Pod::Spec.new do |s|
  s.name         = "CircularProgressView"
  s.version      = "1.0.0"
  s.summary      = "An scalable and updatable progress well suited for applications with limited space."
  s.description  = <<-DESC
                    An scalable and updatable progress well suited for applications with limited space.
                   DESC

  s.homepage     = "https://github.com/manlycode/CircularProgressView"
  s.license      = {type:'MIT', file:'LICENSE'}
  s.author       = { "Chris Rittersdorf" => "manlycode@gmail.com" }

   s.platform     = :ios
   s.ios.deployment_target = '7.0'

  s.source       = { :git => "https://github.com/manlycode/CircularProgressView.git", :tag => "1.0.1" }
  s.source_files  = 'CircularProgressView/Classes', 'CircularProgressView/Classes/**/*.{h,m}'
  s.exclude_files = 'Classes/Exclude'
end
