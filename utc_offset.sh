#!/bin/bash
#Copyright 2014 Brendan Perrine
# This is a simple bash script that shows the offset to UTC from your current time zone 



echo " $(date  +%H) - $(date  -u +%H) "|bc

