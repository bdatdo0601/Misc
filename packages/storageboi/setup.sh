#!/bin/zsh

cp ./droppyservice /etc/init.d/droppy
cp -r config/ /srv/droppy/config/
cp ./postgresqlservice /etc/init.d/postgres
chmod +x /etc/init.d/droppy
chmod +x /etc/init.d/postgres
