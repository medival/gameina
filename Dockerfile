FROM php:8.0-apache

RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli 

RUN apt-get update && apt-get install -y libpq-dev && docker-php-ext-install pdo pdo_pgsql

RUN apt-get update && apt-get update -y 

RUN a2enmod rewrite