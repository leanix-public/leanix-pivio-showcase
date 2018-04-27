#!/bin/bash

if [ -z "$1" ]
  then
    echo "Please give token"
    exit
fi


projects="service-cart service-dataloader service-navigation service-product service-recommendation service-user frontend-catalog frontend-checkout frontend-registration"

for project in $projects; do
  travis env set APITOKEN "api_token=$1" -r dominikrose-leanix/appstash-$project
done
