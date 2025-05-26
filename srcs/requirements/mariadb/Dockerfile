FROM debian:bookworm

RUN apt update -y && apt upgrade -y && apt install -y mariadb-server

# RUN rm -f /etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

COPY ./conf/init.sql /etc/mysql/init.sql
# RUN chmod 777 /etc/mysql/init.sql
#might already exist

COPY ./tools/script.sh ./script.sh
RUN chmod +x ./script.sh

CMD ["./script.sh"]