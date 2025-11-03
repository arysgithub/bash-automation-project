# Project: archive_logs.sh

## Purpose:
Automatically archive .log files older than N days from a target directory, compress them, and log the operation.

## Features:
- Accepts flags: `-d` (directory), `-t` (threshold in days)
- Finds `.log` files older than threshold
- Compresses into tar file
- Moves to `/archives`
- Logs activity to `archive_log.txt`

## Technologies Used:
- Bash
- Git CLI
- Cron (for scheduling)

## Planned Extensions:
- Add email alert on successful archive
- Support file size threshold in MB
