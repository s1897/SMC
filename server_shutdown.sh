#!/bin/bash

screen -S SMC -X stuff '\n'
sleep 1
screen -S SMC -X stuff 'stop\n'

while true;
    do
    sleep 1
    pgrep -fl java &>/dev/null;
    RES=$?
    if  [ $RES -eq 1 ] ; 
        then 
            echo "break"
            break
    fi

done

sleep 5

screen -S SMC -X stuff 'exit\n'

~/SMC/world_back_up.sh && sudo reboot -f