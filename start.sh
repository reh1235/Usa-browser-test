#!/bin/bash
docker rm -f chromium 2>/dev/null
docker run -d --name chromium -p 3000:3000 --shm-size=1gb \
  -v $HOME/chromium-config:/config \
  lscr.io/linuxserver/chromium:latest
echo "https://$CODESPACE_NAME-3000.$GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN"
