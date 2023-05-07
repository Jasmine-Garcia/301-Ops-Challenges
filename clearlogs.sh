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

# Define log files to compress 
log_files=(logivybean-logs.txt)

# Define backup directory 
backup_dir="ivybean_backups"

# Define timestamp format
timestamp=$(date +"%Y%m%d%H%M%S")