FROM        gliderlabs/alpine:3.2
MAINTAINER  Jonas Finnemann Jensen <jopsen@gmail.com>

# Install dependencies
RUN         apk-install docker curl ca-certificates

# Install entrypoint.sh
COPY        . /opt/docker-image-builder/
WORKDIR     /opt/docker-image-builder
RUN         chmod +x ./entrypoint.sh

# Warn people against building from this image, that is not the intend.
ONBUILD     echo "If you build from this image you doing something wrong." \
            exit 1;

# Default entry-point starts docker daemon and validating proxy
ENTRYPOINT  ./entrypoint.sh