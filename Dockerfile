# syntax=docker/dockerfile:1
# https://hub.docker.com/_/alpine
FROM alpine:3.20.3

# renovate: datasource=repology depName=alpine_3_20/libcurl versioning=loose
ENV LIBCURL_VERSION="8.9.1-r0"

RUN apk update
RUN apk add libcurl=${LIBCURL_VERSION}
