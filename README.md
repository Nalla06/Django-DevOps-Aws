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

Django-Devops-Aws/
│── dockerizing-django/          # Step 1: Containerizing Django with Postgres, Gunicorn & Nginx
│── aws-s3-static-media/         # Step 2: Storing Static & Media Files on AWS S3
│── deploying-aws-ecs-terraform/ # Step 3: Deploying to AWS ECS with Terraform
│── security-lets-encrypt-waf/   # Step 4 & 5: SSL & Web Application Firewall (WAF)
│── auto-scaling-ecs/            # Step 6: Implementing Auto Scaling for ECS
│── ci-cd-terraform-github-actions/ # Step 7: Setting Up CI/CD Pipeline
│── README.md                    # Project Overview & Setup Guide

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

