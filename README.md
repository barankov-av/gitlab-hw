# Домашнее задание к занятию "3. «MySQL»" - Баранков Антон"

### Задание 1
![Скриншот](img/1.jpg)

### Задание 2
![Скриншот](img/2.jpg)

### Задание 3
![Скриншот](img/3.jpg)

### Задание 4
[mysqld]  

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

