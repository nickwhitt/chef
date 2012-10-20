name "server-base"
description "Base Server"
run_list "ubuntu", "build-essential"
override_attributes "build_essential" => { "compiletime" => true }
