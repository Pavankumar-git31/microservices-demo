#!/bin/bash

DOCKER_USER="pavankumarkothala31"
DOCKER_VERSION="v20"         

echo "Updating Docker config in scripts..."
# update dockerbuild.sh
sed -i "s|^DOCKER_USER=.*|DOCKER_USER=\"$DOCKER_USER\"|" dockerbuild.sh
sed -i "s|^DOCKER_VERSION=.*|DOCKER_VERSION=\"$DOCKER_VERSION\"|" dockerbuild.sh
# update dockerpush.sh
sed -i "s|^DOCKER_USER=.*|DOCKER_USER=\"$DOCKER_USER\"|" dockerpush.sh
sed -i "s|^DOCKER_VERSION=.*|DOCKER_VERSION=\"$DOCKER_VERSION\"|" dockerpush.sh
