#!/bin/bash
echo "Script for the Building images "


DOCKER_USER="pavankumarkothala31"
DOCKER_VERSION="v1"

services=(
  adservice
  cartservice/src
  checkoutservice
  frontend
  shippingservice
  recommendationservice
  productcatalogservice
  currencyservice
  emailservice
  shippingservice
)

for service in "${services[@]}"
do
  echo "Building $service"
  docker build -t $(basename $service):$DOCKER_VERSION .
  cd - > /dev/null
done


echo "build completed.."
      
