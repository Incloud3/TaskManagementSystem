#!/bin/bash

# Basic wait before starting the application
echo "Waiting for 30 seconds..."
sleep 30

# Apply database migrations
echo "Applying database migrations..."
python manage.py migrate

# Start the application
exec "$@"
