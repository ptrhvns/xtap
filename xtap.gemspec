lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xtap/version'

Gem::Specification.new do |spec|
  spec.name          = 'xtap'
  spec.version       = Xtap::VERSION
  spec.authors       = ['Peter Havens']
  spec.email         = ['Peter.Havens@gmail.com']
  spec.summary       = 'Adds #xtap method to Object.'
  spec.description   = 'Adds #xtap method to Object.'
  spec.homepage      = 'https://github.com/Tekhne/xtap'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'
end
