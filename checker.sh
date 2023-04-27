#!/bin/bash

## script to check nta site for changes


count=`curl -s "https://jeemain.nta.nic.in" | grep -c "l"`

while [ 1 ] 

  do
   c=`curl -s "https://jeemain.nta.nic.in" | grep -c "l"` 
   echo "$c"
 
   if  [ "$c" != "$count" ] 
     then  notify-send "NTA site changed at $(date)" -u "critical" 
     echo "Site change at $(date)"  
     sleep 10 
   else  echo "last check at  $(date), no change observed" 
     sleep 180 
 fi

done 
