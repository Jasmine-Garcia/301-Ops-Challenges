# !/usr/bin/env python3

# Script: Ops 301 Class 10 Ops Challenge Solution
# Author: Jasmine Garcia
# Date of latest revision: 5/24/2023
# Purpose: Using file handling commands, create a Python script that creates a new .txt file, appends three lines, prints to the screen the first line, then deletes the .txt file.

import os

# Create new .txt file
ivysbeans_file = "ivys_beans.txt"

# Main

# Open new .txt file with write permissions and assign it to a variable 
with open(ivysbeans_file, "w") as ivy:

# Append three lines
  with open(ivysbeans_file, "a") as ivy:
    ivy.write("My favorite food is turkey.\n")
    ivy.write("I hate lilies because they're toxic to me.n")
    ivy.write("I like to scratch on the couch even though I'm not supposed to.\n")
  
# Read and print the first line 
  with open(ivysbeans_file, "r") as ivy:
    first_line = ivy.readline()
    print(first_line)
    
# Delete text file
os.remove(ivysbeans_file)

# End

# Resources: Hexx's Replit Ops10 Demo, and I asked Cam to clarify reading and printing lines.
