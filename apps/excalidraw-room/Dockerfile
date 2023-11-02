FROM node:20-alpine

ARG TARGETPLATFORM
ARG VERSION
ARG CHANNEL

WORKDIR /excalidraw-room

ENV PORT=3002

USER root

RUN chown node:node /excalidraw-room

RUN apk update && apk add git

USER node

RUN git clone https://github.com/excalidraw/excalidraw-room.git . && \
  if [ -n "$VERSION" ]; then \
    NUMBER_COMMITS_TO_REVERT=$(( $(git rev-list --count --first-parent HEAD) - $(echo "${VERSION}" | cut -d "." -f3) )); \
    git checkout "master~$NUMBER_COMMITS_TO_REVERT"; \
  fi
  
RUN yarn --ignore-optional --network-timeout 600000

RUN yarn build

CMD ["yarn", "start"]

LABEL org.opencontainers.image.source="https://github.com/excalidraw/excalidraw-room"