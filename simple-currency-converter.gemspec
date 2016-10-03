# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |s|
  s.name          = 'simple-currency-converter'
  s.version       = '0.0.3'
  s.authors       = ['RETAILCOMMON DEV (Scott Chu, Justine Jones, Jeff Li, Greg Ward)']
  s.email         = ['dev@retailcommon.com']
  s.summary       = 'Web client to retrieve currency exchange rates'
  s.description   = 'Web client to retrieve currency exchange rates'
  s.homepage      = 'http://yroo.com'
  s.license       = 'MIT'

  s.require_paths = ['lib']

  s.add_development_dependency 'bundler', '~> 1.6'
  s.add_development_dependency 'rake'

  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-shell'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rspec-mocks'
  s.add_development_dependency 'rspec-its'
end
