
# Operational Manual
## Mission 10: The Enterprise Cloud Architect

### 1. Project Overview
This project deploys Nextcloud and MariaDB on an
Ubuntu Server virtual machine using Docker Compose.
It includes persistent storage, firewall rules, and
automated backups.

### 2. System Requirements
- VirtualBox or another Type 2 hypervisor
- Ubuntu Server
- Docker Engine
- Docker Compose
- UFW and Cron
- Web browser

### 3. Deployment
1. Install Ubuntu Server.
2. Install Docker Engine and Docker Compose.
3. Create the deployment directory.
4. Configure the docker-compose.yml file.
5. Create the .env file with strong passwords.
6. Run: sudo docker compose up -d
7. Open http://YOUR-VM-IP:8080.

### 4. Security
- UFW denies incoming traffic by default.
- SSH and the application port are explicitly allowed.
- The database port is not published on the host.
- Database passwords are stored in a protected .env file.
- HTTPS should be configured before production use.

### 5. Persistent Storage
The Docker volumes nextcloud_db_data and
nextcloud_app_data retain database and application
data independently of container recreation.

### 6. Backup and Recovery
The automation-script.sh file backs up the MariaDB
database and Nextcloud application volume.
Cron schedules the backup every day at 2:00 AM.
Backups should be copied off the VM and periodically
tested through a restore procedure.

### 7. Useful Commands
Check services:
sudo docker compose ps

View logs:
sudo docker compose logs --tail=50

Restart services:
sudo docker compose restart

Check firewall:
sudo ufw status verbose

Check scheduled tasks:
sudo crontab -l

### 8. Maintenance
- Install security updates regularly.
- Monitor disk space and container logs.
- Check backup logs.
- Test database and file restoration.
- Review firewall rules and credentials.

