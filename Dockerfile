FROM alpine:latest

MAINTAINER francois.allais@hotmail.com

RUN apk update \
    && apk add postfix=3.2.4-r0 \
    && rm -rf /var/cache/apk/*

EXPOSE 25

CMD [ "postfix" ]