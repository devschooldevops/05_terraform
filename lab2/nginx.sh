#!/bin/bash
# nginx.sh

# Update your system's package index
sudo apt-get update -y

# Install NGINX
sudo apt-get install nginx -y

# change the default index page
echo ${azurerm_resource_group.rg.name} > /var/www/html/index.nginx-debian.html

# Enable and start the NGINX service
sudo systemctl enable nginx
sudo systemctl start nginx