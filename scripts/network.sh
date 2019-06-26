#! /bin/bash

az network vnet create --resource-group MainResource --name WildinsNetwork --address-prefixes 10.0.10.0/16
az network vnet subnet create --resource-group MainResource --name WildinsNetwork --subnet-name JenkflySubnet --address-prefix 10.0.10.0/24


