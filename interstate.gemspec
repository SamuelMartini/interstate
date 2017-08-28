# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'interstate/version'

Gem::Specification.new do |spec|
  spec.name          = "interstate"
  spec.version       = Interstate::VERSION
  spec.authors       = ["SamuelMartini"]
  spec.email         = ["samueljmartini@gmail.com"]

  spec.summary       = 'a state machine with interactor implementation'
  spec.description   = 'Interstate is a simple state machine which use interactors to trigger transitions'
  spec.homepage      = 'https://github.com/SamuelMartini/interstate'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "interactor", "~> 3.1"

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'byebug'
  spec.add_development_dependency 'activerecord'
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency 'simplecov'
end
