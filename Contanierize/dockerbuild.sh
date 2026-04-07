#!/bin/bash

DOCKER_USER ="pavankumarkothala31"
DOCKER_VERSION="v1"

cd microservices-demo/
cd src/

cd adservice/
docker build -t adservice:$DOCKER_VERSION .
cd ..


cd cartservice/src/
docker build -t cartservice:$DOCKER_VERSION .
cd ..
cd ..

cd checkoutservice/
docker build -t checkoutservice:$DOCKER_VERSION .
cd ..

cd currencyservice/
docker build -t currencyservice:$DOCKER_VERSION .
cd ..


cd emailservice/
docker build -t emailservice:$DOCKER_VERSION .
cd ..


cd frontend/
docker build -t frontend:$DOCKER_VERSION .
cd ..

cd paymentservice/
docker build -t paymentservice:$DOCKER_VERSION .
cd ..

cd productcatalogservice/
docker build -t productcatalogservice:$DOCKER_VERSION .
cd ..

cd recommendataionservice/
docker build -t recommendataionservice:$DOCKER_VERSION .
cd ..

cd shippingservice/
docker build -t shippingservice:$DOCKER_VERSION .
cd ..


cd shoppingassistantservice/
docker build -t shoppingassistantservice:$DOCKER_VERSION .
cd ..

cd microservices-demo/

