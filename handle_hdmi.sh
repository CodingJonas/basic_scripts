#!/bin/bash

intern=eDP1
extern=HDMI1
HDMI_STATUS="$(cat /sys/class/drm/card0-HDMI-A-1/status)"

if [ "${HDMI_STATUS}" = connected ]; then
    xrandr --output "$extern" --auto --right-of "$intern"
else
    xrandr --output "$extern" --off
fi

exit 0
