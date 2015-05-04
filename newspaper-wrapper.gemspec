# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'newspaper/wrapper/version'

Gem::Specification.new do |spec|
  spec.name          = 'newspaper-wrapper'
  spec.version       = Newspaper::Wrapper::VERSION
  spec.authors       = ['Andrew Kreps']
  spec.email         = ['andrew.kreps@gmail.com']

  spec.summary       = %q{Designed to dash-wrap your lines of text given a set width.}
  spec.description   = %q{Ever read the newspaper?  I'm a big fan of how they hyphenate words to move to the next line without excessively spaced justification.  This gem seeks to replicate that functionality.}
  spec.homepage      = 'https://github.com/onewheelskyward/newspaper-wrapper'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.8'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.2'
end
