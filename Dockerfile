FROM mback2k/buildbot:latest

USER root

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        build-essential automake autoconf intltool \
        make libtool-bin pkg-config curl wget unzip \
        binutils-mingw-w64 mingw-w64 mingw-w64-tools \
        zlib1g-dev libxml2-dev libidn11-dev libidn2-0-dev && \
    apt-get clean

USER buildbot
