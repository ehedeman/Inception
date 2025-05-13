#!bin/bash
mkdir -p /var/run/mysqld
chown -R mysql:mysql /var/run/mysqld

service mysql start
sleep 3

#echo "CREATE DATABASE IF NOT EXISTS $db_name ;" > db1.sql
#echo "CREATE USER IF NOT EXISTS '$db_user'@'%' IDENTIFIED BY '$db_pwd' ;" >> db1.sql
#echo "GRANT ALL PRIVILEGES ON $db_name.* TO '$db_user'@'%' ;" >> db1.sql
#echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '1234' ;" >> db1.sql
#echo "FLUSH PRIVILEGES;" >> db1.sql


#mysql < db1.sql

#kill $(cat /var/run/mysqld/mysqld.pid)

mysql -e "CREATE DATABSE IF NOT EXIST ${db_name};"
mysql -e "CREATE USER '${db_user}'@'%' IDENTIFIED BY '${db_pwd}';"
mysql -e "GRANT ALL PRIVLEDGES ON ${db_name}.* TO '${db_user}'@'%';"
mysql -u${mysql_root_user} -p${root_pw} -e "ALTER USER '${mysql_root_user}'@'localhost' IDENTIFIED BY '${root_pw}';"
mysql -e "FLUSH PRIVILEGES;"
mysqladmin -u${mysql_root_user} -p${root_pw} shutdown

exec "$@"

