#!/bin/bash
set -e

# Install Docker (required for Rancher)
sudo apt update
sudo apt install -y docker.io

# Start Docker service
sudo systemctl start docker
sudo systemctl enable docker

# Install Rancher container
sudo docker run -d --restart=unless-stopped -p 80:80 -p 443:443 --privileged rancher/rancher:latest

