#!/bin/bash

if pgrep -x top > /dev/null
then
    echo "Top is running"
else
    echo "Top has stopped"
fi
