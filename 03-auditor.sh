#!/bin/bash
# Author: Amrat (24BCE10008)
# Purpose: Disk and Permission Auditor

dirs=("/etc" "/var/log" "/usr/bin" "/home" "/.git" "/.gitconfig")

echo "================================================================================"
echo "                   Git AUDIT - DIRECTORY AUDITOR                 "
echo "================================================================================"

for dir in "${dirs[@]}"; do
  if [ -d "$dir" ]; then
    echo "$dir exists"
    size=$(du -sh "$dir" | awk '{print $1}')
    permissions=$(stat -c "%a" "$dir")
    owner=$(stat -c "%U" "$dir")
    echo "$dir,$size,$permissions,$owner"
  else
    echo "$dir does not exist"
  fi
done

echo "================================================================================"