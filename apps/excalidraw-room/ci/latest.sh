#!/usr/bin/env bash
git clone --quiet https://github.com/excalidraw/excalidraw-room.git /tmp/excalidraw-room
pushd /tmp/excalidraw-room > /dev/null || exit
version=$(git rev-list --count --first-parent HEAD)
popd > /dev/null || exit
rm -rf /tmp/excalidraw-room
printf "0.0.%d" "${version}"
