#!/bin/bash

set -e
DOCKER_USER="pavankumarkothala31"
DOCKER_TAG="v1"

echo "Updating Docker config in scripts..."
# update dockerbuild.sh
sed -i "s|^DOCKER_USER=.*|DOCKER_USER=\"$DOCKER_USER\"|" Contanierize/dockerbuild.sh
sed -i "s|^DOCKER_VERSION=.*|DOCKER_VERSION=\"$DOCKER_TAG\"|" Contanierize/dockerbuild.sh
# update dockerpush.sh
sed -i "s|^DOCKER_USER=.*|DOCKER_USER=\"$DOCKER_USER\"|" Contanierize/dockerpush.sh
sed -i "s|^DOCKER_VERSION=.*|DOCKER_VERSION=\"$DOCKER_TAG\"|" Contanierize/dockerpush.sh

