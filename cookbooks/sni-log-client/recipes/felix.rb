cookbook_file "/etc/rsyslog.d/50-log-client-felix.conf" do
	source "rsyslog.d/50-sni-log-client-felix.conf"
end
