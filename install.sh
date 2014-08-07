#!/bin/bash

cd `dirname $0`
sed -i "s/PATH-TO-REPOSITORY/`pwd`" applog.plist 

launchctl load applog.plist
