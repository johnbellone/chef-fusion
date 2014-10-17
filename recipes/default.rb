#
# Cookbook: chef-fusion
# Recipe: chef-fusion
# License: Apache 2.0 (see http://www.apache.org/licenses/LICENSE-2.0)
#
chef_gem('chef-fusion') do
  action :nothing
  version run_context.cookbook_collection[cookbook_name].metadata.version
end.run_action(:install)

require 'chef/fusion'
