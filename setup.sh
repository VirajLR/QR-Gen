#!/bin/bash

Green=$'\e[1;32m'
Red=$'\e[1;31m'


pkg update -y && pkg upgrade -y

pip install pyqrcode

pip install pypng

echo "$Red Requirements are Successfully Installed"

echo ""

echo "$Green Please Run python generator.py"

echo ""

echo "$Red  *** Powered By Viraj LR ***"
