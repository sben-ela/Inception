sleep 10

cd wordpress

if [ -f "wp-config.php" ]; then
	echo  "WordPress is already installed."
else
    cat /var/www/wordpress/wp-config-sample.php > wp-config.php

    sed -i "s/database_name_here/${DBNAME}/" wp-config.php 
    sed -i "s/username_here/${DBUSER}/" wp-config.php
    sed -i "s/password_here/${DBUSERPASS}/" wp-config.php
    sed -i "s/localhost/${DBHOST}/" wp-config.php
fi



wp core install --url=localhost --title=web-site --admin_user=${ADMIN} --admin_password=${ADMINPASS} --admin_email=${ADMINEMAIL} --allow-root
wp user create ${USER} ${USEREMAIL} --role=author --user_pass=${USERPASS}  --allow-root

sed -i 's/listen = \/run\/php\/php8.2-fpm.sock/listen = 9000/g' /etc/php/8.2/fpm/pool.d/www.conf


php-fpm8.2 -F
