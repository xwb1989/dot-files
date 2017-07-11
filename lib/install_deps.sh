#!/bin/bash

#File: install_deps.sh

if hash pip 2> /dev/null; then
    echo "pip is already installed"
else
    sudo easy_intall pip
fi

sudo pip install pyperclip #clipboard access for python
