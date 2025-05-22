#!bin/bash


mkdir -m 777 /run/mysqld
# chmod 777 /etc/mysql/mariadb.conf.d/50-server.cnf
# chown mysql:mysql /etc/mysql/mariadb.conf.d/50-server.cnf

mysql_install_db
mysqld_safe --verbose