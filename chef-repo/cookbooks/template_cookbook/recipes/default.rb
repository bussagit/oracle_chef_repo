#
# Cookbook Name:: template_cookbook
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
Chef::Recipe.send(:include, OracleCorp)
template '/home/vagrant/sudoers' do
  source 'sudoers.erb'
  mode '0440'
  owner 'root'
  group 'root'
  variables({
    sudoers_groups: node['template_cookbook']['sudo']['groups'],
    sudoers_users: node['template_cookbook']['sudo']['users']
  })
end

mynewob = WebLogic.new(69)
puts "VALUE OF LIBRARY #{mynewob.awesome_level}"

objectitem = data_bag_item('mydatabag','MyWorkStation')
puts " value of data bag item is #{objectitem['namespace']}"


admins = data_bag('mydatabag1')
admins.each do |login|
  admin = data_bag_item('mydatabag1', login)
  if node.name == admin.id
   Chef::Log.info("I am in #{node.name}")
  end
end


admins1 = data_bag('mydatabag2')
admins1.each do |login|
    admin1 = data_bag_item('mydatabag2', login)
    if node.name == admin1.id
       action :delete 
    end
end