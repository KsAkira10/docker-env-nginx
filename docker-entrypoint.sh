#!/bin/sh
set -e

cp /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.template

envsubst '$NGINX_PORT $NGINX_SERVER_NAME $NGINX_UPSTREAM_HTTP_ADDRESS $NGINX_CLIENT_MAX_BODY_SIZE' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

exec "$@"
