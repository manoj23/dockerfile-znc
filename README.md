dockerfile-znc
==============

This is a simple alpine container that runs `znc`.

## Example of docker run

```
docker build -t znc https://github.com:/manoj23/dockerfile-znc.git
docker run --rm -ti -v $PWD/znc/:/home/znc-admin/.znc/ znc
```

## Example of docker-compose.yml

Put in a folder:
* docker-compose.yml as below

```
version: '3'
services:
  znc:
    build:
    context: https://github.com:/manoj23/dockerfile-znc.git
    volumes:
      - /path/to/znc:/home/znc-admin/.znc
```
