FROM debian:12

RUN apt update && apt upgrade -y \
    && apt install php-fpm php-mysql wget unzip curl -y

WORKDIR /var/www/

RUN mkdir -p /var/www/wordpress

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

RUN wget https://wordpress.org/latest.zip && unzip latest.zip && rm -rf  latest.zip
COPY tools/scr.sh /
RUN chmod +x /scr.sh
CMD ["bash", "/scr.sh"]