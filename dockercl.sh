#!/bin/bash
while true
do
    read -r -p $'\e[94mdocker> \e[0m' command;
    docker $command; 
done
