FROM ubuntu:18.04
MAINTAINER KUDO Shunsuke

RUN apt update && apt upgrade -y && DEBIAN_FRONTEND=noninteractive apt install -y \
    vim \
    wget \
    curl \
    sudo \
    iproute2 \
    supervisor \
    && rm -rf /var/lib/apt/lists/*

COPY entrypoint.sh /sbin/entrypoint.sh
RUN chmod u+x /sbin/entrypoint.sh

ENTRYPOINT ["/sbin/entrypoint.sh"]
