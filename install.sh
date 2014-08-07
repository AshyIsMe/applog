#!/bin/bash

cd `dirname $0`
p=`pwd`
sed -i '.original' 's|PATHTOREPOSITORY|'$p'|' applog.plist 

launchctl load applog.plist
