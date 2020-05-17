# fusuma-docker-base

## Introduction
This is a naive implementation of getting **fusuma** working through docker.

![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/halosan/fusuma.svg?style=flat-square)

## Usage

### TL;DR

From the parent directory with the `slides` directory (intended to run **fusuma**)

  ```bash
  docker run -d -p 8080:8080 \
  -v $(pwd)/slides:/base/slides \
  -v $(pwd)/images:/base/images \
  -v $(pwd)/.fusumarc.yml:/base/.fusumarc.yml \
  -v $(pwd)/package.json:/base/package.json \
  halosan/fusuma:latest
  ```

  1. Mount **all** the folders that you will need to `/base/`
  2. To get the `.fusumarc.yml`, see the section below.


### To get the default `.fusumarc.yml`

  ```bash
  docker run -d halosan/fusuma:latest
  docker ps # to get the container name
  docker cp frosty_aryabhata:/base/.fusumarc.yml .
  docker stop frosty_aryabhata
  docker kill frosty_aryabhata
  # Now you can run the TL;DR command
  ```

## Build

### To build a specific version of fusuma:

```bash
docker build -t halosan/fusuma --build-arg version=1.15.1 .
```

