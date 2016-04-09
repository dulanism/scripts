#!/bin/bash
#add namme such as Bob, Joe etc after ./archive-user-all.sh

echo "Executing script: $0"
for USER in $@
do
  echo "Archiving user: $USER"
  #Lock the account
  passwd -1 $USER
  #Create an archive of the home directory
  tar cf /archives/${USER}.tar.gz /home/${USER}
done

