#!/bin/bash

# Script: Ops 301 Class 05 Ops Challenge Solution
# Author: Jasmine Garcia
# Date of latest revision: 5/6/2023
# Purpose: Create a bash script that clears file log files for you.

# Also:
# Print to the screen the file size of the log files before compression
# Compress the contents of the log files listed below to a backup directory
    # /var/log/syslog
    # /var/log/wtmp
# The file name should contain a time stamp with the following format -YYYYMMDDHHMMSS
    # Example: /var/log/backups/syslog-20220928081457.zip
# Clear the contents of the log file
# Print to screen the file size of the compressed file
# Compare the size of the compressed files to the size of the original log files

# Define backup directory 
backup_dir="ivybean_backups"

# Define timestamp format
timestamp=$(date +"%Y%m%d%H%M%S")

# Compression of file in drectories
for file in var/log/syslog var/log/wtmp; do 

# Initial file size
initial_size=$(du -h "$file" | awk '{print $1}')

# Compress File
bzip2 -d "$file" > "ivybean_backups/$(basename "$file")-$timestamp.bz2"

# clear the contents of the log file
cat /dev/null > "$file"

# Size of Compressed File 
compressed_size=$(du -h "ivybean_backups/$(basename "$file")-$timestamp.bz2"

# Print size of compressed file
  echo "File size before compression: $initial_size"

# Comparison of file size before and after compression
  if [[ $intial_size -gt $compressed_size ]]; then
    echo "Compressions successful: compressed file size is smaller than intial file size"
  else
    echo "Compression unsuccesful: compressed file size is larger than intial file size"
  fi

done

# Resources: Hexx's replit, ChatGBT (screenshots included in link in comments)