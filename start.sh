#!/bin/bash

if ! (ps aux | grep "After Effects -noui" | grep -v 'grep');
  then
    echo "AfterEffects isn't running. Starting in background."
    echo "Please wait for 10 seconds..."
    open -n -a "Adobe After Effects CC 2014.app" --args -noui;
    sleep 10;
    echo "Please cancel and retry again if it hasn't started yet..."
    echo "Ensure you have After Effect installed, and 'start.sh' is configured correctly."
fi

echo 'Starting script... Check /output/ for result.'

# convoluted way of running jsx in no ui mode
osascript src/osx_start.scpt