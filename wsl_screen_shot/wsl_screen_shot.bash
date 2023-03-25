#!/bin/bash

# Set the filename and directory for the screenshot
filename="screenshot$1.png"
directory="/home/buzgalbraith/screenshots"

# Take the screenshot and save it to the directory
#import -window root "$directory/$filename"
scrot "$directory/$filename"