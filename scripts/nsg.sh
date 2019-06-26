#! /bin/bash

az network nsg create --resource-group MainResource --name JenkflySecurity
az network nsg rule create --resource-group MainResource --name Port8080 --priority 300 --nsg-name JenkflySecurity --destination-port-ranges 8080
