#!/bin/bash
sudo apt update -y
echo installing web server
sudo apt install nginx -y
echo installing json parser
sudo apt install jq -y
echo removing default files
sudo rm -rf /var/www/html
echo starting select script
bash ./select.sh
echo removing default config
sudo rm -rf /etc/nginx/sites-available/default
echo patching config
mv patch default
sudo cp default /etc/nginx/sites-available/
echo done!! 
echo reloading config
sudo nginx
echo now press the ports button
echo press the globe icon next to port 8000
echo if no ports appear then press "forward a port" and enter 8000
