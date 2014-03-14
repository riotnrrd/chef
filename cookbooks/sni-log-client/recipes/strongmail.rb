cookbook_file "/etc/rsyslog.d/50-log-client-strongmail.conf" do
	source "rsyslog.d/50-sni-log-client-strongmail.conf"
end
