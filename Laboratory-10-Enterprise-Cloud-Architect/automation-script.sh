#!/usr/bin/env bash
set -Eeuo pipefail

# Run this script from the Laboratory-10 project directory.
# Backups contain private data; keep the backup directory restricted.
PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
BACKUP_DIR="${PROJECT_DIR}/backups"
TIMESTAMP="$(date +'%Y%m%d_%H%M%S')"
COMPOSE_FILE="${PROJECT_DIR}/docker-compose.yml"

mkdir -p "$BACKUP_DIR"
chmod 700 "$BACKUP_DIR"

# Load environment variables used by Compose.
if [[ ! -f "${PROJECT_DIR}/.env" ]]; then
  echo "ERROR: .env file is missing. Copy .env.example to .env and set secrets." >&2
  exit 1
fi
set -a
source "${PROJECT_DIR}/.env"
set +a

docker compose -f "$COMPOSE_FILE" exec -T db \
  mariadb-dump -u root "-p${MYSQL_ROOT_PASSWORD}" \
  --single-transaction --routines --events "${MYSQL_DATABASE}" \
  > "${BACKUP_DIR}/database_${TIMESTAMP}.sql"

# Archive the persistent Nextcloud volume (includes application config and user files).
docker run --rm \
  -v "$(basename "$PROJECT_DIR")_nextcloud_data:/source:ro" \
  -v "$BACKUP_DIR:/backup" \
  alpine:3.20 \
  tar -czf "/backup/nextcloud_files_${TIMESTAMP}.tar.gz" -C /source .

# Keep the most recent 14 days of backup files.
find "$BACKUP_DIR" -type f -mtime +14 -delete
echo "Backup completed: ${TIMESTAMP}"
