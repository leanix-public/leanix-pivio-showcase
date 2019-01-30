#!/bin/bash

read -p "Please enter your github username:" username
read -s -p "Please enter your github password:" pswd




projects="service-cart service-dataloader service-navigation service-product service-recommendation service-user frontend-catalog frontend-checkout frontend-registration"


for project in $projects; do
  curl -u "$username:$pswd" https://api.github.com/user/repos -d '{"name":"appstash-'$project'"}'  

done
