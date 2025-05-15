#!bin/bash

export PATH=$PATH:/usr/bin/php-fpm8.2

cd /var/www/html
# curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
# chmod +x wp-cli.phar
# ./wp-cli.phar core download --allow-root
# ./wp-cli.phar config create --dbname=wordpress --dbuser=marlon --dbpass=1234 --dbhost=mariadb --allow-root
# ./wp-cli.phar core install --url=127.0.0.1 --title=inception --admin_user=admin --admin_password=admin --admin_email=admin@admin.com --allow-root


curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

chmod +x wp-cli.phar 
# mv wp-cli.phar /usr/local/bin/wp

./wp-cli.phar core download --allow-root

mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

chmod 777 /var/www/html/wp-config.php
sed -i -r "s/wordpress_name_here/wordpress/1"   /var/www/html/wp-config.php
sed -i -r "s/username_here/marlon/1"  /var/www/html/wp-config.php
sed -i -r "s/password_here/1234/1"    /var/www/html/wp-config.php

sed -i -r "s/localhost/mariadb/1"   /var/www/html/wp-config.php
# (to connect with mariadb database)


./wp-cli.phar core install --url=127.0.0.1 --title=inception --admin_user=marlon --admin_password=1234 --admin_email=admin@admin.com --skip-email --allow-root
./wp-cli.phar user create marlon_ marlon.hedemann@gmx.de --role=author --user_pass=1234 --allow-root
#wp theme install astra --activate --allow-root


#wp plugin install redis-cache --activate --allow-root
#sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

#mkdir /run/php


#wp redis enable --allow-root


echo test

php-fpm8.2 -F