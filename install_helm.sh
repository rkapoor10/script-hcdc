#!/bin/bash

# Download and extract the Helm binary
curl -LO https://get.helm.sh/helm-v3.7.0-linux-amd64.tar.gz
tar -zxvf helm-v3.7.0-linux-amd64.tar.gz

# Move the helm binary to a directory in your PATH
sudo mv linux-amd64/helm /usr/local/bin/helm

# Add completion for Helm
helm completion bash | sudo tee /etc/bash_completion.d/helm > /dev/null

# Clean up temporary files
rm -rf linux-amd64 helm-v3.7.0-linux-amd64.tar.gz

# Verify Helm installation
helm version --short

