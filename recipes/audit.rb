#
# Cookbook Name:: Lynis
# Recipe:: audit
#
# Copyright 2016, Assurity Consulting
#
# All rights reserved - Do Not Redistribute
#
# ensure that the lynis package is installed
package 'lynis'

# This is used to execite the audit report
execute 'generate-report' do
  command node['lynis']['audit']['command']
end
