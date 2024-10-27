#!/bin/bash

printf "Enter choice for deployment below:\n\n"
printf "1. Deploy development environment infrastructure\n\
2. Deploy staging environment infrastructure\n\
3. Deploy UAT environment infrastructure\n\
4. Deploy production environment infrastructure\n\nWaiting for choice: "

read choice

if [ "$choice" -eq 1 ]; then
    echo "Deploying infrastructure for development environment"
    # Terraform command for development
    cd /home/rajansh/Documents/temp_1/Terraform_GCP/GCP_INFRA_PROJECT/dev_infra
    terraform plan
    terraform apply -auto-approve
    echo "Infra deployment successsfull for developement environment !"
elif [ "$choice" -eq 2 ]; then
    echo "Deploying infrastructure for staging environment"
    # Terraform command for staging
    cd /home/rajansh/Documents/temp_1/Terraform_GCP/GCP_INFRA_PROJECT/stg_infra
    terraform plan
    terraform apply -auto-approve
    echo "Infra deployment successsfull for staging environment !"
elif [ "$choice" -eq 3 ]; then
    echo "Deploying infrastructure for UAT environment"
    # Terraform command for UAT
    cd /home/rajansh/Documents/temp_1/Terraform_GCP/GCP_INFRA_PROJECT/uat_infra
    terraform plan
    terraform apply -auto-approve
    echo "Infra deployment successsfull for UAT environment !"
elif [ "$choice" -eq 4 ]; then
    echo "Deploying infrastructure for production environment"
    # Terraform command for production
    cd /home/rajansh/Documents/temp_1/Terraform_GCP/GCP_INFRA_PROJECT/prod_infra
    terraform plan
    terraform apply -auto-approve
    echo "Infra deployment successsfull for production environment !"
else
    echo "selected environment is not valid"
fi
