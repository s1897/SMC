#!/bin/bash

#-Xmx6G Max Ram Usage
#-Xms1.5G  Start UP Ram Usage
#-XX:SoftMaxHeapSize=5G Server can use 5G ram. If riquiret it can go over -Xmx
#-d64 Runs server at 64bit
#--nogui opens only terminal nou Gui

cd ~/SMC/

java -Xmx6G -Xms1G -XX:SoftMaxHeapSize=5G -XX:+UnlockExperimentalVMOptions -XX:+UseZGC -jar server.jar --nogui
