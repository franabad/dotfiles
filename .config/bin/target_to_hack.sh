#!/bin/bash

ip_address=$(cat /home/fran/.config/bin/target/target.txt | awk '{print $1}')
machine_name=$(cat /home/fran/.config/bin/target/target.txt | awk '{print $2}')


if [ $ip_address ] && [ $machine_name ]; then
	echo "%{F#e51d0b}什 %{F#ffffff}$ip_address%{u-} - $machine_name"
else
	echo "${F#e51d0b} %{u-}%{F#ffffff} No target"
fi
