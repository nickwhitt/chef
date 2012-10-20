name "server-web"
description "Apache2 Web Server"

recipes = ["role[server-base]", "apache2", "mysql::client", "apache2::mod_php5", "php", "php::module_mysql"]
run_list(recipes)
env_run_lists(
	"development" => recipes + ["devtools::xdebug", "devtools::webgrind", "devtools::mailcatcher"],
	"_default" => recipes
)

override_attributes(
	:php => {
		:default_site_enabled => false,
		:conf_dir => "/etc/php5/apache2"
	}
)
