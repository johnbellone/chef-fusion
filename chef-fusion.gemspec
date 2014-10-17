$LOAD_PATH.unshift File.expand_path('../lib', __FILE__)
require 'chef/fusion/version'

Gem::Specification.new do |spec|
  spec.name          = 'chaindrive'
  spec.version       = Chef::Fusion::VERSION
  spec.authors       = ['John Bellone']
  spec.email         = ['jbellone@bloomberg.net']
  spec.summary       = IO.read(File.join(File.dirname(__FILE__), 'README.md'))
  spec.homepage      = 'https://github.com/johnbellone/chef-fusion'
  spec.license       = 'Apache v2.0'

  spec.files         = `git ls-files`.split($/)
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ['lib']
end
