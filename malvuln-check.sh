#!/bin/bash
if [ "$1" != "" ]; then
    echo
    echo "The md5 hash of the file is: $(md5sum $1)"
    echo
    echo "Downloading the malware report if exist"
    echo
    wget http://malvuln.com/advisory/$(md5sum $1).txt
    else
        while read -p "Enter the file path:" input
        do
            printf -v input "$(eval echo "$input")"
            if [ "$input" != "" ]; then
                echo
                echo "The md5 hash of the file is: $(md5sum $input)"
                echo
                echo "Downloading the malware report if exist"
                echo
                wget http://malvuln.com/advisory/$(md5sum $input).txt
                break
            else
                echo 'Please provide the file path!'
                continue
            fi
        done
fi
