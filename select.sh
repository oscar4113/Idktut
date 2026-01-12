#!/bin/bash
. parse.sh
echo downloading game
git clone "$fin" game
echo uploading new site
sudo rm -rf /var/www/html
sudo mv game/ /var/www/html/
echo site installed!