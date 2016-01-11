#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{ httpd }.each do |pkg|
  package "#{pkg}" do
    action :install
  end
end
 
template "/etc/httpd/conf/httpd.conf" do
  source "httpd.conf.erb"
  owner "root"
  group "root"
  mode 0644
end

service 'httpd' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end