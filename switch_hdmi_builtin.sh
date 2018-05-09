#!/bin/bash

hdmi_sound=hdmi-stereo-extra1
builtin_sound=analog-stereo

CURRENT_PROFILE=$(pacmd list-cards | grep "active profile" | cut -d ' ' -f 3-)

if [ "$CURRENT_PROFILE" = "<output:$builtin_sound>" ]; then
    pacmd set-card-profile 0 output:$hdmi_sound
else
    pacmd set-card-profile 0 output:$builtin_sound
fi
