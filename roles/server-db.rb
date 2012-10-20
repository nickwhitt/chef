name "server-db"
description "MySQL Database Server"
run_list "role[server-base]", "mysql::server"
