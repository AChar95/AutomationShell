#! /bin/bash

az network nic create --resource-group MainResource --name WildinsNICOne --vnet-name WildinsNetwork --subnet JenkflySubnet --network-security-group JenkflySecurity --public-ip-address WildinsIPOne 
az network nic create --resource-group MainResource --name WildinsNICTwo --vnet-name WildinsNetwork --subnet JenkflySubnet --network-security-group JenkflySecurity --public-ip-address WildinsIPTwo 
