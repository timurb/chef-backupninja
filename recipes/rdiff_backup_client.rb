#
# Cookbook Name:: backupninja
# Recipe:: rdiff_backup_client
#
# Copyright 2014, Kevin Van Wilder
#
#
# Installs and prepares the server to send remote rdiff backups
#

include_recipe "backupninja::_install_and_configure"

package node['backupninja']['rdiff_backup_package_name'] do
	action :install
end

include_recipe "backupninja::_sshkeypair"
