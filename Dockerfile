FROM docker:20.10.10
RUN apk --update-cache add curl make && \
/bin/rm -fr /tmp/* /var/cache/* /var/tmp/*
ENTRYPOINT ["docker-entrypoint.sh"]
