#!/bin/bash

projects="service-cart service-dataloader service-navigation service-product service-recommendation service-user frontend-catalog frontend-checkout frontend-registration"

for project in $projects; do
  curl -u $1 https://api.github.com/user/repos -d '{"name":"appstash-'$project'"}'  

done
