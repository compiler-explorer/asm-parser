#!/bin/sh

python3 -m venv .venv

# sudo -H apt install -y python3 python3-pip python3-setuptools patchelf
.venv/bin/pip3 install conan

.venv/bin/conan profile detect

# Modify the Conan configuration file to retrieve packages with standard C++20
sed -i 's/compiler\.cppstd=.*/compiler.cppstd=20/g' ~/.conan2/profiles/default

.venv/bin/conan install --build=fmt/11.0.0 .
