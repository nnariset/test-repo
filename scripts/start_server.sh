#!/bin/bash
<<<<<<< HEAD

echo "Starting Gunicorn server..."

# Replace 'app' with the correct Flask app entry point if different
# --bind 0.0.0.0:8000 specifies that Gunicorn will listen on port 8000
gunicorn --bind 0.0.0.0:8000 app:app

# Capture any failure and log it
if [ $? -ne 0 ]; then
    echo "Failed to start Gunicorn server." >&2
=======
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
>>>>>>> ebae7ef43bf7c50a4637016b05cf5cb6a7387d34
    exit 1
else
    echo "Gunicorn server started successfully."
fi

