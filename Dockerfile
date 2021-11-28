FROM php:7.3.33-fpm-buster
RUN apt-get update && apt-get install -y
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    postgresql-client
RUN docker-php-ext-install exif pcntl bcmath gd
RUN apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql
RUN apt-get install -y software-properties-common npm
RUN npm install npm@latest -g && \
    npm install n -g && \
    n 16.13.0
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
WORKDIR /usr/src/laravel-react-recipe-book
COPY ./ ./
RUN npm install
RUN composer install
RUN composer global require "laravel/installer=~1.1"
RUN npm run development
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"
EXPOSE 8000/tcp
CMD ["/bin/bash"]
