# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'beaglebone/version'

Gem::Specification.new do |spec|
  spec.name          = "beaglebone-rails"
  spec.version       = Beaglebone::VERSION
  spec.authors       = ["Nicholaus Brabant"]
  spec.email         = ["nicholaus.brabant@gmail.com"]

  spec.summary       = %q{A Beaglebone Gem for Rails}
  spec.homepage      = "https://github.com/DivXZero/beaglebone-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9'

  spec.add_development_dependency "bundler", "~> 1.10"
end
