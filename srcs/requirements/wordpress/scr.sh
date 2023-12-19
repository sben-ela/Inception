cd wordpress
cat /var/www/wordpress/wp-config-sample.php > wp-config.php

sed -i "s/database_name_here/wordpress/" wp-config.php 
sed -i "s/username_here/${DBUSER}/" wp-config.php
sed -i "s/password_here/${DBUSERPASS}/" wp-config.php
sed -i "s/localhost/database/" wp-config.php



wp user create ${USER} ${USEREMAIL} --role=author --user_pass=${USERPASS}  --allow-root
wp user create sben-ela test@gmail.com --role=author --user_pass=sben-ela/1337  --allow-root

wp core install --url=localhost --title=web-site --admin_user=${ADMIN} --admin_password=${ADMINPASS} --admin_email=${ADMINEMAIL} --allow-root

sed -i 's/listen = \/run\/php\/php7.3-fpm.sock/listen = 9000/g' /etc/php/7.3/fpm/pool.d/www.conf


php-fpm7.3 -F

# pass.123/1337
# mysql -h database -u user -ppass -D wordpress