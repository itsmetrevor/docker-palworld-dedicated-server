#!/bin/bash

cp -p configs/PalWorldSettings.ini /palworld/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini
cp -p configs/Engine.ini /palworld/Pal/Plugins/Wwise/Content/Engine.ini

if [ "${BACKUP_INTERVAL}" -ne 0 ]; then
    echo "0 */$BACKUP_INTERVAL * * * /path/to/backup.sh" | crontab -
else
    crontab -r
fi