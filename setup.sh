#!/bin/sh

sudo -H apt install -y python3 python3-pip python3-setuptools g++-9 patchelf
sudo -H pip3 install conan

# if conan v1:
# conan profile new default --detect
# conan profile update settings.compiler.libcxx=libstdc++11 default

# if conan v2:
conan profile detect
