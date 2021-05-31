#!/bin/bash

sudo snap install microk8s --classic
sudo microk8s status --wait-ready
sudo microk8s enable prometheus dashboard dns registry

sudo usermod -a -G microk8s bdatdo0601
sudo chown -f -R bdatdo0601 ~/.kube

sudo microk8s kubectl config view --raw > /root/.kube/config 

curl -SLsf https://dl.get-arkade.dev/ | sudo sh
arkade install openfaas --load-balancer

curl -SLsf https://cli.openfaas.com | sudo sh

sudo kubectl rollout status -n openfaas deploy/gateway
sudo kubectl port-forward -n openfaas svc/gateway 8080:8080

export OPENFAAS_URL=http://127.0.0.1:30915 >> ~/.zshrc

#  PASSWORD=$(kubectl get secret -n openfaas basic-auth -o jsonpath="{.data.basic-auth-password}" | base64 --decode; echo)
