#
# Cookbook Name:: kitchenplan-user
# Recipe:: default
#
# Copyright (c) 2014 Stefano Zanella, All Rights Reserved.

user node['current_user'] do
  shell node['kitchenplan-user']['shell']
end
