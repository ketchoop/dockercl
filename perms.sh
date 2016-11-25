#!/bin/bash
declare -a whitelist
declare -a blacklist

IFS=', '

function is_in_perm_list() {
    local comm=$1
    shift
    local arr=($@)

    if [ "$arr" = "\/" ]
    then
        return 0
    elif [ -z $arr ]
    then
        return 1
    fi

    for i in ${arr[@]}
    do
        if (echo $comm | grep -wq "^\s*$i")
        then
            return 0
        fi
    done

    return 1
}

if [ -z $1 ]
then
    whitelist="\/"
    blacklist=""
else
    whitelist=$(grep "white-list:" $1 | sed -ne 's/white-list:\(.*\)/\1/p')
    blacklist=$(grep "black-list:" $1 | sed -ne 's/black-list:\(.*\)/\1/p')
fi

