FROM node:16-alpine3.15

RUN apk add --no-cache coreutils

RUN touch i-was-here

RUN touch here-too

COPY here-too here-as-well
