#! /bin/bash
sudo yum -y install httpd
sudo echo "Hello, Webserver is created using TF" > /var/www/html/index.html
sudo systemctl enable httpd
sudo systemctl start httpd
