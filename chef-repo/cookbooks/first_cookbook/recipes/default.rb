



directory "#{node['first_cookbook']['dir']}" do
 owner "#{node['first_cookbook']['owner']}"
 group "#{node['first_cookbook']['group']}"
 mode '0755'
 recursive true
 action :create
end

cookbook_file  "#{node['first_cookbook']['dir']}/xyz.html" do 
 source 'index.html'
 owner "#{node['first_cookbook']['owner']}"
 group "#{node['first_cookbook']['group']}"
 mode '0755'
 action :create
end





