FROM debian:buster

RUN apt-get update -y; \
    apt-get install mariadb-server -y;

COPY ./tools/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh


RUN echo -e "\n[mysqld]\nsocket = /var/run/mysqld/mysqld.sock\npid-file = /var/run/mysqld/mysqld.pid\nbind-adress = 0.0.0.0\n" >> /etc/mysql/mariadb.conf.d/50-server.cnf
ENTRYPOINT [ "bash", "/tmp/script.sh" ]

#CMD [ "/usr/bin/mysqld_safe" ]
