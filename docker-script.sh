#!/bin/bash

cp -f configs/PalWorldSettings.ini /palworld/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini
cp -f configs/Engine.ini /palworld/Pal/Saved/Config/LinuxServer/Engine.ini

if [ "${BACKUP_INTERVAL}" -ne 0 ]; then
    echo "0 */$BACKUP_INTERVAL * * * /path/to/backup.sh" | crontab -
else
    crontab -r
fi