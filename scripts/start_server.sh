#!/bin/bash

echo "Starting Gunicorn server..."

# Replace 'app' with the correct Flask app entry point if different
# --bind 0.0.0.0:8000 specifies that Gunicorn will listen on port 8000
gunicorn --bind 0.0.0.0:8000 app:app

# Capture any failure and log it
if [ $? -ne 0 ]; then
    echo "Failed to start Gunicorn server." >&2
    exit 1
else
    echo "Gunicorn server started successfully."
fi

