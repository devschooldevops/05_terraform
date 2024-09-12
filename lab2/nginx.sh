#!/bin/bash
# nginx.sh

# Update your system's package index
sudo apt-get update -y

# Install NGINX
sudo apt-get install nginx -y

#echo "Merge nginxu'!" > /var/www/html/index.nginx-debian.html
echo "<br>Resource group is: ${rg}<br>" > /var/www/html/index.nginx-debian.html
echo "<br>My name is: `hostname`<br>" >> /var/www/html/index.nginx-debian.html


# Enable and start the NGINX service
sudo systemctl enable nginx
sudo systemctl start nginx