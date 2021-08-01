ARG COMPOSER_VERSION=2
ARG SILVERSTRIPE_WEB_TAG=7.4-apache

FROM composer:${COMPOSER_VERSION} as ss_composer
FROM brettt89/silverstripe-web:${SILVERSTRIPE_WEB_TAG}

COPY --from=ss_composer /usr/bin/composer /usr/bin/composer