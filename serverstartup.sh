#!/bin/bash

function installServer() {
    # force a fresh install of all
    echo ">>> Performing a fresh install of the gameserver"
    /home/steam/steamcmd/steamcmd.sh +force_install_dir "/palworld" +login anonymous +app_update 2394010 validate +quit
}

function startServer() {
    echo ">>> Starting the gameserver"

    cd /palworld
    cp -p PalWorldSettings.ini Pal/Saved/Config/LinuxServer/PalWorldSettings.ini

    START_OPTIONS=""
    if [[ -n $COMMUNITY_SERVER ]] && [[ $COMMUNITY_SERVER == "true" ]]; then
        START_OPTIONS="$START_OPTIONS EpicApp=PalServer"
    fi
    if [[ -n $MULTITHREAD_ENABLED ]] && [[ $MULTITHREAD_ENABLED == "true" ]]; then
        START_OPTIONS="$START_OPTIONS -useperfthreads -NoAsyncLoadingThread -UseMultithreadForDS"
    fi

    ./PalServer.sh "$START_OPTIONS"
}

if [ ! -f "/palworld/PalServer.sh" ]; then
    installServer
fi

startServer
