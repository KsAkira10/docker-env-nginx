# docker-env-nginx

## How to set env

1. In `./docker-entrypoint.sh` register manually your variables of environment to be replaced 
when execute entrypoint command in `Dockerfile`.

2. Then declare your varibles in `nginx/default.conf` as you wish.
