# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'megingiard/version'

Gem::Specification.new do |spec|
  spec.name          = "megingiard"
  spec.version       = Megingiard::VERSION
  spec.authors       = ["moonglum"]
  spec.email         = ["moonglum@moonbeamlabs.com"]
  spec.description   = %q{Tools for creating beautiful CLI output}
  spec.summary       = %q{This gem provides beautiful output for your CLI}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
end
