# syntax=docker/dockerfile:1

FROM ghcr.io/linuxserver/baseimage-alpine-nginx:3.24

# set version label
ARG BUILD_DATE
ARG VERSION
ARG LIBRESPEED_RELEASE
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="aptalca"

RUN \
  echo "**** install packages ****" && \
  apk add --no-cache \
    php85-gd \
    php85-pdo_mysql \
    php85-pdo_pgsql \
    php85-pdo_sqlite && \
  echo "**** install librespeed ****" && \
  if [ -z ${LIBRESPEED_RELEASE+x} ]; then \
    LIBRESPEED_RELEASE=$(curl -sX GET "https://api.github.com/repos/librespeed/speedtest/releases/latest" \
    | awk '/tag_name/{print $4;exit}' FS='[""]'); \
  fi && \
  mkdir -p \
    /app/www/public && \
  curl -o \
    /tmp/librespeed.tar.gz -L \
    "https://github.com/librespeed/speedtest/archive/${LIBRESPEED_RELEASE}.tar.gz" && \
  tar xf \
    /tmp/librespeed.tar.gz -C \
    /app/www/public --strip-components=1 && \
  mkdir -p /defaults/www && \
  cp /app/www/public/index.html /defaults/www/ && \
  mv /app/www/public/index.html /app/www/public/index.html.bak && \
  mv /app/www/public/config.json /app/www/public/config.json.bak && \
  mv /app/www/public/frontend/settings.json /app/www/public/frontend/settings.json.bak && \
  mv /app/www/public/frontend/server-list.json /app/www/public/frontend/server-list.json.bak && \
  rm -rf /app/www/public/frontend/index.html && \
  cp -a /app/www/public/frontend/* /app/www/public/ && \
  printf "Linuxserver.io version: ${VERSION}\nBuild-date: ${BUILD_DATE}" > /build_version && \
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/*

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80 443
VOLUME /config
