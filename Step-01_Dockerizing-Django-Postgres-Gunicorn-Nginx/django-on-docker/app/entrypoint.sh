#!/bin/bash

# Check if DATABASE_URL is set to use PostgreSQL
if [ -z "$DATABASE_URL" ]; then
  echo "Running without waiting for PostgreSQL..."
else
  # Wait for PostgreSQL to be ready
  echo "Waiting for postgres..."
  while ! nc -z db 5432; do
    sleep 1
  done
  echo "PostgreSQL started"
fi

# Apply database migrations
python manage.py migrate --noinput

# Collect static files (if needed)
# python manage.py collectstatic --noinput

# Start the development server
exec "$@"