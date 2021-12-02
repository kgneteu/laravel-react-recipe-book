FROM php:7-fpm
RUN apt-get update && apt-get install -y
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip \
    postgresql-client \
    procps
RUN docker-php-ext-install exif pcntl bcmath gd
RUN apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql
RUN pecl install xdebug-3.1.1
RUN docker-php-ext-enable xdebug
RUN apt-get install -y software-properties-common npm
RUN npm install npm@latest -g && \
    npm install n -g && \
    n 16.13.0
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

WORKDIR /var/www/html
COPY --chown=www-data:www-data ./ ./
RUN cp .env.example .env
RUN npm install
RUN composer install
RUN composer global require "laravel/installer=~1.1"
RUN npm run development
#RUN php artisan migrate:fresh --seed
EXPOSE 9000/tcp
#ENTRYPOINT npm run watch-poll
CMD ["php-fpm"]
