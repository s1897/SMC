#!/bin/bash

# World Back Up Script

# Get the Date: 2023-08-19
DATE = 	$(date +%F)

# Create a directory with the name:  2023-08-19
mkdir $DATE

# Change in the  2023-08-19 directory 
cd $DATE

#Copy the world directory too the 2023-08-19 directory
cp -R  ../../world world/

#Change back too the main directory
cd ..

#List the oldest directory
OLD_DIR = $(ls -t . | tail -1)

#If thear more then 40 Backups delete the oldest
if [[ $(ls -1 | wc -l) -lt 40 ]];
	then
	    echo "$OLD_DIR was removt"
		rm -r $OLD_DIR
		
fi
