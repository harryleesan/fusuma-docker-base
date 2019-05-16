# fusuma-docker-base

## Introduction
This is a naive implementation of getting **fusuma** working merely through
docker.

## Usage

1. From the parent directory with the `slides` directory (intended to run
   **fusuma**)

   ```bash
   docker run -d -v $(pwd):/base/slides -p 8080:8080 halosan/fusuma-base:latest
   ```
