FROM alpine:3.14

RUN apk add --no-cache tree coreutils

WORKDIR /app

RUN touch /app/i-was-here

RUN touch /app/here-too

COPY ./always-here /app/always-here

ENTRYPOINT [ "tree /app" ]