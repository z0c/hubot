#!/bin/bash

apt-get -y update

dpkg -n npm &>/dev/null || {
  apt-get -y install nodejs npm
  ln -s /usr/bin/nodejs /usr/bin/node
}

command -v hubot &>/dev/null || {
  npm install -g hubot coffee-script
}
