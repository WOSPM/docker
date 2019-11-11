FROM php:7.3.11

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

RUN mkdir -p /app

WORKDIR /app

RUN apt-get update && \
    apt-get -y install --no-install-recommends libmcrypt-dev libreadline-dev zlib1g-dev libxml2-dev libzip-dev apt-utils curl git zip unzip && \
    rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install \
    mbstring \
    zip \
    xml

# Install Composer
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php && \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer && \
    composer config -g repo.packagist composer https://packagist.phpcomposer.com

# Install Psecio Parse
RUN composer global require --dev WOSPM/checker

# Unset the entry point
ENTRYPOINT []
