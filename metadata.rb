require File.expand_path('../lib/chef/fusion/version.rb', __FILE__)

name             'chef-fusion'
maintainer       'John Bellone'
maintainer_email 'jbellone@bloomberg.net'
license          'Apache 2.0'
description      'Installs chef-fusion.'
long_description 'Installs chef-fusion.'
version          Chef::Fusion::VERSION

%w(centos redhat).each do |name|
  supports name, '~> 7.0'
  supports name, '~> 6.5'
end

supports 'ubuntu', '= 14.04'
supports 'ubuntu', '= 12.04'
