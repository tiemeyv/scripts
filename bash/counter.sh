#!/usr/bin/bash
END=6
COUNTER=0

while (( $COUNTER < $END ));
do
  echo "COUNTER is $COUNTER"
  sleep 1
  (( COUNTER = $COUNTER + 1 ))
done
