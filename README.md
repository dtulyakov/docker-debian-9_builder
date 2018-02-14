[![Docker Pulls](https://img.shields.io/docker/pulls/ddosguard/debian-9_builder.svg)](https://hub.docker.com/r/ddosguard/debian-9_builder/)

```BASH
docker build --force-rm --no-cache --tag=dtulyakov/debian-9_builder:latest . \
  && docker run --rm \
     --name=debian-9_builder \
     --volumes-from $(pwd)/DEB:/opt \
     --volumes-from $(pwd):/opt/repo \
     dtulyakov/debian-9_cpp:latest \
     sh -c "cd /opt/repo && gbp buildpackage -uc -us"

```
