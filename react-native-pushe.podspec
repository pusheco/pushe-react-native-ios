require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-pushe"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-pushe
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-pushe"
  s.license        = package_json["license"]
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Jafar khoshtabiat" => "jafar.khoshtabiat@pushe.co" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/github_account/react-native-pushe.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.static_framework = true

  s.dependency "React"
  s.dependency "Pushe"
end

