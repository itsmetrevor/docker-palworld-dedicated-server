# Palworld Dedicated Server Container

Built on the cm2network/steamcmd container:  
([https://hub.docker.com/r/cm2network/steamcmd](https://hub.docker.com/r/cm2network/steamcmd)).

With a lot of learning and referencing from @jammsen's container:  
([https://github.com/jammsen/docker-palworld-dedicated-server](https://github.com/jammsen/docker-palworld-dedicated-server))



## What You'll Need

- Docker
- If you're on Windows:
  - WSL
  - Docker Desktop

## Getting Started

- Forward the necessary ports on your network.
- Edit the included "palworld/PalWorldSettings.ini" file with your desired server settings.
  - For help with what each value does, see: [https://tech.palworldgame.com/optimize-game-balance](https://tech.palworldgame.com/optimize-game-balance)
- Run `docker compose up -d`
- Connect in game via IP:PORT
- Have a good ol time with your pals!

## Notices

###### RCON

I do NOT advise enabling RCON or forwarding it's ports unless you have a need to access Palworld admin commands while away from the game! RCON enabled without a secure password is a severe security vulnerability.

Instead, I suggest simply making use of the in game slash commands. You can find all the supported commands here:  
[https://tech.palworldgame.com/server-commands](https://tech.palworldgame.com/server-commands)
