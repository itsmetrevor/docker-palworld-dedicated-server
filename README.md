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
- Edit the included "configs/PalWorldSettings.ini" file with your desired server settings.
- Edit the environment settings in the docker-compose.yml file
- Run `docker compose up -d`
- Connect in game via IP:PORT
- Have a good ol time with your pals!

## Notices

##### Server Updates

If there's been a game server update and you need to update to the latest version, run:

```
docker compose down
docker compose up --build -d
```

The `--build` flag will rebuild the docker image from scratch, updating the game server in the process.

##### RCON

I do NOT advise enabling RCON or forwarding it's ports unless you have a need to access Palworld admin commands while away from the game! RCON enabled without a secure password is a severe security vulnerability.

Instead, I suggest simply making use of the in game slash commands. You can find all the supported commands here:
[https://tech.palworldgame.com/server-commands](https://tech.palworldgame.com/server-commands)
