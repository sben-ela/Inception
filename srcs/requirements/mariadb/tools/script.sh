iservice mariadb start

sleep 3


mariadb -e "CREATE DATABASE IF NOT EXISTS $DBNAME;"
mariadb -e "CREATE USER IF NOT EXISTS '$DBUSER'@'%' IDENTIFIED BY '$DBUSERPASS';"
mariadb -e "GRANT ALL PRIVILEGES ON \`$DBNAME\`.* TO '$DBUSER'@'%';"
mariadb -e "FLUSH PRIVILEGES;"

service mariadb stop

echo "database have been created..."

sleep 2

mysqld_safe
