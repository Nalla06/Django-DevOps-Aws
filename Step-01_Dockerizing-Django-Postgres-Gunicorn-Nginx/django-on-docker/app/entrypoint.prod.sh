#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

# Wait for PostgreSQL to be available
until pg_isready -h db -p 5432; do
  echo "Waiting for PostgreSQL to be available..."
  sleep 2
done

# Apply database migrations
python manage.py migrate

# Collect static files
python manage.py collectstatic --noinput

# Start the Django application
gunicorn hello_django.wsgi:application --bind 0.0.0.0:8000

exec "$@"