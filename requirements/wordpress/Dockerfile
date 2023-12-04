FROM debian:buster

RUN apt update && apt upgrade -y \
    && apt install php7.3 php-fpm php-mysql wget unzip curl -y

# RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# RUN chmod +x wp-cli.phar && mv wp-cli.phar /usr/local/bin/wp

#after running the mariadb
# RUN wp config create --dbname=<test> --dbuser=<oidboufk> --dbpass=<root> --dbhost=<oidboufkHost>


WORKDIR /var/www/

RUN wget https://wordpress.org/latest.zip && unzip latest.zip&& rm -rf  latest.zip
RUN mkdir /run/php/ && touch /run/php/php7.3-fpm.pid
RUN chmod +w /run/php/php7.3-fpm.pid

# COPY ./fpm.conf  /etc/php/7.3/fpm/php-fpm.conf
# COPY ./www.conf /etc/php/7.3/fpm/pool.d/www.conf

COPY scr.sh /
CMD ["sh", "/scr.sh"]