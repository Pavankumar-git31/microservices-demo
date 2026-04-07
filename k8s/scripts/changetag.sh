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
