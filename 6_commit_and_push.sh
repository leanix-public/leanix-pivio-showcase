#!/bin/bash

if [ -z "$1" ] || [ -z "$2" ] 
  then
    echo "Please give github account and commit message"
    exit
fi

projects="service-cart service-dataloader service-navigation service-product service-recommendation service-user frontend-catalog frontend-checkout frontend-registration"

for project in $projects; do
  cd appstash-$project
  git remote add $1 https://github.com/$1/appstash-$project
  git add -A && git commit -m "$2" && git push $1
  cd ..
done
