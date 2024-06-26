#!/usr/bin/bash

docker run --name extractor -d \
  -v /opt/traefik:/app/data \
  -v ${PWD}/certs:/app/certs \
  -v /var/run/docker.socket:/var/run/docker.socket \
  ghcr.io/estivador/traefik-certificate-extractor
