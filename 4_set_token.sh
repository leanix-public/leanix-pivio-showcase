#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ]
  then
    echo "Please give github account and token"
    exit
fi


projects="service-cart service-dataloader service-navigation service-product service-recommendation service-user frontend-catalog frontend-checkout frontend-registration"

for project in $projects; do
  travis env set APITOKEN "api_token=$2" -r $1/appstash-$project
done
