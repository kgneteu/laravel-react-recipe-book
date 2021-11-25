FROM php:7.3.33-fpm-buster
WORKDIR /usr/src/laravel-react-recipe-book
COPY ./ ./
CMD ["/bin/bash"]
