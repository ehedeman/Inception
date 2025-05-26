FROM debian:bookworm

RUN apt update -y && apt upgrade -y && apt install -y \
    nginx   \
    openssl

COPY ./tools/script.sh .
RUN chmod +x ./script.sh

RUN rm -f /etc/nginx/sites-available/default
COPY ./conf/default /etc/nginx/sites-available/default


#CMD ["nginx", "-g", "daemon off;"]
CMD [ "./script.sh" ]