require 'spec_helper'

describe 'Lynis::default' do
  let(:chef_run) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe) }

  it 'installs lynis' do
    expect(chef_run).to install_package('lynis')
  end
end
