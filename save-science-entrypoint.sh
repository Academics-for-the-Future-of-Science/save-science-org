#!/bin/bash
cd /var/www/html
php ./composer-install
cp /composer.json .
php composer.phar install
cp /install.php .
php install.php
exec apache2-foreground
