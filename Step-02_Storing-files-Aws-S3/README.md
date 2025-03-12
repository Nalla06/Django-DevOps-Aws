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
# Docker Compose Commands

## Build and Start Containers
```bash
docker-compose build
docker-compose up -d
```

## Stop and Restart Containers
```bash
docker-compose down
docker-compose restart
```

## View Logs
```bash
docker-compose logs
# Logs for a specific container
docker-compose logs web
```

## Execute Commands Inside Containers
```bash
docker-compose exec web bash
# Run Django management commands
docker-compose exec web python manage.py <command>
```

## Collect Static Files
```bash
docker-compose exec web python manage.py collectstatic --noinput
```

## Check Container Status
```bash
docker-compose ps
```

## Remove Containers, Networks, Volumes, and Images
```bash
docker-compose down --volumes --rmi all
docker system prune -a
```

---

# Development Environment Commands

## Build and Start Development Containers
```bash
docker-compose -f docker-compose.dev.yml build
docker-compose -f docker-compose.dev.yml up -d
```

## Stop and Restart Development Containers
```bash
docker-compose -f docker-compose.dev.yml down
docker-compose -f docker-compose.dev.yml restart
```

## View Development Logs
```bash
docker-compose -f docker-compose.dev.yml logs
# Logs for a specific container
docker-compose -f docker-compose.dev.yml logs web
```

## Execute Commands Inside Development Containers
```bash
docker-compose -f docker-compose.dev.yml exec web bash
# Run Django management commands
docker-compose -f docker-compose.dev.yml exec web python manage.py <command>
```

## Database and Static Files Management
```bash
docker-compose -f docker-compose.dev.yml exec web python manage.py createsuperuser
docker-compose -f docker-compose.dev.yml exec web python manage.py makemigrations
docker-compose -f docker-compose.dev.yml exec web python manage.py migrate
docker-compose -f docker-compose.dev.yml exec web python manage.py collectstatic --noinput
```

## Check Development Container Status
```bash
docker-compose -f docker-compose.dev.yml ps
```

---

# Production Environment Commands

## Build and Start Production Containers
```bash
docker-compose -f docker-compose.prod.yml build
docker-compose -f docker-compose.prod.yml up -d
```

## Stop and Restart Production Containers
```bash
docker-compose -f docker-compose.prod.yml down
docker-compose -f docker-compose.prod.yml restart
```

## View Production Logs
```bash
docker-compose -f docker-compose.prod.yml logs
# Logs for a specific container
docker-compose -f docker-compose.prod.yml logs web
```

## Execute Commands Inside Production Containers
```bash
docker-compose -f docker-compose.prod.yml exec web bash
# Run Django management commands
docker-compose -f docker-compose.prod.yml exec web python manage.py <command>
```

## Database and Static Files Management in Production
```bash
docker-compose -f docker-compose.prod.yml exec web python manage.py createsuperuser
docker-compose -f docker-compose.prod.yml exec web python manage.py makemigrations
docker-compose -f docker-compose.prod.yml exec web python manage.py migrate
docker-compose -f docker-compose.prod.yml exec web python manage.py collectstatic --noinput
```

## Check Production Container Status
```bash
docker-compose -f docker-compose.prod.yml ps
```

## Remove Production Containers, Networks, Volumes, and Images
```bash
docker-compose -f docker-compose.prod.yml down --volumes --rmi all
```

## Prune Unused Docker Images and Containers
```bash
docker system prune -a
```



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

