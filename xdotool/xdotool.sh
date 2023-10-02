#!/bin/bash

# Function to run commands on a specific workspace
function run_on_workspace() {
    local workspace=$1
    local command=$2

    # Switch to the chosen workspace
    i3-msg "workspace $workspace"

    sleep 0.2

    # Run the command
    eval "$command"
}

run_on_workspace 1 "xdotool key Super_L+t"
run_on_workspace 2 "xdotool key Super_L+t"
run_on_workspace 3 "xdotool key Super_L+t"

# Run teams on WP1
run_on_workspace 1 "xdotool key Super_L+d && sleep 0.5 && xdotool type 'teams' && xdotool key Return && sleep 0.5"

# Run thunderbird on WP1
run_on_workspace 1 "xdotool key Super_L+d && sleep 0.5 && xdotool type 'thunderbird' && xdotool key Return && sleep 0.5"

# Restart bluetooth to fix otherwise missing audio codecs
sudo service bluetooth restart

# Run bluetooth manager on WP1
run_on_workspace 1 "xdotool key Super_L+d && sleep 0.5 && xdotool type 'bluetooth' && xdotool key Return && sleep 0.5"

# Run audio manager on WP1
run_on_workspace 1 "xdotool key Super_L+d && sleep 0.5 && xdotool type 'pulseaudio' && xdotool key Return && sleep 0.5"

# Run spotify on WP1
run_on_workspace 1 "xdotool key Super_L+d && sleep 0.5 && xdotool type 'spotify' && xdotool key Return && sleep 3"

# Run firefox on WP3
run_on_workspace 3 "xdotool key Super_L+d && sleep 0.5 && xdotool type 'firefox' && xdotool key Return && sleep 0.5"

# Run vscode on WP2
run_on_workspace 2 "xdotool key Super_L+d && sleep 0.5 && xdotool type 'vscode' && xdotool key Return && sleep 5"

# Run discord on WP1
run_on_workspace 1 "xdotool key Super_L+d && sleep 0.5 && xdotool type 'discord' && xdotool key Return && sleep 0.5"
