cookbook_file "/etc/rsyslog.d/50-log-client-apache-images.conf" do
	source "rsyslog.d/50-sni-log-client-apache-images.conf"
end

cookbook_file "/etc/logrotate.d/apache-images.conf" do
	source "logrotate.d/apache-images.conf"
end
