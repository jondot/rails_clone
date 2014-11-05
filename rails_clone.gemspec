# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_clone/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_clone"
  spec.version       = RailsClone::VERSION
  spec.authors       = ["jondot"]
  spec.email         = ["jondotan@gmail.com"]
  spec.summary       = %q{Create a clone of a base Rails app}
  spec.description   = %q{Create a clone of a base Rails app. Useful for generating an app out of a base template Rails app.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
