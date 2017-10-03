FROM: php:7.1-fpm
MAINTAINER tanner.doug@gmail.com

RUN docker-php-ext-install pdo pdo_mysql

EXPOSE 80