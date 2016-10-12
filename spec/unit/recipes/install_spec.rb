require 'spec_helper'

describe 'Lynis::install' do
  it 'includes the `apy::default` recipe' do
    chef_runner = ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04').converge(described_recipe)
    expect(chef_runner).to include_recipe('apt::default')
  end

  package_checks = {
    'ubuntu' => {
      '12.04' => ['lynis'],
      '14.04' => ['lynis'],
      '16.04' => ['lynis']
    },
    'debian' => {
      '7.0' => ['lynis'],
      '7.1' => ['lynis']
    },
    'redhat' => {
      '6.3' => ['lynis']
    }
  }

  package_checks.each do |platform, versions|
    versions.each do |version, packages|
      packages.each do |package_name|
        it "should install #{package_name} on #{platform} #{version}" do
          chef_runner = ChefSpec::SoloRunner.new(platform: platform, version: version)
          chef_runner.converge(described_recipe)
          expect(chef_runner).to install_package(package_name)
        end
      end
    end
  end
end
