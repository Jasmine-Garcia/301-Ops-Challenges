#!/bin/bash

# Script: Ops 301 Class 02 Ops Challenge Solution
# Author: Jasmine Garcia
# Date of latest revision: 4/26/2023
# Purpose: Manipulate a variable in bash to apply today’s date to a log file.
# Create a bash script that: Copies /var/log/syslog to the current working directory and appends the current date and time to the filename.

# Main

# Variable for date:
today=`date +%F`
echo $today

# Variable for time:
oclock=`date +%T`
echo $oclock

# Stating date and time:
echo "The current date is: $today"
echo "The current time is: $oclock"

#Creat file containing date
cat /var/log/syslog > "$today"_syslog.txt

# A question within the context of today’s lab assignment
# When trying to put the time in the file name it didn't quite work. I tried a few variations but I guess what would be the correct way to make sure the time is included?

# An observation about the lab assignment, or related ‘Ah-hah!’ moment
# When the file created but then I realized the time wasn't included.

# How long you spent working on this assignment
# An hour and a half - I'm not the strongest when it comes to bash and I'm not sure if I completely met the criteria.

# End