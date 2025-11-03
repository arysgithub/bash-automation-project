# 🗂️ Project Plan: Log Archiver Script

## 🎯 Objective
Create a Bash script (`archive_logs.sh`) that automatically finds `.log` files older than a user-defined threshold and archives them using `tar`. This helps automate log maintenance for system admins and developers.

## 🧠 Features
- Accepts 2 parameters:  
  - `-d` (directory path)
  - `-t` (threshold in days)
- Finds `.log` files older than the threshold
- Archives them using `tar` into a `archived_logs.tar` file
- Deletes the original `.log` files after archiving
- Logs actions to `archive_log.txt`

## 💡 Stretch Goals
- Do a test on the above features using dummy data (completed)
- Add CRON job instructions for daily/weekly automation (soon to be compelted)
- Email notification on completion (future)

## 📂 Directory Structure

```plaintext
bash-automation-project/
├── archive_logs.sh
├── archive_log.txt
├── test_logs/
|   ├── archives/
|   |    ├──archive_log.txt
|   |    └── archived_logs.tar
│   ├── new1.log
│   └── new2.log
├── PROJECT_PLAN.md
└── README.md
```

## Technologies Used:
- Bash
- Git CLI
- Cron (for scheduling)

