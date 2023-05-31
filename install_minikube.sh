#!/bin/bash

# Check if Minikube is already installed
if command -v minikube >/dev/null 2>&1; then
    echo "Minikube is already installed."
    exit 0
fi

# Install dependencies
sudo apt-get update
sudo apt-get install -y curl virtualbox

# Install kubectl
sudo apt-get install -y apt-transport-https gnupg2
curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add -
echo "deb https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
sudo apt-get update
sudo apt-get install -y kubectl

# Install Minikube
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube
rm minikube-linux-amd64

# Start Minikube cluster
minikube start

# Verify installation
minikube version
kubectl version --short

