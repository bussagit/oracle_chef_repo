#
# Cookbook Name:: test_cookbook2
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package 'vsftpd'
template '/etc/vsftpd/ftpusers' do
  source 'vsftp.erb'
  variables({
    vsftp_mode: node['test_cookbook1']['mode'],
    vsftp_owner: node['test_cookbook1']['owner']
  })
end