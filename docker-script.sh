#!/bin/bash

<<<<<<< HEAD
cp -f configs/PalWorldSettings.ini /palworld/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini
cp -f configs/Engine.ini /palworld/Pal/Saved/Config/LinuxServer/Engine.ini
=======
cp -p configs/PalWorldSettings.ini /palworld/Pal/Saved/Config/LinuxServer/PalWorldSettings.ini
cp -p configs/Engine.ini /palworld/Pal/Plugins/Wwise/Content/Engine.ini
>>>>>>> 1bba376da700470d45d23b056e589c7c0a8583f5

if [ "${BACKUP_INTERVAL}" -ne 0 ]; then
    echo "0 */$BACKUP_INTERVAL * * * /path/to/backup.sh" | crontab -
else
    crontab -r
fi