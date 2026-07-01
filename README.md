# Backup-log-file
A Bash-based log backup utility that identifies log files larger than 1 MB and creates timestamped backups for efficient log management.


# Log Backup Automation Script

## Overview

This project is a Bash script that automates the backup of large log files on a Linux system. It scans the `/var/log` directory, identifies log files larger than **1 MB**, and copies them to a backup directory with a timestamped filename.

## Features

* Scans all `.log` files in `/var/log`
* Checks the size of each log file
* Backs up log files larger than **1 MB**
* Creates timestamped backup filenames
* Preserves the original log files

## Prerequisites

Create the backup directory before running the script:

mkdir -p /tmp/log-backup


## How to Run

Make the script executable:

chmod +x backup_logs.sh


Run the script:
./backup_logs.sh

## Example Output

/var/log/syslog = 2356712 bytes
syslog backed up.


## Technologies Used

* Bash
* Linux
* Shell Scripting

## Future Improvements

* Compress backed-up log files using `gzip`
* Make the backup directory configurable
* Allow the size threshold to be specified as a command-line argument
* Automate execution using `cron`

## Author

AmakaJoy Okolocha

