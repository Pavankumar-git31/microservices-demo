#!/bin/bash
echo "Script for push images to registry"

DOCKER_USER="pavankumarkothala31"
DOCKER_VERSION="v1"

services=(
  adservice
  cartservice
  checkoutservice
  shippingservice
  currencyservice
  productcatalogservice
  emailservice
  paymentservice
  recommendationservice
  frontend
) 

for service in "${services[@]}"
do
  echo "Pushing $service"
  docker tag $service:$DOCKER_VERSION $DOCKER_USER/$service:$DOCKER_VERSION
  docker push $DOCKER_USER/$service:$DOCKER_VERSION
done

echo "push Completed.."
