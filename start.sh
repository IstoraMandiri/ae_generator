#!/bin/bash

if ! (ps aux | grep "After Effects -noui" | grep -v 'grep');
  then
    echo "After Effects isn't running. Starting in background."
    echo "Please wait for 10 seconds..."
    open -n -a "Adobe After Effects CC 2014.app" --args -noui;
    sleep 10;
    echo "";
    echo "Assuming you have After Effects installed and 'start.sh' is configured correctly,"
    echo "After Effects will now remain open until you manually close it."
fi

echo "";
echo "Starting script...";
echo "After Effects should play a chime once the render is compelte. Please Check /output/ for result.";

# convoluted way of running jsx in no ui mode
osascript src/osx_start.scpt