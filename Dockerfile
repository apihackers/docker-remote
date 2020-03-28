FROM alpine:3.11

ARG GIT_COMMIT
ARG BUILD_DATE

LABEL org.opencontainers.image.title="ssh" \
      org.opencontainers.image.revision=$GIT_COMMIT \
      org.opencontainers.image.source="https://github.com/apihackers/docker-ssh" \
      org.opencontainers.image.created=$BUILD_DATE

RUN apk add --no-cache openssh-client

RUN mkdir ~/.ssh

COPY remote /usr/local/bin/remote
RUN chmod +x /usr/local/bin/remote

ENTRYPOINT ["/usr/local/bin/remote"]
