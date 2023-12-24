FROM debian:12

RUN apt-get update && \
    apt-get install -y nginx openssl

RUN mkdir -p /var/www/wordpress

WORKDIR /etc/nginx/certs

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"

COPY conf/nginx.conf /etc/nginx/sites-enabled/default

CMD ["nginx", "-g", "daemon off;"]
