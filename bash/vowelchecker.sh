#!/usr/bin/bash
read -p "Enter a letter: " LETTER
echo "You entered $LETTER."

case $LETTER in
  a | e | i | o | u)
    echo "LETTER$ is a vowel."
    ;;
  y)
    echo "$LETTER is sometimes a vowel."
    ;;
  *)
    echo $LETTER is not a vowel."
    ;;
esac
