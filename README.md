# 🚀 Scalable & Secure Django Deployment on AWS with Terraform

This project demonstrates a **full DevOps pipeline** for deploying a **Django application** on **AWS ECS** using **Terraform, Docker, Nginx, Postgres, and CI/CD**.  

## 📌 Project Overview  
This repository covers the following **key DevOps concepts**:  
✅ **Containerizing Django** with Docker  
✅ **Storing Static & Media Files** on AWS S3  
✅ **Deploying to AWS ECS** using Terraform  
✅ **Securing with Let's Encrypt SSL & AWS WAF**  
✅ **Implementing Auto Scaling for ECS Services**  
✅ **Setting Up a CI/CD Pipeline with Terraform & GitHub Actions**  

---
## 📂 Folder Structure  

```
Django-Devops-Aws/
│── dockerizing-django/          # Step 1: Containerizing Django with Postgres, Gunicorn & Nginx
│── aws-s3-static-media/         # Step 2: Storing Static & Media Files on AWS S3
│── deploying-aws-ecs-terraform/ # Step 3: Deploying to AWS ECS with Terraform
│── security-lets-encrypt-waf/   # Step 4 & 5: SSL & Web Application Firewall (WAF)
│── auto-scaling-ecs/            # Step 6: Implementing Auto Scaling for ECS
│── ci-cd-terraform-github-actions/ # Step 7: Setting Up CI/CD Pipeline
│── README.md                    # Project Overview & Setup Guide
```

## Steps

### Step 1: Containerizing Django with Postgres, Gunicorn & Nginx
- **Objective:** Set up a development and production environment using Docker.
- **Actions:**
  - Create Dockerfiles for development and production.
  - Set up Docker Compose for managing multi-container applications.
  - Configure Nginx as a reverse proxy to Gunicorn.
- **Purpose:** Ensure the application is containerized for consistency and ease of deployment.

### Step 2: Storing Static & Media Files on AWS S3
- **Objective:** Store static and media files on AWS S3.
- **Actions:**
  - Configure Django settings to use `django-storages` and `boto3` for S3 integration.
  - Set up AWS S3 buckets for static and media files.
- **Purpose:** Improve file storage management and scalability.

### Step 3: Deploying to AWS ECS with Terraform
- **Objective:** Deploy the application to AWS ECS using Terraform.
- **Actions:**
  - Write Terraform scripts to define ECS, ECR, and other AWS resources.
  - Deploy the infrastructure using Terraform.
- **Purpose:** Automate the deployment of infrastructure and ensure consistency.

### Step 4 & 5: SSL & Web Application Firewall (WAF)
- **Objective:** Secure the application with SSL and WAF.
- **Actions:**
  - Set up SSL certificates using Let's Encrypt.
  - Configure AWS WAF to protect the application from common web exploits.
- **Purpose:** Enhance security by encrypting traffic and protecting against attacks.

### Step 6: Implementing Auto Scaling for ECS
- **Objective:** Implement auto-scaling for the ECS cluster.
- **Actions:**
  - Configure auto-scaling policies for ECS services.
  - Set up CloudWatch alarms to trigger scaling events.
- **Purpose:** Ensure the application can handle varying loads efficiently.

### Step 7: Setting Up CI/CD Pipeline
- **Objective:** Set up a CI/CD pipeline using GitHub Actions and Terraform.
- **Actions:**
  - Write GitHub Actions workflows to automate testing, building, and deployment.
  - Integrate Terraform scripts into the CI/CD pipeline.
- **Purpose:** Automate the development workflow to improve efficiency and reliability.


## Technologies Used

. Backend: Django, Gunicorn
. Containerization: Docker, Docker Compose
. Infrastructure as Code: Terraform
. Cloud Provider: AWS (ECS, ALB, RDS, S3, CloudFront, WAF)
. Security: AWS WAF, Let's Encrypt SSL
. CI/CD: GitHub Actions


🎯 Future Enhancements
✅ Add Prometheus & Grafana for monitoring
✅ Implement AWS Lambda for automated log processing
✅ Set up AWS CloudWatch for real-time alerts

