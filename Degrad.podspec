#
# Be sure to run `pod lib lint NAME.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name                    = "Degrad"
  s.version                 = "1.1.0"
  s.summary                 = "A microlibrary for working with angles. Use the ° symbol in your swift code."
  s.homepage                = "https://github.com/dclelland/Degrad"
  s.license                 = { :type => 'MIT' }
  s.author                  = { "Daniel Clelland" => "daniel.clelland@gmail.com" }
  s.source                  = { :git => "https://github.com/dclelland/Degrad.git", :tag => "1.1.0" }
  s.platform                = :ios, '8.0'
  s.swift_version           = '4.2'
  s.ios.deployment_target   = '8.0'
  s.ios.source_files        = 'Degrad.swift'
  s.requires_arc            = true
end
