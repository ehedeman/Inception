#!bin/bash

openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/ehedeman.key -out /etc/ssl/certs/ehedeman.crt -subj="/C=DE/ST=Niedersachsen/L=Woflsburg/O=42Wob/OU=ehedeman/CN=ehedeman.42.fr"

echo "test"

nginx -g "daemon off;"