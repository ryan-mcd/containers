#!/usr/bin/env bash
git clone --quiet https://github.com/excalidraw/excalidraw.git /tmp/excalidraw
pushd /tmp/excalidraw > /dev/null || exit
version=$(git rev-list --count --first-parent HEAD)
popd > /dev/null || exit
rm -rf /tmp/excalidraw
printf "0.0.%d" "${version}"
