FROM debian:buster

RUN apt update -y && apt upgrade -y && apt install -y nginx openssl
RUN apt install curl
#    apt install openssl -y;
#debug
#RUN apt install curl;

COPY ./tools/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh
RUN echo "127.0.0.1 ehedeman.42.fr" >> /etc/hosts
RUN chmod 664 /etc/ssl/certs/nginx-selfsigned.crt
ENTRYPOINT ["/tmp/script.sh"]
