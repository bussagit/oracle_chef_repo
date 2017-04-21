#
# Cookbook Name:: test_cookbook1
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'apache2'

#template '/usr/sbin/apache2' do
#  source 'apache.erb'
#  variables({
#    apache_mode: node['test_cookbook1']['mode'],
#    apache_owner: node['test_cookbook1']['owner']
#  })
#end