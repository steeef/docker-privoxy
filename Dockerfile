FROM debian:buster-slim
LABEL maintainer="stephen@stp5.net"

RUN apt-get update \
  && apt-get -y install --no-install-recommends privoxy \
  && apt-get clean \
  && rm -rf /var/lib/apt/lists/*

VOLUME /etc/privoxy

EXPOSE 8118

USER privoxy

CMD privoxy --no-daemon /etc/privoxy/config
