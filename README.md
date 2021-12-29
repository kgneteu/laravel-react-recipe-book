# Strong Recipes
## Table of contents
- [Description](#description)
- [Setup](#setup)
- [Technologies](#technologies)
- [Config](#config)


## Description <a name="description"></a>
Website with recipes posted by users. A demo version is available on [Heroku](https://strong-recipes.herokuapp.com/recipes).

## Setup <a name="setup"></a>
By default, the application runs at `http://127.0.0.1:8000`
### Docker-way
- clone this repository
- run `docker-compose up` in the main project directory

If you just want to see the demo, run `docker-compose up` in the `docker/demo` subdirectory.

### Classic
You must have all the tools needed for PHP development (eg XAMPP) and access to the Postgres database (version 14).
- clone this repository
- enter the root directory
- run `composer install`
- run `npm install`
- set Postgres credentials in the .env file (or rename .env.example to .env)
- run `php artisan migrate --seed`
- run `npm run development`
- run `php artisan serve`

## Features
- user authorization
- recipe editor
- dashboard

## Technologies <a name="technologies"></a>
- PHP7/JavaScript
- Laravel 8/React 17
- InertiaJs
- Postgres 14 (Eloquent ORM)
- TailwindCSS 2/Bootstrap 5

## Config <a name="config"></a>
No special configuration is required. The application is configured using Laravel-specific environment variables saved in the .env file. More information can be found [here]( https://laravel.com/docs/8.x/configuration#environment-configuration). An example configuration is given in the .env.example file - just rename it to .env.
