# !/usr/bin/env python3

# Script: Ops 301 Class 09 ps Challenge Solution
# Author: Jasmine Garcia
# Date of latest revision: 5/22/2023
# Create if statements using these logical conditionals below. Each statement should print information to the screen depending on if the condition is met.

# Equals: a == b
# Not Equals: a != b
# Less than: a < b
# Less than or equal to: a <= b
# Greater than: a > b
# Greater than or equal to: a >= b

# Create an if statement using a logical conditional of your choice and include elif keyword that executes when other conditions are not met.

# Create an if statement that includes both elif and else to execute when both if and elif are not met.

# Variable Declarations 

difficulty = "moderate"
forecast = "sunny"
elevation = 2000
miles = 8
hours = 6
stars = 5

# Main

# if statements using these logical conditionals

# equals: a == b
if difficulty == "moderate":
  print("It's a moderate hike, let's give this hike a try!")
  
# not equals: a != b
if forecast != "sunny":
  print("This isn't the best hiking weather, let's try another day.")
else:
  print("This is the best hiking forecast, let's go!")
  
# less than: a < b
if elevation < 2000:
  print("We have the bandwidth and experience to go on this trail.")
else:
  print("We don't have the bandwidth or the experience to go on this trail.")
        
# less than or equal to: a <= b 
if miles <= 8:
  print("This hike isn't too long, woo!")
else:
  print("This hike is too long, ouch!")

# greater than: a > b
if hours > 6:
   print("Since this hike is a few hours, bring lots of snacks and water!")
else:
   print("We don't need to many snacks for this hike, let's carry light.")
        
# greater than or equal to: a >= b
if stars >= 5:
  print("This hike has great reviews, I bet it has beautiful views!")
else:
  print("This hike has bad reviews. It's probably not worth bringing your camera.")
  
# Create an if statement that includes both elif and else to execute when both if and elif are not met.
# elevation = 1000

if elevation < 1000:
  print("This trail wil be a piece of cake!")
elif elevation >= 1000 and elevation < 1500:
  print("This hike is still doable.")
else:
  print("This hike will be impossible.")

# End 


