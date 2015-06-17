# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'HaliciPaymentConnector/version'

Gem::Specification.new do |spec|
  spec.name          = 'HaliciPaymentConnector'
  spec.version       = HaliciPaymentConnector::VERSION
  spec.authors       = ['Yunus Eren Guzel']
  spec.email         = ['yeguzel@halici.com.tr']
  spec.summary       = 'Summary'
  spec.description   = 'Description'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
end
