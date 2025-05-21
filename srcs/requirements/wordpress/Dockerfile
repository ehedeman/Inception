FROM debian:latest

# RUN apt update && apt upgrade && apt install -y \
#     php-fpm     \
#     php-mysql  \
#     curl

RUN apt update -y 

RUN apt install php-fpm php-mysql -y

RUN apt install curl -y

COPY ./tools/script.sh ./script.sh
RUN chmod 777 ./script.sh

RUN rm /etc/php/8.2/fpm/pool.d/www.conf
COPY ./tools/www.conf /etc/php/8.2/fpm/pool.d/www.conf

CMD ["./script.sh"]