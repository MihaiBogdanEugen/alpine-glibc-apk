FROM alpine:edge
ADD repositories /etc/apk/repositories
RUN apk -U add alpine-sdk
RUN mkdir -p /var/cache/distfiles && \ 
    mkdir -p /home/packager/alpine-glibc-apk/ && \
    adduser -D packager && \ 
    addgroup packager abuild && \ 
    chgrp abuild /var/cache/distfiles && \ 
    chmod g+w /var/cache/distfiles && \
    echo "packager    ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
ADD setup-keys.sh /home/packager/bin/setup-keys.sh
WORKDIR /work
USER packager