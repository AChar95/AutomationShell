#! /bin/bash
az vm create --resource-group MainResource --name JenkinsVM --image ubuntults --admin-username admin123 --admin-password Password123456789! --nics WildinsNICOne --size Standard_B1ms
az vm create --resource-group MainResource --name WildflyVM --image ubuntults --admin-username admin123 --admin-password Password123456789! --nics WildinsNICTwo --size Standard_B1ms
