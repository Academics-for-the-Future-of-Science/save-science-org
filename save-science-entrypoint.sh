#!/bin/bash
cd /var/www/html
echo "nameserver 8.8.8.8" >> /etc/resolv.conf
cp /composer-install .
php ./composer-install
cp /composer.json .
php composer.phar install
cp /wp-config.php .
mysqladmin -hdb_1 -uroot -pexample create wordpress
cp /install.php .
php install.php
exec apache2-foreground
