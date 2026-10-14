# Laboratory 09: The Cloud Automation Engineer

## Mission Overview

This laboratory focuses on automating cloud operations using Bash scripting and Cron. The main task is to create a backup script that compresses application data and schedule it to run automatically every day at 2:00 AM.

## Objectives

- Understand the basics of Bash scripting and variables.
- Create and execute a backup script.
- Use `chmod` to give a script permission to run.
- Configure a Cron job for automatic backups.
- Document the commands and results using Markdown.

## Commands Executed

```bash
mkdir -p app-data
echo "This is critical client data." > app-data/data.txt
nano backup.sh
chmod +x backup.sh
./backup.sh
ls -l backups/
tar -tzf backups/*.tar.gz
crontab -l
env EDITOR=nano crontab -e
```

## Skills Learned

I learned how to create a Bash script, compress files into a backup archive, change file permissions, and schedule automatic tasks using Cron. I also learned the importance of documenting commands and checking whether the backup was created successfully.

## Screenshots

- `screenshots/script-execution.png`
- `screenshots/cron-schedule.png`
