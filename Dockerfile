FROM alpine:latest

MAINTAINER francois.allais@hotmail.com

ADD run.sh .

RUN apk update \
    && apk add supervisor postfix=3.1.4-r1 \
    && rm -rf /var/cache/apk/* \
    && chmod +x run.sh

VOLUME  [ "/var/spool/postfix" ]

EXPOSE 25/tcp

ENTRYPOINT [ "./run.sh" ]