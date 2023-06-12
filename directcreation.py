# Script: Ops 301 Class 07 Ops Challenge Solution
# Author: Jasmine Garcia
# Date of latest revision: 5/15/2023
# Purpose: Create a Python script that generates all directories, sub-directories and files for a user-provided directory path.

# Script must ask the user for a file path and read a user input string into a variable.
# Script must use the os.walk() function from the os library.
# Script must enclose the os.walk() function within a python function that hands it the user input file path.

#Main
#!/usr/bin/env python3

# Import libraries
import os

# Declaration of functions
def ivybean_backups(path):
    for (root, dirs, files) in os.walk(path):
    print(root)
    print(dirs)
    print(files)

# Ask User for Path
path = input("What is the file path?")
ivybean_backups(path)

# End

# Resources: Hexx's Replit, ChatGBT for Double-Check
