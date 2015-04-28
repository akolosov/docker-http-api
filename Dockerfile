FROM akolosov/nginx

RUN rm -f /etc/nginx/sites-enabled/default
RUN mkdir -p /app

ADD default /etc/nginx/sites-enabled/default
ADD index.html /app/index.html

ENV SHELL /bin/bash

ENTRYPOINT ["/usr/sbin/nginx"]
