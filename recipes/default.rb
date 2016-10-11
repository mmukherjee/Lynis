#
# Cookbook Name:: Lynis
# Recipe:: default
#
# Copyright 2016, Assurity Consulting
#
# All rights reserved - Do Not Redistribute
#
include_recipe 'Lynis::install'

include_recipe 'Lynis::audit'
