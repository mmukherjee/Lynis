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

# this is a prerequisite as per instructions on - https://packages.cisofy.com/#debian-ubuntu
package 'apt-transport-https'

# Following instructions on https://packages.cisofy.com/#debian-ubuntu
# to install lynis
apt_repository 'lynis' do
  uri 'https://packages.cisofy.com/community/lynis/deb/'
  components ['main']
  distribution 'stable'
  key 'C80E383C3DE9F082E01391A0366C67DE91CA5D5F'
  keyserver 'keyserver.ubuntu.com'
  action :add
  deb_src true
end

package 'lynis'
