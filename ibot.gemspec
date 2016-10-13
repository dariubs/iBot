# -*- encoding: utf-8 -*-

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'ibot/version'

Gem::Specification.new do |s|
  s.name        = 'ibot'
  s.version     = IBot::VERSION
  s.date        = '2016-10-13'
  s.summary     = 'Ruby simple bot maker.'
  s.description = 'A simple library for creating bots in ruby.'
  s.authors     = ['Dariush Abbasi']
  s.email       = 'poshtehani@gmail.com'
  s.files       = `git ls-files`.split("\n")
  s.test_files  = `git ls-files -- {spec}/*`.split("\n")
  s.executables =
    `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  s.require_paths = ['lib']
  s.homepage      =
    'http://github.com/dariubs/ibot'
  s.license       = 'MIT'

  s.add_development_dependency 'rspec', '~> 3.4.0'
end
