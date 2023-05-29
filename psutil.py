#!/usr/bin/env python3

# Script: Ops 301 Challenge 11
# Author: Jasmine Garcia
# Date of last revision: 5/29/23
# Purpose: Create a Python script that fetches this information using Psutil:

# Time spent by normal processes executing in user mode
# Time spent by processes executing in kernel mode
# Time when system was idle
# Time spent by priority processes executing in user mode
# Time spent waiting for I/O to complete.
# Time spent for servicing hardware interrupts
# Time spent for servicing software interrupts
# Time spent by other operating systems running in a virtualized environment
# Time spent running a virtual CPU for guest operating systems under the control of the Linux kernel

# Main

import psutil

# Time spent by normal processes executing in user mode
normal_time = psutil.cpu_times().user
print("Time spent by normal processes executing in user mode:", normal_time)

# Time spent by processes executing in kernel mode
kernel_time = psutil.cpu_times().system
print("Time spent by normal processes executing in user mode:", kernel_time)

# Time when system was idle
idle_time = psutil.cpu_times().idle
print("Time spent by normal processes executing in user mode:", idle_time)

# Time spent by priority processes executing in user mode
priority_time = psutil.cpu_times().nice
print("Time spent by normal processes executing in user mode:", priority_time)

# Time spent waiting for I/O to complete.
IO_time = psutil.cpu_times().iowait
print("Time spent by normal processes executing in user mode:", IO_time)

# Time spent for servicing hardware interrupts
servicing_hardware_time = psutil.cpu_times().irq
print("Time spent by normal processes executing in user mode:", servicing_hardware_time)
      
# Time spent for servicing software interrupts
servicing_software_time = psutil.cpu_times().softirq
print("Time spent by normal processes executing in user mode:", servicing_software_time)
      
# Time spent by other operating systems running in a virtualized environment
virtualization_time = psutil.cpu_times().steal
print("Time spent by normal processes executing in user mode:", virtualization_time)

# Time spent running a virtual CPU for guest operating systems under the control of the Linux kernel
linux_time = psutil.cpu_times().guest
print("Time spent by normal processes executing in user mode:", linux_time)

# Resources: GeeksforGeeks: Psutil Module

# End
