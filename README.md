## Table of contents
- [Description](#description)
- [Technologies](#technologies)
- [Setup](#setup)
- [Config](#config)



## Decription <a name="description"></a>
Website with recipes posted by users.

## Features
- user authorization
- dashboard


## Technologies <a name="technologies"></a>
- PHP7/JavaScript
- Laravel 8/React 17
- InertiaJs 
- Progress 14 (Eloquent ORM)
- TailwindCSS 2/Bootstrap 5

## Setup <a name="setup"></a>
- Clone this repository
- run <code>docker-compose up</code> in the main project directory

## Config <a name="config"></a>
In order to work properly, the project requires setting of several environment variables. We put these variables in the .env file (development environment), and then we have to set them in the production environment (the configuration depends on the server we use).
The following is an example of the contents of the .env file:

DATABASE = mongodb+srv://admin:example<span>@</span>balah.s52fb.mongodb.net/myFirstDatabase?RetryWrites=true&w=majority \
SECRET = SomeSecretet!!! \
EMAIL_PASSWORD = dddddds \
EMAIL=example<span>@</span>gmail.com \
EMAIL_MAIN_URL = ht<span>tp</span>://localhost:3000/ \
SITE_DOMAIN = ht<span>tp</span>://localhost:3000/

### Variables description:
- DATABASE - your MongoDb connection string
- SECRET - a string used to generate JWT tokens (should be unique)
- EMAIL_PASSWORD - password for your Google Account (in the form of a token generated on the Google account page)
- EMAIL - your e-mail address
- EMAIL_MAIN_URL - your site's domain used in the generated emails
- SITE_DOMAIN - site domain name
