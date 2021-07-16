FROM nginx:alpine

RUN addgroup --gid 1000 nginx  &&\
    adduser --disabled-password --uid 1000 --ingroup nginx --home /home/nginx nginx 

RUN chown 1000 -R /etc/nginx/ && chgrp 1000 -R /etc/nginx/

COPY . /usr/share/nginx/html



