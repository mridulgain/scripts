#!/bin/bash
# A script to deactivate input from laptop's internal keyboard. This is useful when your laptop keyboard is malfunctioning.
id=$(xinput|grep "AT Translated Set 2 keyboard"|awk '{print $7}')
echo "Floating xinput for ${id: -2}"
xinput float ${id: -2}
