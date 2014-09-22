# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'viper/version'

Gem::Specification.new do |spec|
  spec.name          = "viper"
  spec.version       = Viper::VERSION
  spec.authors       = ["Balazs Kovacs"]
  spec.email         = ["balazs.kovacs@jbslabs.com"]
  spec.summary       = %q{Little gem for creating VIPER modules.}
  spec.description   = %q{This gem provides VIPER initialization and module generation functionalities.}
  spec.homepage      = "http://jbslabs.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "thor"
end
