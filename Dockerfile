FROM ghcr.io/linuxserver/baseimage-alpine-nginx:3.15

# set version label
ARG BUILD_DATE
ARG VERSION
ARG LIBRESPEED_RELEASE
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"
LABEL maintainer="aptalca"

RUN \
  echo "**** install packages ****" && \
  apk add --no-cache \
    curl \
    php8-ctype \
    php8-gd \
    php8-mysqli \
    php8-pdo_pgsql \
    php8-pdo_sqlite && \
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
  echo "**** cleanup ****" && \
  rm -rf \
    /tmp/*

# add local files
COPY root/ /

# ports and volumes
EXPOSE 80 443
