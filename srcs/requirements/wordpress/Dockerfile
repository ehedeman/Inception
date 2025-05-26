FROM debian:bookworm

RUN apt update -y && apt upgrade -y && apt install -y \
    php-fpm     \
    php-mysqli  \
    curl

COPY ./tools/script.sh ./script.sh
RUN chmod 777 ./script.sh

RUN rm /etc/php/8.2/fpm/pool.d/www.conf
COPY ./tools/www.conf /etc/php/8.2/fpm/pool.d/www.conf

CMD ["./script.sh"]
