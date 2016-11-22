#!/bin/bash

. ./perms.sh $1

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

bind -u complete 2> /dev/null

while IFS="" read -r -e -p $'\e[94mdocker> \e[0m' command
do
    if (is_in_perm_list $command $whitelist) && ! (is_in_perm_list $command $blacklist)
    then
        docker $command; 
    else
        echo -e "\033[0;91mCommand is not allowed\033[0m"
    fi
    history -s $command;
done
