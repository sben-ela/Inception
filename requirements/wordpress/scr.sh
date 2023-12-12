wp user create ${USER} test@gmail.com  --role=author --user_pass=${USERPASS} --path=./wordpress --allow-root
wp user create ${ADMIN} admin@gmail.com  --role=author --user_pass=${ADMINPASS} --path=./wordpress --allow-root

wp config create --dbname=wordpress --dbuser=${USER} --dbpass=${USERPASS} --dbhost=localhost --dbprefix=wp_


sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf

php-fpm7.3 -F


# list users
# wp user list --fields=ID,user_login --path=./wordpress --allow-root
# remove user
#  wp user delete <user-id> --path=./wordpress --allow-root