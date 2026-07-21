#!/usr/bin/bash
#Usage
#$1 is the flag (-a, -d, -l)
#$2 is the filename (names.dat)
ACTION=$1
USERFILE=$2

case $ACTION in
#Creates the user
-a|--add)
  for name in $(cat "$USERFILE"); do
    sudo useradd -m "$name"
    echo "Adding user: $name"
    done
    ;;
#Deletes the user
-d|--delete)
  for name in $(cat "$USERFILE"); do
    echo "Deleting user: $name"
    sudo userdel -r "$name"
    done
    ;;
#Will show user and their password
-l|--list)
  for name in $(cat "$USERFILE"); do  
  grep "^${name}:" /etc/passwd
  done
  ;;
*)
  echo "Usage: ./buser [-a|-d|-l] filename"
  ;;
esac
