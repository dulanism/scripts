#!/bin/bash
USER=$1 #The firs parameter is the user

echo "Executing script: $0"
echo "Archiving user: $USER"

#Lock the account
passwd -1 $USER

#Create an archive of the home directory
tar cf /archives/${USER}.tar.gz /home/${USER}
