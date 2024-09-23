#!/bin/bash
# Start the Flask web server

# Navigate to the application directory
cd /var/www/html

# Check if the server is already running and stop it
if pgrep -f "app.py" > /dev/null
then
    echo "Stopping existing Flask application..."
    pkill -f "app.py"
fi

# Start the Flask application in the background and log output
echo "Starting Flask application..."
nohup python3 app.py > flask_app.log 2>&1 &

# Verify if the application started successfully
if pgrep -f "app.py" > /dev/null
then
    echo "Flask application started successfully."
else
    echo "Failed to start Flask application."
    exit 1
fi
