FROM alpine:latest

MAINTAINER francois.allais@hotmail.com

RUN apk update \
    && apk add supervisor postfix=3.1.4-r1 \
    && rm -rf /var/cache/apk/*

ADD supervisord.conf /etc/supervisord.conf

VOLUME  [ "/var/spool/postfix" ]

USER root

EXPOSE 25/tcp

CMD [ "supervisord" ]