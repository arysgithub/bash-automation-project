# 🛠️ Bash Automation Project – Log Archiver Script

## 🎯 Objective

This project automates the process of archiving `.log` files older than a user-defined number of days from a specified directory. It compresses them into a `.tar` file and deletes the originals, helping system admins and developers manage log clutter.

---

## 🧠 Key Features

- ✅ Accepts 2 CLI parameters:
  - `-d`: Directory to scan
  - `-t`: Threshold in days
- ✅ Finds `.log` files older than the threshold
- ✅ Archives them using `tar` into `archived_logs.tar`
- ✅ Deletes the original `.log` files after archiving
- ✅ Logs every operation to `archive_log.txt`
- ✅ CRON-ready: Easily schedule the script for regular runs

---

## 🧪 Test Environment

This repo includes a `test_logs/` folder with dummy `.log` files for testing and demonstration.

To run the script locally:

```bash
./archive_logs.sh -d ./test_logs -t 1
```

You should see:
- Archived .log files in archived_logs.tar
- Deleted original .log files
- Logged output in archive_log.txt

## 📦 Project Structure
```plaintext
bash-automation-project/
├── archive_logs.sh             # Main Bash script
├── test_logs/                  # Dummy logs for testing
|   ├── archives/               # Results of testing golder
|   |    ├──archive_log.txt     # Log file of actions taken
|   |    └── archived_logs.tar  # Archived logs 
│   ├── new1.log
│   └── new2.log
├── PROJECT_PLAN.md             # Full breakdown of project planning
└── README.md                   # This file
```

## 🕒 Automating with CRON (I've automated my system with CRON)

You can schedule this script to run daily, weekly, etc., using cron.
To edit your CRON schedule:
```plaintext
crontab -e
```
Then add this line to run the script daily at midnight:
```plaintext
0 0 * * * /path/to/archive_logs.sh -d /your/logs -t 7
```
Replace /path/to/archive_logs.sh and /your/logs with actual paths on your system.
Make sure the script has execute permissions:

```bash
chmod +x archive_logs.sh
```

## 🧰 Technologies Used

🐚 Bash
🔧 Git CLI
⏰ Cron (Linux job scheduler)

## 📌 Future Improvements
🔄 Email notification after each archive run
📊 Archive summary report
✅ Restore option from archived .tar file
🌍 Web interface (stretch goal)

## ✅ Version
v1.0-bash-complete — Initial working release with CLI, testing, CRON setup and full documentation.

## 🧠 Lessons Learned
~ CLI flag parsing with getopts
~ Archiving and deleting files using find, tar, and rm
~ Logging output to a file
~ Structuring a real-world Bash project with GitHub workflow

## 🔗 Author
Made with 💻 by [arysgithub] (https://github.com/arysgithub/)
[LinkedIn] (https://www.linkedin.com/in/aaryan-shariff/)

## 📄 MIT License

This project is licensed under the MIT License. See `LICENSE` for more info.

---
