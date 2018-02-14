[![Build Status](https://travis-ci.org/dtulyakov/docker-debian-9_cpp.svg?branch=master)](https://travis-ci.org/dtulyakov/docker-debian-9_cpp)
[![Docker Pulls](https://img.shields.io/docker/pulls/ddosguard/debian-9_cpp.svg)](https://hub.docker.com/r/ddosguard/debian-9_cpp/)

```BASH
docker build --force-rm --no-cache --tag=dtulyakov/debian-9_cpp:latest . \
  && docker run --rm \
     --name=debian-9_cpp \
     --volumes-from $(pwd)/DEB:/opt \
     --volumes-from $(pwd):/opt/repo \
     dtulyakov/debian-9_cpp:latest \
     sh -c "cd /opt/repo && gbp buildpackage -uc -us"

```
