FROM wordpress:php7.3-fpm-alpine
RUN apk add --no-cache $PHPIZE_DEPS

##
# Inject local copy of db-config.php and db.php
##
COPY ./db-config.php /usr/src/wordpress/db-config.php
COPY ./db.php /usr/src/wordpress/wp-content/db.php
COPY ./db-error.php /usr/src/wordpress/wp-content/db-error.php
COPY ./htaccess /usr/src/wordpress/.htaccess
COPY ./htpasswd /usr/src/wordpress/.htpasswd
RUN pecl install -o -f redis \
&&  rm -rf /tmp/pear \
&&  docker-php-ext-enable redis
