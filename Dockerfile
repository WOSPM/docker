FROM php:7.4.16

# disable interactive functions
ENV DEBIAN_FRONTEND noninteractive

# Set global bin-dir for composer packages
ENV COMPOSER_BIN_DIR="/usr/local/bin"

RUN mkdir -p /app

WORKDIR /app

RUN apt-get update && \
    apt-get -y install --no-install-recommends libonig-dev libreadline-dev zlib1g-dev libxml2-dev libzip-dev apt-utils curl git zip unzip && \
    rm -rf /var/lib/apt/lists/*

RUN docker-php-ext-install \
    mbstring \
    zip \
    xml

# Install Composer
RUN curl -sS https://getcomposer.org/installer -o composer-setup.php && \
    php composer-setup.php --install-dir=/usr/local/bin --filename=composer

# Install WOSPM/checker
RUN composer global require WOSPM/checker

# Unset COMPOSER_BIN_DIR
ENV COMPOSER_BIN_DIR=""

# Unset the entry point
ENTRYPOINT []
