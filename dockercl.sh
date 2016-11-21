#!/bin/bash

echo ''
echo '                        ##         . '
echo '                  ## ## ##        == '
echo '               ## ## ## ##       === '
echo '           /"""""""""""""""""\___/ === '
echo '      ~~~ {~~ ~~~~ ~~~ ~~~~ ~~~ ~ /  ===- ~~~ '
echo '           \______ o           __/ '
echo '             \    \         __/ '
echo '              \____\_______/ '
echo ''

echo "  _____             _                 _ "
echo " |  __ \           | |               | |"
echo " | |  | | ___   ___| | _____ _ __ ___| |"
echo " | |  | |/ _ \ / __| |/ / _ \ '__/ __| |"
echo " | |__| | (_) | (__|   <  __/ | | (__| |"
echo " |_____/ \___/ \___|_|\_\___|_|  \___|_|"
echo ""

while true
do
    read -r -p $'\e[94mdocker> \e[0m' command;
    docker $command; 
done
