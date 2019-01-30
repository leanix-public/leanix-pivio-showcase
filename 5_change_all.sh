#!/bin/bash

if [ -z "$1" ]
  then
    echo "Please give comment for README.MD"
    exit
fi

projects="service-cart service-dataloader service-navigation service-product service-recommendation service-user frontend-catalog frontend-checkout frontend-registration"

for project in $projects; do
  echo $1 > appstash-$project/README.md
done
