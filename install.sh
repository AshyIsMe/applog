#!/bin/bash

cd `dirname $0`
sed -i "s/PATHTOREPOSITORY/`pwd`/" applog.plist 

launchctl load applog.plist
