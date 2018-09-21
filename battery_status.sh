#!/bin/bash
BAT=/sys/class/power_supply/BAT0
energy_now=$(cat $BAT/charge_now)
energy_full=$(cat $BAT/charge_full)

status=$(cat $BAT/status)

percent=$(echo "scale=4; ($energy_now/$energy_full) * 100" | bc)

case "$status" in
  "Charging")
	  status="C"
    ;;
  "Discharging")
	  status="D"
    ;;
  *)
    time=0
    ;;
esac

echo $status;
