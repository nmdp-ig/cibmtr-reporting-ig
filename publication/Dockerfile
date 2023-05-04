FROM php:8.0-apache

# tried setting up https per instructions at
# https://dockerwebdev.com/tutorials/docker-php-development/
# but did not help
# RUN a2enmod ssl && a2enmod rewrite
# RUN mkdir -p /etc/apache2/ssl
# RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
# COPY ./ssl/*.pem /etc/apache2/ssl/
# COPY ./apache/000-default.conf /etc/apache2/sites-available/000-default.conf

WORKDIR /var/www/html
COPY web-root/cibmtr-reporting/ ig/cibmtr-reporting

EXPOSE 80
# EXPOSE 443