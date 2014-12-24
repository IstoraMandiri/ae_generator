#!/bin/bash
AfterEffects='Adobe After Effects CC 2014.app'
number=$(ps aux | grep '$AfterEffects' | grep -v grep | wc -l)
if [ $number -gt 0 ]
    then
        echo 'Already Running AE';
    else
        echo 'Starting AE in noUI mode';
        # open after effects in NO UI mode
        open -n -a "$AfterEffects" --args -noui
fi

# convoluted way of running jsx in no ui mode
osascript src/osx_start.scpt