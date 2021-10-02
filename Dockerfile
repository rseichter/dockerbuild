FROM docker:20.10
RUN apk add curl make
ENTRYPOINT ["docker-entrypoint.sh"]
