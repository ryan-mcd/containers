# Excalidraw

## Excalidraw with collaboration enabled

This container is for the ability to run excalidraw in collaboration mode.

For this to run, the following needs implemented

  1. Deploy [excalidraw-room](https://github.com/excalidraw/excalidraw-room)
  2. Enable tls using a reverse proxy or ingress controller and get a certificate for the collab server backend.
  3. Deploy this container and set the environment variable `COLLAB_ADDR=<Your Collab Server Address>`
  4. Override the entrypoint and the command with `/bin/ash -c "sed -i s,http://localhost:3002,$COLLAB_ADDR,g /usr/share/nginx/html/assets/*.js && /docker-entrypoint.sh nginx -g 'daemon off;'"
  5. Serve the Excalidraw server via TLS behind a reverse proxy as well.

## For an example, please view my repository, and enable ingress if not using istio.