FROM debian:buster

RUN apt-get update -y && \
    apt-get upgrade -y

RUN apt-get install -y mariadb-server

COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf
COPY script.sh /script.sh
# RUN service mysql start
RUN chmod +x script.sh

CMD ./script.sh