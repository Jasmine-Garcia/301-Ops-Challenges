# Script: Ops 301 Class 06 Ops Challenge Solution
# Author: Jasmine Garcia
# Date of latest revision: 5/13/2023
# Purpose: Create a Python script that executes a few bash commands successfully.

# The Python module “os” must be utilized
# At least three variables must be declared in Python that contain results of bash operations
# The Python function print() must be used at least three times
# Include execution of the following bash commands inside your Python script:

  # whoami
  # ip a
  # lshw -short

#Main
import os

# Declare Variables 
user = os.system ("whoami")
ipinfo = os.system ("ip a")
hrdwareinf = os.system ("lshw -short")

# Inialize
print(user)
print(ipinfo)
print(hrdwareinf)

# End
#Resources Hexx's Ops301n3: Bash in Python Replit 
