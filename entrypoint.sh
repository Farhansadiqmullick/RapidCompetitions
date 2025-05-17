#!/bin/sh

# Wait for DB to be ready (optional, if using PostgreSQL or MySQL in Docker Compose)
# echo "Waiting for db..."
# sleep 5

echo "Running migrations..."
python manage.py migrate

echo "Starting server..."
exec python manage.py runserver 0.0.0.0:8000