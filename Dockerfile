FROM php:8.4-apache

LABEL maintainer tim@arctium.io

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        libpng-dev \
        libjpeg-dev \
        libfreetype6-dev \
        libicu-dev \
    && docker-php-ext-configure gd --with-jpeg --with-freetype \
    && docker-php-ext-install -j$(nproc) gd intl mbstring opcache \
    && apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false \
    && rm -rf /var/lib/apt/lists/*

RUN curl -O https://download.dokuwiki.org/src/dokuwiki/dokuwiki-2025-05-14.tgz \
    && tar -xzf dokuwiki-2025-05-14.tgz --strip-components=1 -C /var/www/html \
    && rm dokuwiki-2025-05-14.tgz \
    && find /var/www/html -type d -exec chmod 755 {} \; \
    && find /var/www/html -type f -exec chmod 644 {} \; \
    && chown -R www-data:www-data /var/www/html
