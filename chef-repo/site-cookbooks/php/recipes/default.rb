#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{php php-cli php-common php-gd php-mbstring php-mcrypt php-mysqlnd php-pdo php-pgsql php-xml}.each do |pkg|
  package pkg do
    action :install
  end
end

template "/etc/php.ini" do
  source "php.ini.erb"
  owner "root"
  group "root"
  mode 0644
end

service 'httpd' do
  action :restart
end