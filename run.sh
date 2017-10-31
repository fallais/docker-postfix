#!/bin/sh

postfix start
sleep 5
tail -f /var/log/mail.log