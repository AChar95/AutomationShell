#! /bin/bash

az login

scripts/resourceGrp.sh
scripts/network.sh
scripts/nsg.sh
scripts/publicIP.sh
scripts/NICs.sh
scripts/VM.sh

