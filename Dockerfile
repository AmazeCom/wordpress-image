FROM wordpress:5.2.0-php7.3-apache

##
# Inject local copy of db-config.php and db.php
##
#COPY ./db-config.php /usr/src/wordpress/db-config.php
#COPY ./db.php /usr/src/wordpress/wp-content/db.php
#COPY ./db-error.php /usr/src/wordpress/wp-content/db-error.php
