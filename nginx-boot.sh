#!/bin/bash

# Check for variables
export WORKER_CONNECTIONS=${WORKER_CONNECTIONS:-1024}
export HTTP_PORT=${HTTP_PORT:-80}
export REDIRECT=${REDIRECT:-https\:\/\/\$host}
export NGINX_CONF=/etc/nginx/mushed.conf

# Build config
cat <<EOF > $NGINX_CONF
user root;

events {
    worker_connections $WORKER_CONNECTIONS;
}

http {
    server {
        listen $HTTP_PORT;
        rewrite ^(.*) $REDIRECT\$1 permanent;
    }
}

EOF

cat $NGINX_CONF

chown -R root:root /var/lib/nginx

exec nginx -c $NGINX_CONF -g "daemon off;"
