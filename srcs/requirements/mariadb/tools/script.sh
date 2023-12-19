service mysql start

sleep 2

mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql -u root -e  "CREATE USER IF NOT EXISTS '${DBUSER}'@'%' IDENTIFIED BY '${DBUSERPASS}';"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO '${DBUSER}'@'%';FLUSH PRIVILEGES;"


mysqladmin -u root shutdown

echo "database have been created..."

mysqld_safe


# https://youtu.be/xiUTqnI6xk8?si=Jw3DDYc0JuNJbTGE