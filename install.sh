#!/bin/bash
apt-get install -y imagemagick
ln -s /var/www/html/thisismyj.am/site.conf /etc/apache2/sites-available/thisismyj.am.conf
cd /var/www/html/thisismyj.am/thisismyj.am
(< /dev/urandom tr -dc A-Za-z0-9 | head -c${1:-32};echo) > secrets/session_crypto_key
(< /dev/urandom tr -dc A-Za-z0-9 | head -c${1:-40};echo) > secrets/duo_app_key
a2ensite thisismyj.am
service apache2 reload
cd db
./init_db.sh
