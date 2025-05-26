#!bin/bash


echo "CREATE DATABASE database_name_here;
USE database_name_here;
CREATE USER '$USER'@'%' IDENTIFIED BY '$PASSWORD';
GRANT ALL PRIVILEGES ON *.* TO '$USER'@'%' WITH GRANT OPTION;
FLUSH PRIVILEGES;" > /etc/mysql/init.sql

mkdir -m 777 /run/mysqld
# chmod 777 /etc/mysql/mariadb.conf.d/50-server.cnf
# chown mysql:mysql /etc/mysql/mariadb.conf.d/50-server.cnf

mysql_install_db
mysqld_safe --verbose