service mysql start

sleep 5

mysql -u root -e "CREATE DATABASE IF NOT EXISTS wordpress;"
mysql -u root -e  "CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'pass';"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress.* TO 'user'@'%';FLUSH PRIVILEGES;"