#!/bin/bash

sudo apt-add-repository ppa:brightbox/ruby-ng
sudo apt-get update -y && sudo apt-get upgrade -y

# install nginx
sudo apt-get install ruby2.5 ruby2.5-dev ruby-build -y
sudo apt-get install build-essential libgmp-dev libxml2 -y
sudo apt-get install nginx -y


# Install gems
sudo gem install bundler
sudo gem install rake
sudo gem install rails
