FROM php:7.1-fpm
MAINTAINER tanner.doug@gmail.com

RUN docker-php-ext-install pdo pdo_mysql
RUN docker-php-ext-enable imagick
RUN docker-php-ext-configure opcache --enable-opcache && docker-php-ext-install opcache

EXPOSE 80