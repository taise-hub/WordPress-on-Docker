FROM php:7.1-apache

RUN \
  { apt-get update; \
    apt-get install -y zlib1g-dev libzip-dev; \
    docker-php-ext-install zip; \
    docker-php-ext-install mysqli; \
    docker-php-ext-configure zip; \
    docker-php-ext-configure mysqli ; \
  }