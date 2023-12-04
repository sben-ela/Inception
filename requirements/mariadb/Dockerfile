# Use a base image
FROM debian:buster

# Update and upgrade dependencies
RUN apt-get update -y && \
    apt-get upgrade -y

# Install MariaDB
RUN apt-get install -y mariadb-server

# Copy the custom configuration file
COPY conf/50-server.cnf /etc/mysql/mariadb.conf.d/50-server.cnf

# Start MySQL service
RUN service mysql start

# Create a script for database and user creation
# RUN echo "CREATE DATABASE IF NOT EXISTS \${SQL_DATABASE};" > /tmp/db_setup.sql && \
#     echo "CREATE USER IF NOT EXISTS \${SQL_USER}@'localhost' IDENTIFIED BY '\${SQL_PASSWORD}';" >> /tmp/db_setup.sql && \
#     echo "GRANT ALL PRIVILEGES ON \${SQL_DATABASE}.* TO \${SQL_USER}@'%' IDENTIFIED BY '\${SQL_PASSWORD}';" >> /tmp/db_setup.sql && \
#     echo "ALTER USER 'root'@'localhost' IDENTIFIED BY '\${SQL_ROOT_PASSWORD}';" >> /tmp/db_setup.sql && \
#     echo "FLUSH PRIVILEGES;" >> /tmp/db_setup.sql

# # Run the script
# RUN service mysql start && \
#     mysql < /tmp/db_setup.sql && \
#     service mysql stop

# Continue with the rest of the setup steps...
