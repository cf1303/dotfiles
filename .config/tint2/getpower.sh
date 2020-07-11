#!/bin/sh

batno="2"
power=$(cat /sys/class/power_supply/BAT1/capacity)
state=$(cat /sys/class/power_supply/BAT1/status)


if [ "$state" = "Unknown" ]; then
	batno="1"
	state=$(cat /sys/class/power_supply/BAT0/status)
	power=$(cat /sys/class/power_supply/BAT0/capacity)
fi

echo BT$batno: $power% "("$state")"
