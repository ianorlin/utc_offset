#!/bin/bash
#Copyright 2014 Brendan Perrine
# This is a simple bash script that shows the offset to UTC from your current time zone 

 
#note that can't have same day on different years as are not that many time zones  
if [ $(date +%j)  -eq $(date -u +%j) ] ; then 
  echo " $(date  +%H) - $(date  -u +%H) "|bc
#new years first because of otheruwise I can't use day number accuratly
elif [ $(date +%Y) -gt $(date -u +%Y ) ]; then 
  echo " $( date +%H ) + 24   - $(date -u +%H)"|bc
elif [ $(date +%Y) -lt $(date -u +%Y) ] ; then
  echo " $(date +%H ) -  $( date +%H ) - 24 "|bc
elif [ $(date +%j ) -gt $( date -u +%j ) ] ; then 
 echo " $(date +%H ) - $(date -u +%H) +24 "|bc 
else 
 echo " $(date +%H ) - $( date -u +%H) -24 "|bc

fi 
