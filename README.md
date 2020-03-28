# Docker Remote

[![Docker Build Status](https://img.shields.io/docker/build/apihackers/remote.svg)](https://hub.docker.com/r/apihackers/remote/builds/) [![Commit](https://images.microbadger.com/badges/commit/apihackers/remote.svg)](https://microbadger.com/images/apihackers/remote) [![Download size](https://images.microbadger.com/badges/image/apihackers/remote.svg)](https://microbadger.com/images/apihackers/remote)

An SSH client meant to be run in CI services.

## Getting started

Fetch the docker image:

```shell
$ docker pull apihackers/remote
```

and then execute your remote commands:

```shell
$ docker run -rm -e SSH_USER -e SSH_HOST -e SSH_KEY -e WORKDIR apihackers/remote run-my-command with params
```

## Environment variables

**`SSH_USER`**: the user to connect with. Default to `root`

**`SSH_HOST`**: the remote host to connect to

**`SSH_KEY`**: the private ssh key to authenticate with

**`WORKDIR`**: an optionnal directory into which command will be executed 

## Examples

### Gitlab CI

### Circle CI
