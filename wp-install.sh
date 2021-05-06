#!/bin/bash

set -ex;
WPINSTALLDIR=/var/www/html

wp core download \
    --locale=ja --version=5.2.2 --path=${WPINSTALLDIR}  

wp config create \
    --dbname=wordpress --dbuser=taise --dbpass=taise --dbhost=db:3306 \
    --force --path=${WPINSTALLDIR}

wp core install \
    --url=localhost --title=テスト用WordPress \
    --admin_user=taise \
    --admin_password=taise \
    --admin_email=arinc0.arisan@gmail.com \
    --path=${WPINSTALLDIR} 

wp plugin install \
    classic-editor advanced-custom-fields custom-post-type-ui custom-post-type-permalinks \
    tinymce-advanced \
    --activate --path=${WPINSTALLDIR}

