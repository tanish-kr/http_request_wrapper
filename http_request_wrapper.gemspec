# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'http_request_wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = "http_request_wrapper"
  spec.version       = HttpRequestWrapper::VERSION
  spec.authors       = ["tatsu07"]
  spec.email         = ["tora.1986.tatsu@gmail.com"]

  spec.summary       = %q{net/http wrapper library}
  spec.description   = %q{net/http request method wrapper}
  spec.homepage      = "https://github.com/tatsu07/http_request_wrapper"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "yard"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "coveralls"
end
