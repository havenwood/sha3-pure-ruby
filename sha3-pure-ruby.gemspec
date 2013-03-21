# coding: utf-8
lib = File.expand_path '../lib', __FILE__
$:.unshift lib unless $:.include? lib
require 'sha3-pure-ruby/version'

Gem::Specification.new do |spec|
  spec.name          = 'sha3-pure-ruby'
  spec.version       = SHA3::VERSION
  spec.authors       = ['havenwood']
  spec.email         = ['shannonskipper@gmail.com']
  spec.description   = 'An implementation of SHA3 in pure Ruby.'
  spec.summary       = 'Pure Ruby SHA3.'
  spec.homepage      = 'https://github.com/havenwood/sha3-pure-ruby'
  spec.license       = 'https://creativecommons.org/publicdomain/zero/1.0/'
  spec.files         = `git ls-files`.split $/
  # spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename f }
  spec.test_files    = spec.files.grep %r{^(test)/}
  spec.require_paths = ['lib']
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'minitest'
end
