FROM alpine:3.7

RUN apk -U upgrade --update && \
    apk add curl && \
    apk add ttf-dejavu && \
    apk add iperf3 && \
    apk add bash

RUN apk add --no-cache --update libgcc libstdc++
COPY dist/usr/sbin/zerotier-one /zerotier-one
RUN chmod 0755 /zerotier-one && ln -sf /zerotier-one /zerotier-cli && ln -sf /zerotier-one /zeroti$


COPY startup.sh /opt/startup.sh
ENTRYPOINT /opt/startup.sh

