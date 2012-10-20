name "development"
description "Development Environment"
override_attributes(
	:mysql => {
		:server_root_password => "root",
		:allow_remote_root => true
	},
	:php => {
		:directives => {
			:display_errors => "on",
			:html_errors => "on"
		}
	},
	:xdebug => {
		:var_display_max_depth => 6,
		:var_display_max_data => 4096,
		:var_display_max_children => -1
	}
)
