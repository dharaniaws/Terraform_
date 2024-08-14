#!/bin/bash
yum -y install git
yum -y install httpd
sudo systemctl start httpd
sudo systemctl enable httpd
sudo git clone https://github.com/dharaniaws/Mario.git /var/www/html/
