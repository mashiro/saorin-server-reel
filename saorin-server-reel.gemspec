# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'saorin/server/reel/version'

Gem::Specification.new do |spec|
  spec.name          = 'saorin-server-reel'
  spec.version       = Saorin::Server::Reel::VERSION
  spec.authors       = ['mashiro']
  spec.email         = ['mail@mashiro.org']
  spec.description   = %q{rell server adapter for saorin}
  spec.summary       = spec.description
  spec.homepage      = 'https://github.com/mashiro/saorin-server-reel'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'saorin', '>= 0.5.0'
  spec.add_dependency 'reel', '>= 0.5.0'
  spec.add_development_dependency 'rake', '~> 10.4.2'
  spec.add_development_dependency 'rspec', '~> 3.9.0'
  spec.add_development_dependency 'faraday', '~> 0.9.0'
end
