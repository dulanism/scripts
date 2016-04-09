#!/bin/bash
#This script archives a username
#run command sample-name to see results

echo "Executing script: $0"
echo "Archiving user: $1"

#Lock the account
passwd -1 $1

#Create an archive of the home directory
tar cf /archives/${1}.tar.gz /home/${1}

