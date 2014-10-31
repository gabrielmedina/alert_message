# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require 'version'

Gem::sification.new do |s|
  s.name          = "alert_message"
  s.version       = AlertMessage::Version::VERSION
  s.authors       = ["Luiz Picolo"]
  s.email         = ["luizpicolo@gmail.com"]
  s.summary       = "Alert Message"
  s.description   = "Simple gem for alerts messages"
  s.homepage      = "https://github.com/luizpicolo/alert_message"
  s.license       = "MIT"

  s.files         = `git ls-files -z`.split("\x0")
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|s|features)/})
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.6"
  s.add_development_dependency "rake"
end
