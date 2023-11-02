FROM node:20

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

USER node

WORKDIR /excalidraw-room

ENV PORT=3002

RUN git clone https://github.com/excalidraw/excalidraw-room.git . && \
  if [ -n "$VERSION" ]; then \
    NUMBER_COMMITS_TO_REVERT=$(( $(git rev-list --count --first-parent HEAD) - $(echo "${VERSION}" | cut -d "." -f3) )); \
    git checkout "master~$NUMBER_COMMITS_TO_REVERT"; \
  yarn --ignore-optional --network-timeout 600000

RUN yarn build

LABEL org.opencontainers.image.source="https://github.com/excalidraw/excalidraw-room"