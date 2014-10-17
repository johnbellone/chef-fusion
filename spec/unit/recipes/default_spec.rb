require 'spec_helper'

describe_recipe 'chef-fusion::default' do
  it { expect(chef_run).to install_chef_gem('chef-fusion') }
end
