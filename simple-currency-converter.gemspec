# coding: utf-8
Gem::Specification.new do |s|
  s.name          = 'simple-currency-converter'
  s.version       = '0.0.6'
  s.authors       = ['RETAILCOMMON DEV (Scott Chu, Justine Jones, Jeff Li, Greg Ward)']
  s.email         = ['dev@retailcommon.com']
  s.summary       = 'Web client to retrieve currency exchange rates'
  s.description   = 'Web client to retrieve currency exchange rates'
  s.homepage      = 'http://yroo.com'
  s.license       = 'MIT'

  s.files = `git ls-files -z`.split("\x0")
  s.executables = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']

  s.add_development_dependency 'bundler', '~> 1.6'
  s.add_development_dependency 'rake'

  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'guard-shell'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rspec-mocks'
  s.add_development_dependency 'rspec-its'
end
