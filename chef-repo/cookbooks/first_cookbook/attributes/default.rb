

if node['platform']=="windows"
	default['first_cookbook']['dir']='C:/var/www/customers/public_html'
	default['first_cookbook']['owner']='Administrator'
	default['first_cookbook']['group']='Administrator'
else
	default['first_cookbook']['dir']='/var/www/customers/public_html'
	default['first_cookbook']['owner']='root'
	default['first_cookbook']['group']='root'
end