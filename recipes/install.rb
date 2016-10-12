#
# Cookbook Name:: Lynis
# Recipe:: install
#
# Copyright 2016, Assurity Consulting
#
# All rights reserved - Do Not Redistribute
#
# include the apt cookbook
include_recipe 'apt::default'

# Following instructions on https://packages.cisofy.com/#debian-ubuntu
# to install lynis
apt_repository 'lynis' do
  uri node['lynis']['install']['uri']
  components ['main']
  distribution 'stable'
  key node['lynis']['install']['key']
  keyserver node['lynis']['install']['keyserver']
  action :add
  deb_src true
end

package node['lynis']['install']['package_name']
