FROM cm2network/steamcmd

LABEL org.opencontainers.image.authors="Trevor Huffsmith"
LABEL org.opencontainers.image.source="https://github.com/itsmetrevor/docker-palworld-dedicated-server"

ENV TIMEZONE=America/New_York \
    DEBIAN_FRONTEND=noninteractive \
    PUID=0 \
    PGID=0 \
    COMMUNITY_SERVER=false \
    MULTITHREAD_ENABLED=true

VOLUME ["/palworld"]

EXPOSE 8211/udp
EXPOSE 25575/tcp

ADD --chmod=777 serverstartup.sh /serverstartup.sh

CMD ["/serverstartup.sh"]
