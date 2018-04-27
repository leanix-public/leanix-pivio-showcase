#!/bin/bash

if [ -z "$1" ]
  then
    echo "Please give commit message"
    exit
fi

projects="service-cart service-dataloader service-navigation service-product service-recommendation service-user frontend-catalog frontend-checkout frontend-registration"

for project in $projects; do
  cd appstash-$project
  git add -A && git commit -m "$1" && git push
  cd ..
done
