FROM php:8.2-fpm-alpine

WORKDIR /var/www/laravel

RUN apk add icu-dev
RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN docker-php-ext-configure intl && docker-php-ext-install intl

RUN apk add libpng-dev
RUN docker-php-ext-install gd