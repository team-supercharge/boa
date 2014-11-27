# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'boa/version'

Gem::Specification.new do |spec|
  spec.name          = "boa"
  spec.version       = Boa::VERSION
  spec.authors       = ["Balazs Kovacs"]
  spec.email         = ["balazs.kovacs@jbslabs.com"]
  spec.summary       = %q{A simple gem for creating VIPER projects and modules.}
  spec.description   = %q{This gem provides VIPER initialization and module generation functionalities.}
  spec.homepage      = "https://github.com/jbslabs/boa"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake"
  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_dependency "thor"
end
