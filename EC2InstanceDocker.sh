#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Installing Docker..."
    # Install Docker
    sudo yum install docker -y
else
    echo "Docker is already installed."
fi

# Enable and start Docker
sudo systemctl enable docker
sudo systemctl start docker

# Ensure the script is in the correct directory before proceeding
if [ -d "../bot" ]; then
    cd ../bot
else
    echo "Directory '../bot' does not exist. Exiting..."
    exit 1
fi

# Interact as ec2-user
sudo usermod -a -G docker ec2-user

