ARG COMPOSER_VERSION=2
ARG SILVERSTRIPE_WEB_TAG=7.4-apache

FROM composer:${COMPOSER_VERSION} as ss_composer
FROM brettt89/silverstripe-web:${SILVERSTRIPE_WEB_TAG}

COPY --from=ss_composer /usr/bin/composer /usr/bin/composer

ARG APP_USER_ID=0
ARG APP_GROUP_ID=0

RUN mkdir /.composer
RUN chown -R ${APP_USER_ID}:${APP_GROUP_ID} /.composer

RUN a2enmod ssl

COPY ./scripts /tmp/scripts/
RUN chmod -R +x /tmp/scripts

# SSL certs
RUN /tmp/scripts/certs.sh
RUN chown -Rf ${APP_USER_ID}:${APP_GROUP_ID} /etc/ssl/ondocker.dev

RUN rm -rf /tmp/scripts

COPY ./vhosts/ /etc/apache2/sites-available
COPY ./config/ports.conf /etc/apache2/ports.conf