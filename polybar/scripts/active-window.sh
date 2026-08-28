#!/bin/bash

# Get the ID of the active window
window_id=$(xdotool getactivewindow 2>/dev/null)

if [ -z "$window_id" ]; then
    # If no active window ID is found, set default name
    echo "AntiXbox"
else
    # Get the WM_CLASS property of the active window
    wm_class=$(xprop -id $window_id WM_CLASS 2>/dev/null)

    if [ -z "$wm_class" ]; then
        # If no WM_CLASS is found, set default name
        echo "AntiXbox"
    else
        # Extract the application name from the WM_CLASS property
        app_name=$(echo $wm_class | awk -F '"' '{print $4}')

        # Check for specific cases
        if [ "$app_name" == "Zzzfm" ]; then
            echo "AntiXbox"
        else
            echo "$app_name"
        fi
    fi
fi

