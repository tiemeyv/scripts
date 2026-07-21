#!/usr/bin/bash

#Use the read -p to get a directory from the user
read -p "Enter a directory: " $directory

#Do a -d directory existence test on the value of variable directory
#Echo appropriately
if [[ -d $directory ]]; then
  echo "$directory is a directory."
else
  echo "$directory is not a directory."
fi

#Do a -f file existence test on the value in the variable directory
#Echo appropriately
if [[ -f $file ]]; then
  echo "$file is a file."
else
  echo "$file is not a file."
fi
