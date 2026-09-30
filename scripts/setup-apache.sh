#!/bin/bash

# Update packages
sudo dnf update -y

# Install Apache
sudo dnf install httpd -y

# Start Apache
sudo systemctl start httpd

# Enable Apache on system boot
sudo systemctl enable httpd

# Deploy website
sudo cp index.html /var/www/html/index.html

# Restart Apache
sudo systemctl restart httpd

echo "Apache installation and website deployment completed."