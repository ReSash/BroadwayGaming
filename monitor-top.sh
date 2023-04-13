#!/bin/sh
 export PID=$1
 rm maintenance.txt
 while true; do top -p $PID -bn 1 | egrep '^ *[0-9]+' | awk -v now=$(date +%s.%N) '{print now,$6,$9}' >> maintenance.txt; done
