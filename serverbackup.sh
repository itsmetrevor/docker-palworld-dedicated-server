#!/bin/bash

backup_dir="/palworld/backups"
source_dir="/palworld/Pal/Saved"
current_time=$(date +"%Y%m%d_%H%M%S")
backup_file="backup_$current_time.tar.gz"

tar -czf "$backup_dir/$backup_file" "$source_dir"

ls -t "$backup_dir/backup_*.tar.gz" | tail -n +$(($BACKUPS_TO_KEEP + 1)) | xargs rm