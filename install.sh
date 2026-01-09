sudo apt update -y
echo installing web server
sudo apt install nginx -y
echo removing default files
sudo rm -rf /var/www/html
echo downloading new site
git clone https://github.com/Joe-The-Chicken/polytrack polly/
echo uploading new site
sudo mv polly/ /var/www/html/
echo site installed! 
sudo rm -rf /etc/nginx/sites-available/default
echo patching config
mv patch default
sudo mv default /etc/nginx/sites-available/
echo done!! 
echo reloading config
sudo nginx
echo now press the ports button
echo press the globe icon next to port 8000
