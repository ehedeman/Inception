FROM debian:buster

RUN apt-get update -y; \
    apt-get install mariadb-server -y;

COPY ./tools/script.sh /tmp/script.sh

RUN chmod +x /tmp/script.sh


RUN echo "[mysqld]" >> /etc/mysql/mariadb.conf.d/50-server.cnf && \
    echo "socket = /var/run/mysqld/mysqld.sock" >> /etc/mysql/mariadb.conf.d/50-server.cnf && \
    echo "pid-file = /var/run/mysqld/mysqld.pid" >> /etc/mysql/mariadb.conf.d/50-server.cnf && \
    echo "bind-address = 0.0.0.0" >> /etc/mysql/mariadb.conf.d/50-server.cnf

ENTRYPOINT [ "bash", "/tmp/script.sh" ]

#CMD [ "/usr/bin/mysqld_safe" ]
