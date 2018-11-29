#!/bin/bash

echo "==============================="
echo "Installing PHP 7.2"
echo "==============================="
sudo yum install php72

echo "==============================="
echo "Installing PHP 7.2 additional commonly used php packages"
echo "==============================="
sudo yum install php72-pdo
sudo yum install php72-gd
sudo yum install php72-imap
sudo yum install php72-mbstring
sudo yum install php72-mysqlnd
sudo yum install php72-opcache
sudo yum install php72-pecl-apcu
sudo yum install php72-pecl-memcached
sudo yum install php72-soap

echo "==============================="
echo "Linking PHP 7.2"
echo "==============================="
sudo ln -sf /etc/httpd/conf.d/php-conf.7.2 /etc/alternatives/php.conf
sudo ln -sf /etc/httpd/conf.modules.d/15-php-conf.7.2 /etc/alternatives/10-php.conf

echo "==============================="
echo "Choose PHP 7.2 as an Alternative"
echo "==============================="
sudo alternatives --config php
