#!/bin/bash
yum update -y
yum install -y httpd.x86_64
systemctl start httpd.service
systemctl enable httpd.service
sudo yum install -y git
git clone https://github.com/dormicha/gensis.git
# shellcheck disable=SC2164
cd gensis/
sudo mv information.html index.html
sudo cp index.html /var/www/html/