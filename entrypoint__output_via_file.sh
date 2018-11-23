#!/bin/sh
# version: 1.1

# [if var is not set, then set default value]-[BEGIN]
if ! [ -n "${OUTPUT_FILE}" ]; then
  OUTPUT_FILE="/tmp/output.txt"
fi
if ! [ -n "${ERROR_FILE}" ]; then
  ERROR_FILE="/tmp/error.txt"
fi
# [if var is not set, then set default value]-[END]


# $@: Insert ALL arguments passed to script, individually double quoted. ("python" "script.py" "example.com")
# Pass output and error to file and to console with "tee".
# In file data with executed ANSI codes for "Screen clearing".
# You can get cleared output via file

($@ | tee "${OUTPUT_FILE}") 3>&1 1>&2 2>&3 | tee "${ERROR_FILE}"
