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

# Check if Docker Compose is installed
if ! command -v docker-compose &> /dev/null
then
    echo "Docker Compose is not installed. Installing Docker Compose..."
    # Install Docker Compose
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    if [ $? -ne 0 ]; then
        echo "Failed to install Docker Compose."
        exit 1
    fi
else
    echo "Docker Compose is already installed."
fi

# check if libxcrypt-compat is installed
if ! rpm -q libxcrypt-compat &> /dev/null
then
    echo "libxcrypt-compat is not installed. Installing libxcrypt-compat..."
    # Install libxcrypt-compat
    sudo yum install libxcrypt-compat -y
    if [ $? -ne 0 ]; then
        echo "Failed to install libxcrypt-compat."
        exit 1
    fi
else
    echo "libxcrypt-compat is already installed."
fi

# Interact as ec2-user
sudo usermod -a -G docker ec2-user


