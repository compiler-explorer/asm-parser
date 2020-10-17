#!/bin/sh

sudo -H apt install python3 python3-pip
sudo -H pip3 install conan setuptools

conan profile update settings.compiler.libcxx=libstdc++11 default
