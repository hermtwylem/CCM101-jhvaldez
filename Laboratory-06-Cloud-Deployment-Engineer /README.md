# Laboratory 06 - Cloud Deployment Engineer

## Mission Overview

In this laboratory activity, I deployed a multi-tier private cloud storage application using Docker Compose. The application uses Nextcloud as the web application and MariaDB as the database. Docker Compose allowed me to define and deploy both containers using one YAML configuration file.

## Objectives

- Explain the concept of a multi-tier application architecture.
- Understand the purpose of a `docker-compose.yml` file.
- Use the Linux `nano` editor to create a configuration file.
- Deploy Nextcloud and MariaDB using Docker Compose.
- Understand Infrastructure as Code (IaC).
- Document the deployment process using Markdown.

## Commands Executed

```bash
mkdir nextcloud-deployment
cd nextcloud-deployment
nano docker-compose.yml
docker-compose up -d
docker-compose ps
docker-compose down
