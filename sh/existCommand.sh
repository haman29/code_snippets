#!/bin/sh

command_list="ls hoge cd fuga"
for command in ${command_list}
do
    if [ -x "`which ${command}`" ]; then
        echo "${command} Found"
    else
        echo "${command} Not Found"
    fi
done
# [result]
# ls Found
# hoge Not Found
# cd Found
# fuga Not Found
