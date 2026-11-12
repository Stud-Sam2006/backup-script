#!/bin/bash

set -Eeuo pipefail

SOURCE_DIR="${1:-}"
BACKUP_DIR="${2:-}"
TIMESTAMP=$(date '+%F %T')
RETENTION_DAYS=7

if [[ -z "$SOURCE_DIR" || -z "$BACKUP_DIR" ]]
then
	echo "Usage: ./backup.sh SOURCE_DIR BACKUP_DIR"
	exit 1
fi

if [[ ! -d "$SOURCE_DIR" ]]
then
	echo "ERROR: Source directory does not exist!"
	exit 1
fi

mkdir -p "$BACKUP_DIR"

BACKUP_FILE="${BACKUP_DIR}/backup_${TIMESTAMP}.tar.gz"

create_backup () {	
	echo "Starting Backup..."

	if tar -czf "$BACKUP_FILE" -C "$(dirname "$SOURCE_DIR")" "$(basename "$SOURCE_DIR")"; then
		echo "Backup created successfully!"
		echo "Location: $BACKUP_FILE"
	else
		echo "ERROR: Backup failed!"
		return 1
	fi
}

cleanup_old_backups () {

	echo "Checking old backups..."

	find "$BACKUP_DIR"\
		-maxdepth 1\
		-type f\
		-name 'backup_*.tar.gz'\
		-mtime +"$RETENTION_DAYS"\
		-print -delete
	
	echo "Old backup cleanup completed."
}

create_backup
cleanup_old_backups

echo "==========================="
echo "Backup process completed."
echo "==========================="










