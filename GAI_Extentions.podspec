Pod::Spec.new do |s|

  

  s.name         = "GAI_Extentions"
  s.version      = "0.0.1"
  s.summary      = "google analytics for ios extention."

  s.homepage     = "https://github.com/peyoo/GAI_Extentions"
  
  s.license      = 'MIT'
  
  s.author       = { "peyoo" => "peyoo.zh@gmail.com" }
  
  s.platform     = :ios
  s.platform     = :ios, '5.0'

  s.source       = { :git => "https://github.com/peyoo/GAI_Extentions.git",:tag => "0.0.1"}

  s.source_files  =  '*.{h,m}'
  
  s.requires_arc = true
  s.dependency 'GoogleAnalytics-iOS-SDK', '~> 3.0.2'

end
