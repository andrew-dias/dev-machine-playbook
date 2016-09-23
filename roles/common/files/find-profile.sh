#!/bin/bash

IFS=$'\n'

output=no
profiles=($(dconf read /org/gnome/terminal/legacy/profiles:/list | tr "'" '"' | jq '.[]'))

for i in "${profiles[@]}"
do
        pname=$(dconf read /org/gnome/terminal/legacy/profiles:/:${i:1:-1}/visible-name)

        if [ "${pname:1:-1}" = "$1" ]
        then
                output=yes
		break
        fi
done

echo -n $output

