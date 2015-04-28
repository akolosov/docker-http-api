FROM akolosov/nginx

RUN rm -f /etc/nginx/sites-enabled/default
RUN mkdir -p /app

ADD default /etc/nginx/sites-enabled/default
ADD index.html /app/index.html

ADD run.sh /run.sh
RUN chmod +x /*.sh

ENTRYPOINT ["/bin/bash", "/run.sh"]
