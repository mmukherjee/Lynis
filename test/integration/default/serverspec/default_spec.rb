require 'spec_helper'

describe 'Lynis::default' do
  describe package('apt') do
    it { should be_installed }
  end

  describe package('apt-transport-https') do
    it { should be_installed }
  end

  describe package('lynis') do
    it { should be_installed }
  end

  describe command('ls /var/log/lynis-report.dat') do
    its(:exit_status) { should eq 0 }
  end

  describe command('ls /var/log/lynis.log') do
    its(:exit_status) { should eq 0 }
  end
end
