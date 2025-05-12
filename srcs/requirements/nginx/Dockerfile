FROM debian:buster

RUN apt update -y; \
    apt upgrade -y; \
    apt install -y nginx;   \
    apt install openssl -y;

COPY ./tools/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh

ENTRYPOINT ["/tmp/script.sh"]