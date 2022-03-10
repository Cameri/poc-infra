FROM node:16-alpine3.15

RUN apk add --no-cache coreutils tree

RUN touch i-was-here

RUN touch here-too

RUN tree

COPY ./here-too ./here-as-well
