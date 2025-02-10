#!/bin/bash

# Update packages and install dependencies
sudo apt update -y && sudo apt install -y gnupg software-properties-common curl

# Add HashiCorp GPG key
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg >/dev/null

# Add HashiCorp repo
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

# Update and install Terraform
sudo apt update -y && sudo apt install -y terraform

# Verify installation
terraform --version
