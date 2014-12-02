#!/bin/bash

apt-get -y update

dpkg -n npm &>/dev/null || {
  apt-get -y install nodejs npm
  ln -s /usr/bin/nodejs /usr/bin/node
}

command -v yo &>/dev/null || {
  sudo npm install -g yo generator-hubot
}

command -v hubot &>/dev/null || {
  sudo npm install -g hubot coffee-script
}

dpkg -n libicu-dev &>/dev/null || {
  apt-get -y install libexpat1-dev libicu-dev
}
