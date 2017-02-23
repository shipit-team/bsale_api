# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bsale_api/version'

Gem::Specification.new do |spec|
  spec.name          = "bsale_api"
  spec.version       = BsaleApi::VERSION
  spec.authors       = ["Nelson Pato Jimenez","Michel Szinavel"]
  spec.email         = ["developer.jimenez@gmail.com","michel.szinavel@gmail.com"]

  spec.summary       = %q{ BSale Api }
  spec.description   = %q{ Wrapper for BSALE API}
  spec.homepage      = "https://github.com/shipit-team/bsale_api"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "dotenv"
  spec.add_dependency "httparty", "~> 0.14.0"

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry-byebug", "~> 3.4.2"
end
