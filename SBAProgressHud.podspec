Pod::Spec.new do |s|
  s.name         = "SBAProgressHud"
  s.version      = "1.2"
  s.summary      = "SBAProgressHud is a simple and easy-to-use progress HUD for your iOS apps written in Swift."
  s.homepage     = "https://github.com/shoaib-akhtar/SBAProgressHud"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Shoaib Akhtar" => "shoaib.akhtar1@live.com" }
  s.source       = { :git => "https://github.com/shoaib-akhtar/SBAProgressHud.git", :branch => "master",
                     :tag => s.version.to_s }
  s.platform     = :ios, '11.0'
  s.requires_arc = true
  s.source_files = "SBAProgressHud/*.swift"
  s.resource_bundles = { "SBAProgressHud" => "SBAProgressHud/*.{lproj,storyboard,png}" }
  s.resources = 'SBAProgressHud/*.{storyboard,png}'
  s.frameworks   = 'Foundation', 'UIKit'
  s.swift_version = '4.2'
end
