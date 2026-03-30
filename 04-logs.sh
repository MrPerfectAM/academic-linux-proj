#!/bin/bash
# Author: Amrat (24BCE10008)
# Purpose: Log File Analyzer

# Suggested log path for Git: /var/log/git.log

echo "================================================================================"
echo "                   Git AUDIT - LOG FILE ANALYZER                 "
echo "================================================================================"

log_file="$1"
keyword="$2"

count=0
matches=()

echo "Analyzing log file: $log_file"

echo "Searching for keyword: $keyword"

while IFS= read -r line; do
  if [[ "$line" == *"$keyword"* ]]; then
    ((count++))
    matches+=("$line")
  fi
done < "$log_file"

echo "Found $count matches"

echo "Last 5 matches:"
for ((i=count-1; i>count-6; i--)); do
  echo "${matches[$i]}"
done

echo "================================================================================"