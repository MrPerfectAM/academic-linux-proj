#!/bin/bash
# Author: Amrat (24BCE10008)
# Purpose: FOSS Package Inspector

# Detect the package manager
if [ -x "$(command -v apt)" ]; then
  # Ubuntu/Debian
  package_manager="apt"
  package_name="git"
elif [ -x "$(command -v yum)" ]; then
  # RHEL/CentOS
  package_manager="yum"
  package_name="git"
elif [ -x "$(command -v zypper)" ]; then
  # OpenSUSE
  package_manager="zypper"
  package_name="git"
fi

echo "================================================================================"
echo "                   Git AUDIT - PACKAGE INSPECTOR                 "
echo "================================================================================"

echo "Status: $package_name is $(if $package_manager list installed | grep -q $package_name; then echo "INSTALLED"; else echo "NOT INSTALLED"; fi) on this $(lsb_release -ds) system."

echo "Version: $(if $package_manager list installed | grep -q $package_name; then $package_manager list installed | grep $package_name | awk '{print $2}'; fi)"

echo "--------------------------------------------------------------------------------"
echo "FOSS Philosophy Notes:"
echo " - Git: Git is a free and open source distributed version control system."
echo " - Linux: Linux is a free and open source operating system."
echo " - Vim: Vim is a free and open source text editor."
echo " - GCC: GCC is a free and open source compiler."
echo "================================================================================"