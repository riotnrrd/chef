#
# Cookbook Name:: sni-log-client
# Recipe:: default
#
# Copyright 2014, Scripps Networks
# Created by Shane Murphy 03/04/2014
#
# All rights reserved - Do Not Redistribute
#

cookbook_file "/etc/rsyslog.conf" do
	source "rsyslog.conf"
	mode "0644"
end

package "rsyslog" do
	action :install
end

directory "/etc/rsyslog.d" do
	owner "root"
	group "root"
	mode "0755"
	action :create
end

service "rsyslog" do
	action [:enable, :restart]
end
