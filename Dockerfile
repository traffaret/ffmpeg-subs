FROM php:8.2-cli-alpine

RUN apk add --no-cache --virtual .deps \
        ffmpeg
