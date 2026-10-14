# Backup Script Guide

## 1. Purpose

The `backup.sh` script automatically compresses the `app-data` directory into a `.tar.gz` archive stored in the `backups` directory. Each backup receives a timestamp so that multiple backups can be saved separately.

## 2. Full Bash Script

```bash
#!/bin/bash
# Automated Backup Script for CloudNova Technologies

SOURCE_DIR="app-data"
BACKUP_DIR="backups"
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")

echo "Initiating automated backup..."

# Create the backup directory if it does not exist
mkdir -p "$BACKUP_DIR"

# Compress the source directory into a tarball (.tar.gz)
tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"

echo "Backup completed successfully at $TIMESTAMP!"
```

## 3. File Permissions

The command `chmod +x backup.sh` gives the script permission to execute. After applying this permission, the script can be run using `./backup.sh`.

## 4. Testing the Backup

The following commands were used to run the script and verify the backup archive:

```bash
./backup.sh
ls -l backups/
tar -tzf backups/*.tar.gz
```

The `ls` command lists the backup files, while `tar -tzf` displays the contents of the compressed archive.

## 5. Cron Job Configuration

The Cron expression used is:

```cron
0 2 * * * /root/backup.sh
```

### Meaning of the Five Time Fields

| Field | Value | Meaning |
|---|---|---|
| Minute | `0` | At minute zero |
| Hour | `2` | At 2:00 AM |
| Day of Month | `*` | Every day of the month |
| Month | `*` | Every month |
| Day of Week | `*` | Every day of the week |

The final part, `/root/backup.sh`, specifies the script that Cron executes.

**Note:** The script uses relative folder paths, so it assumes its working directory is the directory containing `app-data`. For a production setup, use absolute paths and add error handling to ensure failed backups are reported rather than incorrectly marked as successful.
