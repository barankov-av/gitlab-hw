# Домашнее задание к занятию "3. «MySQL»" - Баранков Антон"

### Задание 1
![Скриншот](img/1.jpg)

### Задание 2
![Скриншот](img/2.jpg)

### Задание 3
![Скриншот](img/3.jpg)

### Задание 4
# For advice on how to change settings please see  
# http://dev.mysql.com/doc/refman/8.1/en/server-configuration-defaults.html

[mysqld]  
#
# Remove leading # and set to the amount of RAM for the most important data
# cache in MySQL. Start at 70% of total RAM for dedicated server, else 10%.
# innodb_buffer_pool_size = 128M
#
# Remove leading # to turn on a very important data integrity option: logging
# changes to the binary log between backups.
# log_bin
#
# Remove leading # to set options mainly useful for reporting servers.
# The server defaults are faster for transactions and fast SELECTs.
# Adjust sizes as needed, experiment to find the optimal values.
# join_buffer_size = 128M
# sort_buffer_size = 2M
# read_rnd_buffer_size = 2M
# Remove leading # to revert to previous value for default_authentication_plugin,
# this will increase compatibility with older clients. For background, see:
# https://dev.mysql.com/doc/refman/8.1/en/server-system-variables.html#sysvar_default_authentication_plugin
# default-authentication-plugin=mysql_native_password

skip-host-cache  
skip-name-resolve  
datadir=/var/lib/mysql  
socket=/var/run/mysqld/mysqld.sock  
secure-file-priv=/var/lib/mysql-files  
user=mysql  

innodb_flush_log_at_trx_commit = 0  
innodb_file_per_table = 1  
innodb_file_format = Barracuda  
innodb_log_buffer_size = 1M  
innodb_buffer_pool_size = 0.3 * {RAM}  
innodb_buffer_pool_instances = 8  
innodb_log_file_size = 100M  
innodb_log_files_in_group = 2  

pid-file=/var/run/mysqld/mysqld.pid  
[client]  
socket=/var/run/mysqld/mysqld.sock  

!includedir /etc/mysql/conf.d/  

