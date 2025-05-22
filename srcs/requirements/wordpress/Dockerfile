FROM debian:buster

RUN apt update -y && apt upgrade -y && apt install -y \
    php-fpm     \
    php-mysql   \
    curl

# RUN apt update -y 

# RUN apt install php-fpm php-mysql -y

# RUN apt install curl -y

COPY ./tools/script.sh ./script.sh
RUN chmod 777 ./script.sh

RUN rm /etc/php/7.3/fpm/pool.d/www.conf
COPY ./tools/www.conf /etc/php/7.3/fpm/pool.d/www.conf

CMD ["./script.sh"]