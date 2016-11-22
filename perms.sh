#!/bin/bash
declare -a whitelist
declare -a blacklist

IFS=', '

function is_in_perm_list() {
    local comm=$1
    shift
    local arr=$@

    for i in ${arr[@]}
    do
        if echo $comm | grep -wq $i
        then
            return 0
        fi    
    done

    return 1
}

whitelist=$(grep "white-list:" perms | sed -ne 's/white-list:\(.*\)/\1/p')

blacklist=$(grep "black-list:" perms | sed -ne 's/black-list:\(.*\)/\1/p')

