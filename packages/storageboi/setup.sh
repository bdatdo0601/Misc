#!/bin/zsh

# setup droppy
cp ./droppyservice /etc/init.d/droppy
cp -r config/ /srv/droppy/config/

chmod +x /etc/init.d/droppy

# setup postgres
apk add --update postgresql

# setup hasura
apk add --update docker

# setup nginx
apk add --update nginx
cp nginx.conf /etc/nginx/nginx.conf

