# fusuma-docker-base

## Introduction
This is a naive implementation of getting **fusuma** working through docker.

## Usage

### TL;DR

From the parent directory with the `slides` directory (intended to run **fusuma**)

  ```bash
  docker run -d -p 8080:8080 \
  -v $(pwd)/slides:/base/slides \
  -v $(pwd)/.fusumarc.yml:/base/.fusumarc.yml \
  halosan/fusuma:latest
  ```

To get the `.fusumarc.yml`, check the section below.


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
docker build -t halosan/fusuma --build-arg version=1.1.0 .
```

