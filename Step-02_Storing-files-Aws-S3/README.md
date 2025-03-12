# Step-02: Storing Django Static and Media Files on Amazon S3

## Overview

This project demonstrates how to set up a Django application using Docker for both development and production environments. It also includes integration with AWS S3 for storing static and media files.

## Prerequisites

- Docker and Docker Compose installed
- AWS account with an S3 bucket
- AWS CLI configured with your credentials

## Project Structure

- `Dockerfile`: Base Dockerfile for the Django application
- `Dockerfile.dev`: Dockerfile for development environment
- `Dockerfile.prod`: Dockerfile for production environment
- `docker-compose.yml`: Default Docker Compose file
- `docker-compose.dev.yml`: Docker Compose configuration for development
- `docker-compose.prod.yml`: Docker Compose configuration for production
- `nginx/`: Directory containing NGINX configuration for production
- `.env.dev`: Environment variables for development
- `.env.prod`: Environment variables for production# General Docker Commands

# As upto here was covered in Step-01_Dockerizing-Django-Postgres-Gunicorn-Nginx
Now here i am doing 
# Build Docker containers
docker-compose build

# Start Docker containers in detached mode
docker-compose up -d

# Stop Docker containers
docker-compose down

# Restart Docker containers
docker-compose restart

# View logs from Docker containers
docker-compose logs

# View logs from a specific Docker container
docker-compose logs web

# Execute a command inside a running Docker container
docker-compose exec web bash

# Run Django management command inside a Docker container
docker-compose exec web python manage.py <command>

# Collect static files
docker-compose exec web python manage.py collectstatic --noinput

# Check the status of Docker containers
docker-compose ps

# Remove Docker containers, networks, volumes, and images created by `up`
docker-compose down --volumes --rmi all

# Prune unused Docker images and containers
docker system prune -a

# Development Environment Commands
# Build Docker containers for development
docker-compose -f docker-compose.dev.yml build

# Start Docker containers for development in detached mode
docker-compose -f docker-compose.dev.yml up -d

# Start Docker containers for development with logs
docker-compose -f docker-compose.dev.yml up

# Stop Docker containers for development
docker-compose -f docker-compose.dev.yml down

# Restart Docker containers for development
docker-compose -f docker-compose.dev.yml restart

# View logs from development Docker containers
docker-compose -f docker-compose.dev.yml logs

# View logs from a specific development Docker container
docker-compose -f docker-compose.dev.yml logs web

# Execute a command inside a running development Docker container
docker-compose -f docker-compose.dev.yml exec web bash

# Run Django management command inside a development Docker container
docker-compose -f docker-compose.dev.yml exec web python manage.py <command>

# Create a superuser in development environment
docker-compose -f docker-compose.dev.yml exec web python manage.py createsuperuser

# Make migrations in development environment
docker-compose -f docker-compose.dev.yml exec web python manage.py makemigrations

# Apply migrations in development environment
docker-compose -f docker-compose.dev.yml exec web python manage.py migrate

# Collect static files in development environment
docker-compose -f docker-compose.dev.yml exec web python manage.py collectstatic --noinput

# Check the status of Docker containers in development
docker-compose -f docker-compose.dev.yml ps

# Production Environment Commands
# Build Docker containers for production
docker-compose -f docker-compose.prod.yml build

# Start Docker containers for production in detached mode
docker-compose -f docker-compose.prod.yml up -d

# Start Docker containers for production with logs
docker-compose -f docker-compose.prod.yml up

# Stop Docker containers for production
docker-compose -f docker-compose.prod.yml down

# Restart Docker containers for production
docker-compose -f docker-compose.prod.yml restart

# View logs from production Docker containers
docker-compose -f docker-compose.prod.yml logs

# View logs from a specific production Docker container
docker-compose -f docker-compose.prod.yml logs web

# Execute a command inside a running production Docker container
docker-compose -f docker-compose.prod.yml exec web bash

# Run Django management command inside a production Docker container
docker-compose -f docker-compose.prod.yml exec web python manage.py <command>

# Create a superuser in production environment
docker-compose -f docker-compose.prod.yml exec web python manage.py createsuperuser

# Make migrations in production environment
docker-compose -f docker-compose.prod.yml exec web python manage.py makemigrations

# Apply migrations in production environment
docker-compose -f docker-compose.prod.yml exec web python manage.py migrate

# Collect static files in production environment
docker-compose -f docker-compose.prod.yml exec web python manage.py collectstatic --noinput

# Check the status of Docker containers in production
docker-compose -f docker-compose.prod.yml ps

# Remove Docker containers, networks, volumes, and images created by `up` in production
docker-compose -f docker-compose.prod.yml down --volumes --rmi all

# Prune unused Docker images and containers
docker system prune -a

## Images
Here are some images related to the deployment process:

![Image 1](images/image-01.png).
![Image 2](images/image-02.png).
![Image 3](images/image-03.png).
![Image 4](images/image-04.png).
![Image 5](images/image-05.png).
![Image 6](images/image-06.png).
![Image 7](images/image-07.png).
![Image 8](images/image-08.png).

