FROM docker:20.10.10
RUN apk --update-cache add curl make && \
/bin/rm -fr /tmp/* /var/cache/* /var/tmp/*
COPY daemon.json /etc/docker/
ENTRYPOINT ["docker-entrypoint.sh"]
