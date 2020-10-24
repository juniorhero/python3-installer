#!/usr/bin/env bash
#script by Athul Jayaram www.athul.co
sudo apt update
sudo apt install build-essential zlib1g-dev libncurses5-dev libgdbm-dev libnss3-dev libssl-dev libsqlite3-dev libreadline-dev libffi-dev curl libbz2-dev
curl -O https://www.python.org/ftp/python/3.9.0/Python-3.9.0.tar.xz
tar -xf Python-3.9.0.tar.xz
cd Python-3.9.0
./configure --enable-optimizations --enable-loadable-sqlite-extensions
make -j 4
sudo make altinstall
python3.9 --version
sudo rm /usr/bin/python3
sudo ln -s /usr/local/bin/python3.9 /usr/bin/python3
python3 --version




