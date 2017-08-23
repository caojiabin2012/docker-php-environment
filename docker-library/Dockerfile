FROM php:7.1.8-fpm

#install nginx 
ENV PHP_INI_DIR=/usr/local/etc/php
RUN set -ex \
    && pecl install redis \
    && echo 'extension=redis.so' >> "$PHP_INI_DIR"/php.ini \
    && pecl install mongodb \
    && echo 'extension=mongodb.so' >> "$PHP_INI_DIR"/php.ini \
    && pecl install swoole \
    && echo 'extension=swoole.so' >> "$PHP_INI_DIR"/php.ini

