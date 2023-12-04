# Use a base image with a minimal OS
FROM debian:buster

# Install NGINX and OpenSSL
RUN apt-get update && \
    apt-get install -y nginx openssl && \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /run/nginx

# Set the working directory
WORKDIR /etc/nginx/certs

# Generate SSL key and certificate
RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt -subj "/C=US/ST=State/L=City/O=Organization/CN=localhost"

# Copy NGINX configuration
COPY conf/default /etc/nginx/sites-enabled/default

# COPY ./conf/index.html  /usr/share/nginx/html/

# Command to run on container start
CMD ["nginx", "-g", "daemon off;"]

