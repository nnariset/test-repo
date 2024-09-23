#!/bin/bash
# Install dependencies required for running the application

# Update the system packages
sudo yum update -y

# Install Python 3 and pip if not already installed
sudo yum install python3 -y
sudo yum install python3-pip -y

# Navigate to the application directory
cd /var/www/html

# Install Python dependencies from requirements.txt
pip3 install -r requirements.txt
