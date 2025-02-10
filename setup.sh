#!/bin/bash

set -e

# create VMs
vagrant up

# Install K3s Cluster
ansible-playbook -i ansible/inventory.ini ansible/install-cluster.yml
ansible-playbook -i ansible/inventory.ini ansible/argo-cd.yaml


