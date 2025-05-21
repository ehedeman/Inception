FROM debian:latest

RUN apt -y update && apt install -y nginx && apt install openssl -y

COPY ./tools/script.sh .
RUN chmod +x ./script.sh

RUN rm -f /etc/nginx/sites-available/default
COPY ./tools/default /etc/nginx/sites-available/default


#CMD ["nginx", "-g", "daemon off;"]
CMD [ "./script.sh" ]