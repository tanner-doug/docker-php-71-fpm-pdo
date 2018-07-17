FROM php:7.2-fpm
MAINTAINER tanner.doug@gmail.com

RUN apt-get update && apt-get install -y zlib1g-dev php7.2-zip \
    && docker-php-ext-install zip

RUN docker-php-ext-install pdo pdo_mysql
RUN apt-get update && apt-get install -y \
        libmagickwand-dev --no-install-recommends

RUN pecl install imagick && docker-php-ext-enable imagick
RUN docker-php-ext-configure opcache --enable-opcache && docker-php-ext-install opcache

EXPOSE 80