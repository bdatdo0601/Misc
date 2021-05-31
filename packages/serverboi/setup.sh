#!/bin/bash

git clone https://github.com/openfaas/faasd --depth=1
cd faasd

./hack/install.sh

# sudo cat /var/lib/faasd/secrets/basic-auth-password | faas-cli login -s