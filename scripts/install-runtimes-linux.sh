#!/bin/bash

# Installs pip3 and nodejs; not needed if these are both installed already

# install pip (python package manager)
curl --proto '=https' --tlsv1.2 -sSf https://bootstrap.pypa.io/get-pip.py | python3

# install nodejs
curl -sL https://deb.nodesource.com/setup_18.x | sudo -E bash - && sudo apt install nodejs
