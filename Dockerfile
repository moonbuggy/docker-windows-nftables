# syntax = docker/dockerfile:1.4.0

ARG SOURCE_TAG="latest"
ARG FROM_IMAGE="dockurr/windows:${SOURCE_TAG}"
ARG BUILDPLATFORM="linux/amd64"

FROM --platform="${BUILDPLATFORM}" "${FROM_IMAGE}"

RUN set -eu \
  && apt-get update \
  && apt-get --no-install-recommends -y install nftables \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY --chmod=755 ./src /run/
