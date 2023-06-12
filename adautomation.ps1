# Script: Ops 301 Class 13 Ops Challenge Solution
# Author: Jasmine Garcia
# Date of latest revision: 6/12/2023
# Purpose: Write a Powershell script that adds Franz Ferdinand to Active Directory.
  # Franz Ferdinand is the TPS Reporting Lead at GlobeX USA in Springfield, OR office. 
  # Franz is part of the TPS Department. Franz’s email is ferdi@GlobeXpower.com.
  # Test your script. 
  # Verify in ADAC that the user was created with the correct attributes.
  # If anything is missing, delete the user in ADAC and re-attempt from Powershell ISE.

# Main

# Variables for Franz Informarion:
$FirstName = Franz
$LastName = Ferdinand
$SamAccountName = corp\FranzFerdinand
$JobTitle = TPS Reporting Lead
$Department = TPS Department
$Company = GlobeX USA
$Email = ferdi@GlobeXpower.com
$Office = Springfield, OR

# Create a user and set properties 
New-ADUser -$FirstName$LastName -OtherAttributes @{$JobTitle; $Email; $SamAccountName; $Department; $Company; $Office}

# End

# Resources: Microsoft New-ADUser
