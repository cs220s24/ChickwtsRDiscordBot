#!/bin/bash

# Check if Docker is installed
if ! command -v docker &> /dev/null
then
    echo "Docker is not installed. Installing Docker..."
    # Install Docker
    sudo yum install docker -y
    if [ $? -ne 0 ]; then
        echo "Failed to install Docker."
        exit 1
    fi
else
    echo "Docker is already installed."
fi

# Enable and start Docker
sudo systemctl enable docker
if [ $? -ne 0 ]; then
    echo "Failed to enable Docker."
    exit 1
fi

sudo systemctl start docker
if [ $? -ne 0 ]; then
    echo "Failed to start Docker."
    exit 1
fi

# Interact as ec2-user
sudo usermod -a -G docker ec2-user


