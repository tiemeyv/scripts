#!/sbin/bash
#Run the code as: ./midterm.sh -c $(pwd)/midterm.txt; this is the absolute path so it can still work even after the script changes directories
#Check to see if the user used "-c" argument OR if the second argument is empty (this is checked with -z)
#If either of the conditions are true, it will display the flag error; this is to ensure that the conditions need to be met to be run
if [ "$1" != "-c" ] || [ -z "$2" ]; then
  echo "You should use the -c flag and a file name"
  exit 1
fi

#Assigning a positional parameter for $2 
INPUT_FILE="$2"

#Ask the user for their name and favorite color
read -p "Enter your name: " YOURNAME
read -p "Enter your favorite color: " FAVCOLOR

#Check if the directory /tmp/FAVCOLOR already exists, exiting, and preventing reuse of the same color directory
if [ -d "/tmp/$FAVCOLOR" ]; then
  echo "bad luck $YOURNAME"
  exit 1
else
#If it does not exist, make the directory; after it is made, the user is in this directory
  mkdir "/tmp/$FAVCOLOR"
  cd "/tmp/$FAVCOLOR"
fi

#Create midterm.csv file and write the header columns
echo "Firstname,Lastname,Maildomain,Password" > midterm.csv

#awk will pull columns from midterm.txt, making the names lowercase, appending "-000" and saving as midterm.csv
awk '{ print tolower($3) "," tolower($4) "," $5 "," $2 "-000" }' "$INPUT_FILE" >> midterm.csv
#To find the directory run: cat /tmp/color/midterm.csv
