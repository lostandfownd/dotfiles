#!/usr/bin/bash
bat0=$(awk '{print $1}' /sys/class/power_supply/BAT0/power_now)
bat1=$(awk '{print $1}' /sys/class/power_supply/BAT1/power_now)
fake=$((bat0+bat1))
sum=$(echo $fake|awk '{print $1*10^-6}')
printf " %0.1fW" "$sum"
