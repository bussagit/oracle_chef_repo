#
# Cookbook Name:: first_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#remote_file 'C:/chef/Git-2.12.2.2-64-bit.exe' do
# source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
# action :create
# not_if { File.exists?('C:\chef\Git-2.5.3-64-bit.exe') }
#end


#execute 'GIT_INSTALLATION' do
 #command 'C:/chef/Git-2.12.2.2-64-bit.exe /SILENT'
 #not_if { File.exists?('C:\Program Files\Git\git-bash.exe') }
#end

remote_file "C:/chef/#{node['first_cookbook']['git_installer']}" do 
 source 'https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/Git-2.12.2.2-64-bit.exe'
 action :create
 not_if {File.exists?("C:/chef/#{node['first_cookbook']['git_installer']}")}
end


remote_file "C:/chef/#{node['my_first_oracle_cookbook']['git_installer']}" do
 source "https://github.com/git-for-windows/git/releases/download/v2.12.2.windows.2/#{node['my_first_oracle_cookbook']['git_installer']}"
 action :create
 not_if { File.exists?("C:/chef/#{node['my_first_oracle_cookbook']['git_installer']}") }
end
