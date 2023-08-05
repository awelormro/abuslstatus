
#!/bin/bash

# Get battery status and percentage
status=$(cat /sys/class/power_supply/BAT0/status)
percent=$(cat /sys/class/power_supply/BAT0/capacity)

# Set icons based on battery level
if [ "$status" = "Charging" ]; then
    icon=""  # Icon when charging
elif [ "$percent" -ge 90 ]; then
    icon="󰁹"  # Full battery icon
elif [ "$percent" -ge 70 ]; then
    icon="󰂀"  # Almost full battery icon
elif [ "$percent" -ge 40 ]; then
    icon="󰁽"  # Medium battery icon
elif [ "$percent" -ge 10 ]; then
    icon="󰁻"  # Low battery icon
else
    icon="󰁺"  # Very low battery icon
fi

# Print the result
echo "$icon "
