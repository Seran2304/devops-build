# 🚀 DevOps Project – React Application Deployment

## 📌 Project Overview

This project demonstrates end-to-end DevOps implementation including:

* Docker containerization
* CI/CD pipeline using Jenkins
* Deployment on AWS EC2
* Monitoring using Uptime Kuma

---

## 🔗 Project Details

**GitHub Repository:**
https://github.com/Seran2304/devops-build

**Deployed Application URL:**
http://3.83.111.197

**Docker Images:**

* Dev Repo: seran2304/dev
* Prod Repo: seran2304/prod

---

## 🐳 Docker Setup

* Application is containerized using Docker
* Custom Dockerfile created
* docker-compose file included (optional usage)

---

## ⚙️ CI/CD Pipeline (Jenkins)

* Jenkins pipeline configured using Jenkinsfile
* Automatic build triggered from GitHub (dev & master branches)
* Pipeline stages:

  * Build Docker Image
  * Push to Docker Hub
  * Deploy Application

---

## 🖥️ AWS Deployment

* Application deployed on AWS EC2 (t2.micro)
* Security Group configured:

  * Port 80 → Public access
  * Port 8080 → Jenkins access
  * Port 22 → Restricted to my IP

---

## 📊 Monitoring

Monitoring implemented using Uptime Kuma:

* Application health check configured
* Alert system enabled (Email/Telegram)
* Alerts triggered when application goes DOWN

---

## 📸 Screenshots

All required screenshots are available in the `screenshots/` folder:

* Jenkins (login, configuration, console output)
* AWS (EC2 instance, security group)
* Docker Hub repositories
* Deployed application
* Monitoring dashboard (UP & DOWN status)
* Alert configuration

---

## 📂 Repository Structure

* Dockerfile
* docker-compose.yml
* Jenkinsfile
* build.sh
* deploy.sh
* screenshots/
* README.md

---

## ✅ Conclusion

This project successfully demonstrates a complete DevOps lifecycle:
Code → Build → Dockerize → Deploy → Monitor → Alert

