#!/bin/bash

# This example shows how to fix NVIDIA Driver for Linux issues
# with suspension/hibernation

sudo systemctl stop nvidia-suspend
sudo systemctl stop nvidia-hibernate
sudo systemctl stop nvidia-resume

sudo systemctl disable nvidia-suspend
sudo systemctl disable nvidia-hibernate
sudo systemctl disable nvidia-resume

# After running these commands, reboot your PC and the changes
# should persist.
