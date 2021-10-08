#!/bin/bash
cd /var/www
wget https://wordpress.org/latest.tar.gz
tar -xvzf latest.tar.gz
rm -rf latest.tar.gz
rm -f /var/www/wordpress/wp-config-sample.php
cd /var/www/wordpress
mv ./www.conf /etc/php/7.3/fpm/pool.d/
mkdir -p /run/php/
chown -R www-data:www-data /var/www/wordpress
chmod -R 755 /var/www/*
