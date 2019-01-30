#!/bin/bash

if [ -z "$1" ] 
  then
    echo "Please give github account"
    exit
fi

projects="service-cart service-dataloader service-navigation service-product service-recommendation service-user frontend-catalog frontend-checkout frontend-registration"

for project in $projects; do
  rm -rf appstash-$project
  git clone git@github.com:$1/appstash-$project.git
done
