FROM debian:12

RUN apt-get update -y && \
    apt-get upgrade -y


RUN apt-get install -y mariadb-server

COPY tools/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY tools/script.sh /script.sh
RUN chmod +x /script.sh

CMD ./script.sh
