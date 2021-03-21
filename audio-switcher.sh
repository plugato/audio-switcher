#!/bin/bash
 
export OPTION=`zenity --list  --width 900 --height 300 \
--title="Choose you option" \
--column="Description" \
--column="status" \
\`pactl list sinks short | sed 's/\s\+/ /g' | cut -d' ' -f2,7\``


pactl set-default-sink $OPTION    