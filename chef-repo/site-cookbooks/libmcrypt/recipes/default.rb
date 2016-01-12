#
# Cookbook Name:: libmcrypt
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
%w{libmcrypt}.each do |pkg|
  package pkg do
    action :install
  end
end