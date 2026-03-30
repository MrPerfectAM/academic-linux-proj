#!/bin/bash
# Author: Amrat (24BCE10008)
# Purpose: Open Source Manifesto Generator

echo "================================================================================"
echo "                   Git AUDIT - MANIFESTO GENERATOR                 "
echo "================================================================================"

read -p "What is your name? " name
read -p "What is your favorite open source project? " project
read -p "Why do you contribute to open source? " reason

echo "My name is $name, and I believe in the power of open source. My favorite project is $project, and I contribute because $reason."

echo "My name is $name, and I believe in the power of open source. My favorite project is $project, and I contribute because $reason." > $name.txt

echo "Manifesto saved to $name.txt"

echo "================================================================================"