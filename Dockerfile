FROM alpine:3.11

ARG GIT_COMMIT
ARG BUILD_DATE

LABEL org.opencontainers.image.title="ssh" \
      org.opencontainers.image.revision=$GIT_COMMIT \
      org.opencontainers.image.source="https://github.com/apihackers/docker-remote" \
      org.opencontainers.image.created=$BUILD_DATE \
      org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.schema-version=1.0 \
      org.label-schema.vcs-ref=$GIT_COMMIT \
      org.label-schema.vcs-url="https://github.com/apihackers/docker-remote"

RUN apk add --no-cache openssh-client

RUN mkdir ~/.ssh

COPY remote /usr/local/bin/remote
RUN chmod +x /usr/local/bin/remote

RUN ln -s /usr/local/bin/remote /usr/local/bin/bash

# ENTRYPOINT ["/usr/local/bin/remote"]
