# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scrit/version'
 
Gem::Specification.new do |spec|
  spec.name          = "scrit"
  spec.version       = Scrit::VERSION
  spec.authors       = ["Erik Newton"]
  spec.email         = ["erik_newton@hotmail.com"]

  spec.summary       = %q{Scratch emulation in Ruby}
  spec.description   = %q{This is intended to be a steping stone to learn Ruby if you already know Scratch.}
  spec.homepage      = "http://rubygems.org/gems/scrit"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'gosu', "~> 0.10"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
