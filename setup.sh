#!/bin/sh

sudo -H apt install -y python3 python3-pip python3-setuptools g++-8
sudo -H pip3 install conan

#conan profile update settings.compiler.libcxx=libstdc++11 default
