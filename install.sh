// polly trck installer by schoolwiki
echo installing web server
sudo apt install nginx -y
echo removing default files
sudo rm -rf /var/www/html
echo uploading new site
sudo mv polly/ /var/www/html/
echo site installed! 
sudo rm -rf /etc/nginx/sites-avaliable/default
echo patching config
sudo mv patch /etc/nginx/sites-avaliable/default
echo done!! 
echo reloading config
sudo nginx
echo now press the ports button
echo press the globe icon next to port 8000