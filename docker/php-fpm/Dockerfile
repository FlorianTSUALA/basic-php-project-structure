FROM devilbox/php-fpm:7.4-prod
WORKDIR "/var/www/html/"

# UPDATE
RUN apt-get update && apt-get install -y \
    zip \
    unzip

# COMPOSER
RUN cd /usr/local/bin \
    && curl -sS https://getcomposer.org/installer | php \
    && chmod a+x composer.phar \
    && mv composer.phar composer