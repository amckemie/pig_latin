# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pig_latin/version'

Gem::Specification.new do |spec|
  spec.name          = "pig_latin"
  spec.version       = PigLatin::VERSION
  spec.authors       = ["Ashley Mckemie"]
  spec.email         = ["ashley.mckemie@gmail.com"]
  spec.summary       = %q{Gem that translates inputted words into pig latin.}
  spec.description   = %q{Provides a module that takes all given cases for words and returns the appropriate pig latin. Interacts with terminal client so a user can input words to be translated.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "pry-debugger", "~> 0.2.2"
end
