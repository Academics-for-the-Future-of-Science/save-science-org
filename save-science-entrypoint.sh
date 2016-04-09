#!/bin/bash
cd /var/www/html
php ./composer-install
cp /composer.json .
php composer.phar install
exec apache2-foreground
