FROM hello-world:latest

RUN touch i-was-here

COPY i-was-here here-too
