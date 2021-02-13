#!/bin/sh
set -ex

## Docker Installation Steps
# Install a few prerequisite packages which let apt use packages over HTTPS:
sudo apt install apt-transport-https ca-certificates -y curl software-properties-common

# Add the GPG key for the official Docker repository to your system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"

# Update the package database with the Docker packages from the newly added repo:
sudo apt update

# Install Docker:
sudo apt install docker-ce -y

# Add a user to the docker group
sudo usermod -aG docker vagrant