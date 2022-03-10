FROM alpine:3.14

RUN apk add --no-cache coreutils tree

RUN touch i-was-here

RUN touch here-too

ENTRYPOINT [ "tree" ]