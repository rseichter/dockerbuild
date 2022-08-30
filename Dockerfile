FROM docker:20
RUN apk --update-cache add curl make && \
/bin/rm -fr /tmp/* /var/cache/* /var/tmp/*
COPY daemon.json /etc/docker/
ENTRYPOINT ["docker-entrypoint.sh"]
