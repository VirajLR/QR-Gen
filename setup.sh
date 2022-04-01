#!/bin/bash

spin () {

local pid=$!
local delay=0.25
local spinner=( '█■■■■' '■█■■■' '■■█■■' '■■■█■' '■■■■█' )

while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do

for i in "${spinner[@]}"
do
        tput civis
        echo -ne "\033[34m\r[*] Please wait.........\e[33m[\033[32m$i\033[33m]\0>
        sleep $delay
        printf "\b\b\b\b\b\b\b\b";
done
done
printf "   \b\b\b\b\b"
tput cnorm
printf "\e[1;33m [Done]\e[0m";
echo "";

}

pkg update -y && pkg upgrade -y &> /dev/null & spin;

pip install pyqrcode

pip install pypng

echo "Done"
