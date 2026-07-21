#!/usr/bin/bash
#Generate a random number between 1 and 10 that stores the variable RM
RM=$((1 + $RANDOM % 10))

#What happens when a number is inputted in the "guess" variable
echo -n "Guess a number between 1 and 10: "; read guess
echo

#1st try
if (( $guess == $RM )); then
  echo "Your guess is right!"
  exit
elif (( $guess > $RM )); then
  echo "Your guess is too high, try again."
elif (( $guess < $RM )); then
  echo "Your guess is too low, try again."
fi

#2nd try
echo - n "Guess a number between 1 and 10: "; read guess
echo

if (( $guess == $RM )); then
  echo "Your guess is right!"
  exit
elif (( $guess > $RM )); then
  echo "Your guess is too high, try again."
elif (( $guess < $RM )); then
  echo "Your guess is too low, try again."
fi

#3rd try
echo - n "Guess a number between 1 and 10: "; read guess
echo

if (( $guess == $RM )); then
  echo "Your guess is right!"
  exit
elif (( $guess > $RM )); then
  echo "Your guess is too high, try again next time."
elif (( $guess < $RM )); then
  echo "Your guess is too low, try again next time."
fi

