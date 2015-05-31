# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'simple_sinatra_api/version'

Gem::Specification.new do |spec|
  spec.name          = "simple_sinatra_api"
  spec.version       = SimpleSinatraApi::VERSION
  spec.authors       = ["Dinesh Vasudevan"]
  spec.email         = ["dineshvasudevan2003@yahoo.com"]
  spec.summary       = %q{ Generate an opinionated Simple Sinatra Application for API Backend }
  spec.description   = %q{ Generate an opinionated Simple Sinatra Application for API Backend }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "thor"
  spec.add_dependency "activesupport"
end