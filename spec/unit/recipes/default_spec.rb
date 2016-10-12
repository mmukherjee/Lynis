require 'spec_helper'

describe 'Lynis::default' do

  let(:chef_runner) { ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe) }

  it 'includes the `Lynis::install` recipe' do
     expect(chef_runner).to include_recipe('Lynis::install')
  end

  it 'includes the `Lynis::audit` recipe' do
     expect(chef_runner).to include_recipe('Lynis::audit')
  end

  it 'converges successfully' do
    expect {chef_runner}.to_not raise_error
  end
end
