#!/bin/bash

# Script: Ops 301 Class 04 Ops Challenge Solution
# Author: Jasmine Garcia
# Date of latest revision: 5/3/2023
# Purpose: Create a bash script that launches a menu system with the following options:

# Hello world (prints “Hello world!” to the screen)
# Ping self (pings this computer’s loopback address)
# IP info (print the network adapter information for this computer)
# Exit
# Next, the user input should be requested.
# The program should next use a conditional statement to evaluate the user’s input, then act according to what the user selected.
# Use a loop to bring up the menu again after the request has been executed.

# Main

# Show menu
while true; do 
 echo "--Please read the following actions below:--"
 sleep 2
    
 echo "1. Hello World!"
 echo "2. Ping Self"
 echo "3. IP Information"
 echo "4. Exit"

# Ask User Input
 sleep 2
 echo "Please enter 1, 2, 3, or 4:" 
 read number 

#Evaluation of User's Input
 if [[ $number == 1 ]]; then 
   echo "Hello World" 
 fi 

 if [[ $number == 2 ]]; then 
   ping -c 4 192.168.0.133
 fi

 if [[ $number == 3 ]]; then 
   ip a
 fi

 if [[ $number == 4 ]]; then
   exit 0
 fi

 done

# Resources: ChatGBT, Hexx's Demo Notes, DevHints