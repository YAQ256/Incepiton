#!/bin/bash
cd /var/www/html
rm -rf *
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
chmod +x wp-cli.phar
./wp-cli.phar core download --allow-root
./wp-cli.phar config create --dbname=$dbname --dbuser=$dbuser --dbpass=$dbpassword --dbhost=$dbhost --allow-root
./wp-cli.phar core install --url=localhost --title=inception --admin_user=$admin_user --admin_password=$admin_password --admin_email=$admin_email --allow-root
./wp-cli.phar user create $wp_user $wp_email --role=author --user_pass=$wp_password --allow-root
php-fpm8.2 -F