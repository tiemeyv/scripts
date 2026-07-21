#!/sbin/bash
# $2 = First name column
# $1 = Last name column
# $3 = Favorite color column

awk '{print "I am " $2 " " $1 " and my favorite color is " $3}' NamesAndColors.txt |sed 's/Unknown/Brown/g'
