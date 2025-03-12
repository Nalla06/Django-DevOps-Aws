#!/bin/sh

# Wait for the database to be ready
while ! nc -z db 5432; do
  echo "Waiting for the PostgreSQL server to be ready..."
  sleep 1
done

# Run migrations
python manage.py migrate --noinput

# Collect static files
python manage.py collectstatic --no-input --clear

# Start Gunicorn
gunicorn hello_django.wsgi:application --bind 0.0.0.0:8000 --workers 3