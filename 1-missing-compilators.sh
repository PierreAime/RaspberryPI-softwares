#!/bin/sh

sudo apt-get update

echo "Setup missing compilators and protocols"

sudo apt-get update
sudo apt-get install -y cmake
sudo apt-get install -y valac
sudo apt-get install -y python-dev
sudo apt-get install -y intltool

sudo apt-get install -y git
