#!/bin/bash
# Start the Flask application using Gunicorn

cd /var/www/html

# Stop any existing instance of the server
if pgrep -f "gunicorn" > /dev/null
then
    echo "Stopping existing Gunicorn server..."
    pkill -f "gunicorn"
fi

# Start Gunicorn on port 8080
echo "Starting Gunicorn server..."
nohup gunicorn -b 0.0.0.0:8080 app:app > gunicorn.log 2>&1 &

# Verify if the application started successfully
if pgrep -f "gunicorn" > /dev/null
then
    echo "Gunicorn server started successfully."
else
    echo "Failed to start Gunicorn server."
    exit 1
fi
