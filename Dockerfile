FROM docker

RUN apk add --update jq bash build-base

COPY Dockerfile docker-entrypoint.sh /
COPY ecr-login.sh /usr/local/bin/ecr-login.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]

CMD [ "/bin/bash", "-l" ]


