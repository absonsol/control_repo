class role::db_server {
	include profile::base
	include profile::db
	include profile::sudoers_server
}
