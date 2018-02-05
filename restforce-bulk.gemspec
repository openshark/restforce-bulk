# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'restforce/bulk/version'

Gem::Specification.new do |spec|
  spec.name          = "restforce-bulk"
  spec.version       = Restforce::Bulk::VERSION
  spec.authors       = ["Vicente Mundim"]
  spec.email         = ["vicente.mundim@gmail.com"]

  spec.summary       = %q{Client for Salesforce Bulk API}
  spec.description   = %q{Client for Salesforce Bulk API}
  spec.homepage      = "https://github.com/dtmtec/restforce-bulk"
  spec.license       = "MIT"

  spec.files         = Dir.glob("{bin,lib,template}/**/*") + %w(LICENSE.txt README.md)
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "restforce", "~> 2.5"
  spec.add_dependency "nokogiri", "~> 1.8"
  spec.add_dependency "multi_xml", "~> 0.6"
  spec.add_dependency "activesupport", "~> 5.0"
  spec.add_dependency "rubyzip", "~> 1.1.7"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.7"
  spec.add_development_dependency "simplecov", "~> 0.15"
end
