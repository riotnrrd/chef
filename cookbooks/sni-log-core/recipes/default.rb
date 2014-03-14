#
# Cookbook Name:: sni-log-core
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

cookbook_file "/etc/yum.repos.d/rsyslog.repo" do
	source "rsyslog.repo"
	mode "0644"
end

package "rsyslog" do
	action :install
end

cookbook_file "/etc/rsyslog.conf" do
	source "rsyslog.conf"
	mode "0644"
end

service "rsyslog" do
	action [:enable, :restart]
end

package "logrotate" do
	action :install
end

cookbook_file "/etc/yum.repos.d/centos.repo" do
	source "centos.repo"
	mode "0644"
end

package "pacemaker" do
	action :install
end

package "corosync" do
	action :install
end

remote_directory "/etc/rsyslog.d" do
	source "rsyslog.d"
end

remote_directory "/etc/logrotate.d" do
	source "logrotate.d"
end
