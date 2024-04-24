#!/bin/bash

# Check if R is installed by trying to get its version without launching it interactively
if ! R --version &>/dev/null; then
    echo "R is not installed. Installing R..."
    sudo yum install R -y
    if [ $? -eq 0 ]; then
        echo "R installed successfully."
    else
        echo "Failed to install R."
        exit 1
    fi
else
    echo "R version:"
    R --version | head -n 1
fi

# Ensure the script is in the correct directory before proceeding
if [ -d "../bot" ]; then
    cd ../bot
else
    echo "Directory '../bot' does not exist. Exiting..."
    exit 1
fi

# Create and activate a Python virtual environment
if [ ! -d ".venv" ]; then
    python3 -m venv .venv
    echo "Virtual environment created."
fi
source .venv/bin/activate

# Install Python dependencies from requirements.txt
if [ -f "requirements.txt" ]; then
    pip install -r requirements.txt
    echo "Dependencies installed."
else
    echo "requirements.txt does not exist. Please ensure the file is in the current directory."
    exit 1
fi

# Run the Python bot script
if [ -f "bot.py" ]; then
    python bot.py
else
    echo "bot.py does not exist in this directory. Exiting..."
    exit 1
fi

