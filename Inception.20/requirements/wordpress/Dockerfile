FROM debian:latest

RUN apt update && apt upgrade && apt install -y php-fpm
COPY ./tools/script.sh .

RUN rm -f /etc/php/8.2/fpm/pool.d/www.conf
COPY ./www.conf /etc/php/8.2/fpm/pool.d/www.conf
RUN chmod +x ./script.sh
#ENTRYPOINT [ "./script.sh" ]

CMD ["./script.sh"]