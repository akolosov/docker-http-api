FROM akolosov/nginx

RUN rm -f /etc/nginx/sites-enabled/default
RUN mkdir -p /app

ADD default /etc/nginx/sites-enabled/default
ADD index.html /app/index.html

# Define mount points.
VOLUME ["/data"]

RUN mkdir -p /data/log
RUN chmod 0777 /data
RUN chmon 0777 /data/log

ENV SHELL /bin/bash

ENTRYPOINT ["/usr/sbin/nginx"]
