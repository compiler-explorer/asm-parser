#!/bin/sh

sudo apt install python3 python3-pip
sudo pip3 install conan setuptools

conan profile update settings.compiler.libcxx=libstdc++11 default
