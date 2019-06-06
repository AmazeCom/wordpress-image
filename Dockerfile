FROM wordpress:5.2.0-php7.3-apache

##
# Inject local copy of db-config.php and db.php
##
#COPY ./db-config.php /usr/src/wordpress/db-config.php
#COPY ./db.php /usr/src/wordpress/wp-content/db.php
#COPY ./db-error.php /usr/src/wordpress/wp-content/db-error.php

RUN pecl install -o -f redis \
&&  rm -rf /tmp/pear \
&&  docker-php-ext-enable redis

###
# CHMOD and CHOWN ownership on the /usr/src/wordpress/wp-content directory
# To ensure when images are deploying the ownership is consistent across the cluster
RUN chown -R www-data:www-data /usr/src/wordpress/wp-content
