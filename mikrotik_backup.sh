#!/usr/bin/env bash
# Usage: ./mikrotik_backup <router-ip> <backup-dir>
ssh -i ~/.ssh/id_ed25519-mikrotik-backup $1 /export show-sensitive > $2/$1-$(date +"%Y%m%d%H%M%S").txt
find $2/ -name *.txt -type f -mtime +90 -exec rm '{}' \;
