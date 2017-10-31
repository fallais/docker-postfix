FROM alpine:latest

MAINTAINER francois.allais@hotmail.com

RUN apk update \
    && apk add postfix=3.1.4-r1 \
    && rm -rf /var/cache/apk/*

EXPOSE 25

CMD [ "postfix" ]