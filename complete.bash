#!/bin/bash

input_text="$1"
keywords=("bytes" "ttl" "time" "icmp_seq")
found_count=0
# I have checked the ping output on Windows and Linux, they have 3 similar
# keywords for us to check.
expected_count=3

# Lowercase the input for case-insenitive comparison.
lower_input=$(echo "${input_text}" | tr '[:upper:]' '[:lower:]')

for keyword in "${keywords[@]}"; do
  # Using a regular expression to match the exact keywords and not allow
  # words like "bytesss".
  regex_pattern="\\b$(echo "${keyword}")\\b"
    
  # Count found keywords.
  if echo "${lower_input}" | grep -q -P "${regex_pattern}"; then
   ((found_count++))
  fi
done

if [ $found_count -eq $expected_count ]; then
	echo "passed"
else
	echo "expecting $expected_count keywords; found $found_count"
	exit 1
fi
