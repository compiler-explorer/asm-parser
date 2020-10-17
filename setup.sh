#!/bin/sh

sudo -H apt install python3 python3-pip python3-setuptools
sudo -H pip3 install conan

conan profile update settings.compiler.libcxx=libstdc++11 default
