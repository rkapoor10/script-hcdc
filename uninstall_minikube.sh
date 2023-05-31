#!/bin/bash

# Stop and delete the Minikube cluster
minikube stop
minikube delete

# Remove the Minikube binary
sudo rm /usr/local/bin/minikube

# Remove the Minikube configuration directory
rm -rf ~/.minikube

# Remove the Minikube cache directory
rm -rf ~/.kube/cache

# Remove the Minikube related files and directories in /tmp
rm -rf /tmp/minikube

echo "Minikube has been successfully uninstalled."
                                                                                                                                                                                                                                                                                                                                               