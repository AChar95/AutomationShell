#! /bin/bash

az network vnet create --resource-group MainResource --name WildinsNetwork --address-prefix 10.0.0.0/16 --subnet-name JenkflySubnet --subnet-prefix 10.0.0.0/24


