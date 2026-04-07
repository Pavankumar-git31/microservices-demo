#!/bin/bash

DOCKER_USER ="pavankumarkothala31"
DOCKER_VERSION="v1"

cd microservices-demo/
cd src/

cd adservice/
docker tag adservice:$DOCKER_VERSION $DOCKER_USER/adservice:$DOCKER_VERSION
docker push $DOCKER_USER/adservice:$DOCKER_VERSION
cd ..


cd cartservice/src/
docker tag cartservice:$DOCKER_VERSION $DOCKER_USER/cartservice:$DOCKER_VERSION
docker push $DOCKER_USER/cartservice:$DOCKER_VERSION
cd ..
cd ..

cd checkoutservice/
docker tag checkoutservice:$DOCKER_VERSION $DOCKER_USER/checkoutservice:$DOCKER_VERSION
docker push $DOCKER_USER/checkoutservice:$DOCKER_VERSION
cd ..

cd currencyservice/
docker tag currencyservice:$DOCKER_VERSION $DOCKER_USER/currencyservice:$DOCKER_VERSION
docker push $DOCKER_USER/currencyservice:$DOCKER_VERSION
cd ..


cd emailservice/
docker tag emailservice:$DOCKER_VERSION $DOCKER_USER/emailservice:$DOCKER_VERSION
docker push $DOCKER_USER/emailservice:$DOCKER_VERSION
cd ..


cd frontend/
docker tag frontend:$DOCKER_VERSION $DOCKER_USER/frontend:$DOCKER_VERSION
docker push $DOCKER_USER/frontend:$DOCKER_VERSION
cd ..

cd paymentservice/
docker tag paymentservice:$DOCKER_VERSION $DOCKER_USER/paymentservice:$DOCKER_VERSION
docker push $DOCKER_USER/paymentservice:$DOCKER_VERSION
cd ..

cd productcatalogservice/
docker tag productcatalogservice:$DOCKER_VERSION $DOCKER_USER/productcatalogservice:$DOCKER_VERSION
docker push $DOCKER_USER/productcatalogservice:$DOCKER_VERSION
cd ..

cd recommendataionservice/
docker tag recommendataionservice:$DOCKER_VERSION $DOCKER_USER/recommendataionservice:$DOCKER_VERSION
docker push $DOCKER_USER/recommendataionservice:$DOCKER_VERSION
cd ..

cd shippingservice/
docker tag shippingservice:$DOCKER_VERSION $DOCKER_USER/shippingservice:$DOCKER_VERSION
docker push $DOCKER_USER/shippingservice:$DOCKER_VERSION
cd ..


cd shoppingassistantservice/
docker tag shoppingassistantservice:$DOCKER_VERSION $DOCKER_USER/shoppingassistantservice:$DOCKER_VERSION
docker push $DOCKER_USER/shoppingassistantservice:$DOCKER_VERSION
cd ..

cd microservices-demo/
