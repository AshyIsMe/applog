#!/bin/bash

#Define a variable from a heredoc. 
#Stolen from http://stackoverflow.com/a/8088167
define(){ IFS='\n' read -r -d '' ${1} || true; }

define APPLESCRIPT <<EOF
global frontApp, frontAppName, windowTitle

set windowTitle to ""
tell application "System Events"
    set frontApp to first application process whose frontmost is true
    set frontAppName to name of frontApp
    tell process frontAppName
        tell (1st window whose value of attribute "AXMain" is true)
            set windowTitle to value of attribute "AXTitle"
        end tell
    end tell
end tell

return {frontAppName, windowTitle}
EOF


while true; do
  CURRENTAPP=`osascript -e "$APPLESCRIPT"`
  if [ ! -z "$CURRENTAPP" ]; then
    echo `date`, `osascript -e "$APPLESCRIPT" ` >> ~/applog.dat
  fi
  sleep 1
done
