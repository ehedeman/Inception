#!bin/bash

sleep 1

export PATH=$PATH:/usr/bin/php-fpm8.2

cd /var/www/html

#-------------uncomment if web/ has no wp-contents yet----------------------------------
# curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar 

# chmod +x wp-cli.phar 

# ./wp-cli.phar core download --allow-root

# mv /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

# chmod 777 /var/www/html/wp-config.php
# sed -i -r "s/wordpress_name_here/wordpress/1"   /var/www/html/wp-config.php
# sed -i -r "s/1username_here/marlon/1"  /var/www/html/wp-config.php
# sed -i -r "s/password_here/1234/1"    /var/www/html/wp-config.php

# sed -i -r "s/localhost/mariadb/1"   /var/www/html/wp-config.php

./wp-cli.phar core install --url=ehedeman.42.fr --title=inception --admin_user=marlon --admin_password=1234 --admin_email=admin@admin.com --skip-email --allow-root
./wp-cli.phar user create marlon_ marlon.hedemann@gmx.de --role=author --user_pass=1234 --allow-root
./wp-cli.phar theme install astra --activate --allow-root


echo test

php-fpm8.2 -F