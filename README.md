🐧 Linux Automated Backup & Cleanup Script

A Bash scripting project that automates directory backups, creates compressed ".tar.gz" archives, and automatically removes old backups based on a predefined retention period.

📌 Project Overview

Managing backups manually can be time-consuming. This project provides a simple automation solution using Bash scripting on Linux.

The script takes a source directory and a backup directory as command-line arguments, creates a timestamped compressed backup, and cleans up old backup files automatically.

✨ Features

- Automated Backup: Creates compressed backups of specified directories.
- Timestamp-Based Naming: Each backup gets a unique timestamp.
- Compressed Archives: Stores backups in ".tar.gz" format.
- Directory Validation: Checks whether the source directory exists.
- Automatic Directory Creation: Creates the backup directory if it doesn't exist.
- Automatic Cleanup: Deletes backups older than the retention period.
- Error Handling: Uses strict Bash options to handle command failures.

🛠️ Technologies & Tools

- Linux (Ubuntu)
- Bash Scripting
- tar & gzip
- find command
- Shell Functions
- Command-Line Arguments
- Conditional Statements
- Error Handling ("set -Eeuo pipefail")


⚙️ How It Works

1. Accepts source and backup directories as command-line arguments.
2. Validates the source directory.
3. Creates the backup directory if necessary.
4. Generates a timestamp for the backup filename.
5. Uses "tar" to create a compressed archive.
6. Checks and removes old backups based on the retention period.
7. Displays the backup process status.

🚀 Installation & Usage

Step 1: Clone the Repository

git clone : https://github.com/Stud-Sam2006/backup-script.git

Step 2: Navigate to the Project Directory

cd backup-project

Step 3: Give Execute Permission

chmod +x backup.sh

Step 4: Run the Script

./backup.sh data backups

Here:

- "data" → Source directory
- "backups" → Destination directory

🗑️ Backup Retention Policy

The script uses a 7-day retention policy.

- Backups within the retention period are kept.
- Backups older than the retention period are automatically deleted.

This helps prevent unnecessary backup files from accumulating.

📸 Project Output

After successful execution, the script displays:

Starting Backup...
Backup created successfully!
Location: backups/backup_TIMESTAMP.tar.gz

Checking old backups...
Old backup cleanup completed.

Backup process completed.

🎯 Learning Outcomes

Through this project, I practiced:

- Automating Linux administrative tasks.
- Working with command-line arguments.
- Creating compressed backups using "tar".
- Managing files and directories.
- Implementing retention policies using "find".
- Writing safer Bash scripts with error handling.

🔮 Future Improvements

- Schedule automatic backups using Cron Jobs.
- Add backup verification.
- Implement configurable retention settings.
- Add email notifications for backup failures.

👨‍💻 Author

Abdul Samad Khan

B.Sc. Computer Science Student | Aspiring Cloud & DevOps Engineer

🔗 LinkedIn: [ Abdul Samad Khan ] ( https://www.linkedin.com/in/abdul-samad-khan-a84402373?utm_source=share_via&utm_content=profile&utm_medium=member_android  )

---

⭐ If you find this project useful, feel free to explore the repository and share your feedback.

Learning by building, one project at a time! 🚀
