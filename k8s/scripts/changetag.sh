#!/bin/bash

DOCKER_USER="pavankumarkothala31"
DOCKER_TAG="v1"

services=(
  adservice
  cartservice
  shippingservice
  productcatalogservice
  paymentservice
  emailservice
  currencyservice
  frontend
  checkoutservice
  recommendationservice
)

for service in "${services[@]}"
do
  sed -i "s|${DOCKER_USER}/${service}:.*|${DOCKER_USER}/${service}:${DOCKER_TAG}|g" ../manifests/${service}-manifest.yml
done
