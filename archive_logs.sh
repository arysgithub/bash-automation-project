#!/bin/bash
# ↑ Tells the system to use Bash to execute this script

# -----------------------------------------------------
# Parse command‑line arguments using getopts
# -d = directory to search
# -t = threshold in days
# Example usage: ./archive_logs.sh -d /var/log -t 7
# -----------------------------------------------------
while getopts d:t: flag   # getopts reads flags -d and -t, each expects a value
do
    case "${flag}" in
        d) directory=${OPTARG};;   # -d flag → store value into $directory
        t) threshold=${OPTARG};;   # -t flag → store value into $threshold
    esac
done

# -----------------------------------------------------
# Feedback to user about what the script is doing
# -----------------------------------------------------
echo "Archiving logs in $directory older than $threshold days..."

# -----------------------------------------------------
# Create archive folder if it does not already exist
# mkdir -p prevents errors if directory already exists
# -----------------------------------------------------
mkdir -p "$directory/archives"

# -----------------------------------------------------
# Main command: find log files older than given days
# - find: search for .log files
# - -mtime +$threshold: modified more than X days ago
# - -exec tar -rvf ... {} \; : append each file into a tar archive
# - -exec rm {} \; : delete the original file after archiving
# -----------------------------------------------------
find "$directory" \
    -name "*.log" \
    -type f \
    -mtime +"$threshold" \
    -exec tar -rvf "$directory/archives/archived_logs.tar" {} \; \
    -exec rm {} \;

# -----------------------------------------------------
# Log activity with timestamp into archive_log.txt
# $(date) adds current date/time
# >> appends instead of overwriting
# -----------------------------------------------------
echo "$(date): Archived logs older than $threshold days in $directory" \
>> "$directory/archives/archive_log.txt"

# -----------------------------------------------------
# Final confirmation message
# -----------------------------------------------------
echo "Done."

#just editing
