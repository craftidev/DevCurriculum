FROM php:8.2.9-fpm-alpine3.18

# Avoid exec as root
RUN  useradd -ms  /bin/bash php
USER php

# Source
COPY . /var/www/html
WORKDIR /var/www/html

# Requirements/config
# ? install composer for packages if needed
# RUN composer install --no-cache

# Init
RUN echo "### PHP init ###"
CMD ["php-fpm"]