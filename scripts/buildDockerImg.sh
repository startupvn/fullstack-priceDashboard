#!/bin/bash
$DOCKER_NAME=$1

docker build -t $DOCKER_NAME/price-dashboard_nginx:latest ./nginx
docker build -t $DOCKER_NAME/price-dashboard_web:latest ./services/web
docker build -t $DOCKER_NAME/price-dashboard_user:latest ./services/user
docker build -t $DOCKER_NAME/price-dashboard_prices:latest ./services/prices
docker build -t $DOCKER_NAME/price-dashboard_promotions:latest ./services/promotions
docker build -t $DOCKER_NAME/price-dashboard_upgrade-rules:latest ./services/upgrade-rules