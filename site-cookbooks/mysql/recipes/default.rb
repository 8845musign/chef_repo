#
# Cookbook Name:: mysql
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
%w{mysql-community-client mysql-community-devel mysql-community-server}.each do |pkg|
  package pkg do
    action :install
  end
end

service 'mysqld' do
  supports :status => true, :restart => true, :reload => true
  action [ :enable, :start ]
end