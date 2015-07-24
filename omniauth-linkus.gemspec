# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-linkus/version'

Gem::Specification.new do |spec|
  spec.name          = 'omniauth-linkus'
  spec.version       = Omniauth::Linkus::VERSION
  spec.authors       = ['Shoya TANAKA']
  spec.email         = ['8398a7@gmail.com']

  spec.summary       = 'linkus OAuth2 Strategy for OmniAuth'
  spec.homepage      = 'https://github.com/SLP-KBIT/omniauth-linkus.git'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_dependency 'omniauth-oauth2'
end
