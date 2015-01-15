# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fakeSpeedtest/version'

Gem::Specification.new do |spec|
  spec.name          = "fakeSpeedtest"
  spec.version       = FakeSpeedtest::VERSION
  spec.authors       = ["khalilfazal"]
  spec.email         = ["khalil.fazal.0@gmail.com"]
  spec.summary       = "Creates a fake speedtest image"
  spec.description   = "Given custom stats, a fake speedtest image is created. A URL to the image is provided to stdout."
  spec.homepage      = "https://github.com/khalilfazal/fake-speedtest"
  spec.license       = "GPL-2"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
