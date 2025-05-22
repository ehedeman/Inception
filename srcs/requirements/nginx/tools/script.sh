#!bin/bash

openssl req -x509 -newkey rsa:2048 -keyout /etc/ssl/private/ehedeman.pem -out /etc/ssl/certs/ehedeman.pem -sha256 -days 3650 -nodes -subj "/C=DE/ST=Niedersachsen/L=Woflsburg/O=42Wob/OU=ehedeman/CN=ehedeman.42.fr"

echo "test"

nginx -g "daemon off;"