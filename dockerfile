FROM ubuntu:18.04.2

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y nginx mysql-server && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 80 3306

CMD service mysql start && nginx -g 'daemon off;'

