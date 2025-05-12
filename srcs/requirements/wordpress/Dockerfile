FROM debian:buster
RUN apt-get -y update;  \
    apt-get -y upgrade; \
    apt update -y;  \
    apt upgrade -y; \
    apt install php-fpm php-mysql -y;   \
    apt install curl -y;

COPY ./tools/script.sh /
COPY ./tools/wp-config.php /

RUN chmod +x script.sh

ENTRYPOINT [ "bash", "script.sh" ]
