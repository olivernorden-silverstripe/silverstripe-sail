ARG NODE_TAG=12-alpine
FROM node:${NODE_TAG}

# Fix for npm root owned files bug
ARG APP_USER_ID=0
ARG APP_GROUP_ID=0
RUN mkdir /.npm
RUN chown -R ${APP_USER_ID}:${APP_GROUP_ID} /.npm
RUN mkdir /.config
RUN chown -R ${APP_USER_ID}:${APP_GROUP_ID} /.config