#!/bin/bash

# Script: Ops 301 Class 03 Ops Challenge Solution
# Author: Jasmine Garcia
# Date of latest revision: 4/29/2023
# Purpose: Create a bash script that alters file permissions of everything in a directory.
# Create a bash script that: 

# Prompts user for input directory path.
# Prompts user for input permissions number (e.g. 777 to perform a chmod 777)
# Navigates to the directory input by the user and changes all files inside it to the input setting.
# Prints to the screen the directory contents and the new permissions settings of everything in the directory.

# Main

echo "Warning: Altering file permissions can result in malfunctions to your OS."
sleep  2
echo "Proceed? [yes/no]"
read yes
echo "One last time, is that a real ${yes}?"
read yes 
echo "Okay, please input directory path."
read directory
echo "Great, please input the permissions number to allow all permissions."
read permish

- will need to come back to this - im currently trying to figure out how to upload from vs code through my server since im ou of space
