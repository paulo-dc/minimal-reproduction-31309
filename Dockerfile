# syntax=docker/dockerfile:1
# https://hub.docker.com/_/alpine
FROM alpine:3.19.1

# renovate: datasource=repology depName=alpine_3_19/libcurl versioning=loose
ENV LIBCURL_VERSION="8.5.0-r0"

RUN apk update
RUN apk add libcurl=${LIBCURL_VERSION}
