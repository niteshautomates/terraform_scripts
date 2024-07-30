#!/bin/bash
  sudo apt-get update -y
  sudo apt-get install nginx -y
  sudo echo "FIRST NGINX SERVER Configuration using Terraform" > /var/www/html/index.nginx-debian.html