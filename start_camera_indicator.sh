#!/usr/bin/env sh
log stream | awk -v turn_on="$turn_on" '/"VDCAssistant_Power_State" = On;/ {system("./turn_on_light.sh") } /"VDCAssistant_Power_State" = Off;/ { system("./turn_off_light.sh") }'