name "base"
description "Base Server Role"
run_list ("recipe[rsyslog::client]")
