# Introduction

Sail provides a Docker powered local development experience for Silverstripe CMS that is compatible with macOS, Windows (WSL2), and Linux. Other than Docker, no software or libraries are required to be installed on your local computer before using Sail. Sail's simple CLI means you can start building your Silverstripe CMS application without any previous Docker experience.

## Requirements
- Docker or docker desktop is required to use Silverstripe Sail.
- Silverstripe Sail is supported for MacOS, Linux and Windows (WSL2).

## Inspiration

Silverstripe Sail is inspired by and derived from [Laravel Sail](https://github.com/laravel/sail).

## Create new Silverstripe project
 ```
 docker run --rm \
     -u "$(id -u):$(id -g)" \
     -v $(pwd):/opt \
     -w /opt \
     nordenoliver/silverstripe-phpcomposer:php73-composer2 \
     composer create-project silverstripe/installer my-project
 ```

## Install Silverstripe sail

1. Add silverstripe-sail github repository to composer.json
    ```
    "repositories": [
        {
            "type": "vcs",
            "url": "https://github.com/olivernorden-silverstripe/silverstripe-sail"
        }
    ]
    ```
2. Install Silverstripe sail dependency
    ```
    docker run --rm \
        -u "$(id -u):$(id -g)" \
        -v $(pwd):/opt \
        -w /opt \
        nordenoliver/silverstripe-phpcomposer:php73-composer2 \
        composer require olivernorden/silverstripe-sail
    ```
3. Run sail installation command `.vendor/bin/sail install`. This command will create a docker-compose.yml and .env file in your project root. Existing docker-compose.yml and .env files may be overwritten.

## Configuration

Silverstripe is configured using environment variables in .env. This file is created upon sail installation. This file may be changed to suit your project. You will most likely want to change the following:

- **APP_URL**. The url that will be used to access your site. All ondocker.dev subdomains will resolve to localhost and be able to utilize ssl.
- **THEME_DIR**. The directory used for node/npm commands.
- **SILVERSTRIPE_WEB_TAG**. Silverstripe web server tag. A tag with apache will be required. [Available tags](https://hub.docker.com/r/brettt89/silverstripe-web/tags)
- **COMPOSER_VERSION**. Composer version. [Available tags](https://hub.docker.com/_/composer?tab=tags)
- **NODE_TAG**. Node version. [Available tags](https://hub.docker.com/_/node?tab=tags)

## Usage

Bellow is a collection of useful commands for Silverstripe development

**Bash alias**

A shell script is used for interaction with docker compose. It is recommended to add to following shell alias. 
```
alias sail='[ -f sail ] && bash sail || bash vendor/bin/sail'
```
Alternatively, the commands below can be prefixed with *./vendor/bin/sail* instead of *sail*.

**Starting your development environment**

- sail up -d

**Manage php dependencies**

- sail composer <install|update|require>

**Manage javascript dependencies**

- sail npm <install|update|require>

**Run dev/build or build tasks**

- sail cli dev/build
- sail cli dev/tasks/...


