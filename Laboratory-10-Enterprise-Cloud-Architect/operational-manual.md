# Operational Manual — CloudNova Private Cloud

## 1. Project overview
This project deploys Nextcloud with MariaDB on an Ubuntu Server virtual machine. Docker Compose manages the two linked containers. Named Docker volumes keep the application files and database files when containers are recreated or the VM is rebooted.

**Demo scope:** This is a learning/lab deployment, not a fully production-ready service. For real enterprise use, add HTTPS with a trusted certificate, tested off-host backups, monitoring/alerting, patch procedures, and a documented recovery test.

## 2. Architecture
See `architecture-diagram.png`. The host laptop runs a type-2 hypervisor. The Ubuntu Server VM runs Docker, Docker Compose, and UFW. The Nextcloud web container publishes port 8080; MariaDB is only reachable on the internal Docker network. Persistent volumes store Nextcloud and database data.

## 3. VM and network setup
1. Create a VM in VirtualBox or another type-2 hypervisor.
2. Install Ubuntu Server from an official ISO.
3. Give the VM adequate resources for the host computer; for a classroom demo, 2 CPUs and 4 GB RAM are a reasonable starting point if available.
4. Configure bridged networking or a suitable host-only/NAT port-forwarding setup so the host browser can reach the VM.
5. Update packages:
   ```bash
   sudo apt update && sudo apt upgrade -y
   ```
6. Record the VM IP address:
   ```bash
   hostname
   ip addr
   ```

## 4. Install Docker Engine and Compose plugin
Use the official Docker Engine installation instructions for Ubuntu. After installation, verify:
```bash
docker --version
docker compose version
sudo systemctl enable --now docker
```
If using Docker without `sudo`, add your account to the `docker` group only if you understand that this grants root-equivalent control. For a safer lab default, use `sudo docker ...`.

## 5. Configure and deploy the application
1. Copy this folder to the Ubuntu VM.
2. Create the environment file and set strong, unique values:
   ```bash
   cp .env.example .env
   nano .env
   chmod 600 .env
   ```
3. Start the stack:
   ```bash
   sudo docker compose up -d
   sudo docker compose ps
   sudo docker compose logs --tail=100
   ```
4. In a browser, open `http://VM_IP_ADDRESS:8080` and complete the initial Nextcloud setup. Select **MySQL/MariaDB** and use:
   - Database user: value of `MYSQL_USER` in `.env`
   - Database password: value of `MYSQL_PASSWORD` in `.env`
   - Database name: value of `MYSQL_DATABASE` in `.env`
   - Database host: `db`
5. Do not commit `.env` or backups to a public repository. Keep `.env` private.

## 6. Firewall and port management
Enable a default-deny incoming policy while preserving SSH access:
```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow OpenSSH
sudo ufw allow 8080/tcp
sudo ufw enable
sudo ufw status verbose
```
**Important:** Docker-published ports can interact with UFW in ways that may bypass ordinary UFW rules. Verify the actual exposure from another machine and configure Docker's supported firewall rules or bind the web port to a trusted interface. For a classroom VM, restrict access to the host-only/controlled network when possible. Never expose this demo directly to the public internet without HTTPS and additional hardening. MariaDB has no published host port in this Compose file.

## 7. Persistent storage and reboot test
Inspect named volumes:
```bash
sudo docker volume ls
sudo docker compose down
sudo docker compose up -d
```
Do not use `docker compose down -v`, because `-v` deletes the named volumes. Confirm that previously created Nextcloud test data is still present after restarting the stack and rebooting the VM.

## 8. Automated backup
The script `automation-script.sh` exports the MariaDB database and archives the Nextcloud data volume. Check the volume name in the script if your Compose project directory has a different name; Compose normally prefixes named volumes with the project name. Test manually:
```bash
chmod +x automation-script.sh
./automation-script.sh
ls -lh backups/
```
Set a daily cron schedule (for example, 2:00 AM):
```bash
crontab -e
```
Add a line using the **absolute path** to the script:
```cron
0 2 * * * /absolute/path/to/Laboratory-10-Enterprise-Cloud-Architect/automation-script.sh >> /absolute/path/to/Laboratory-10-Enterprise-Cloud-Architect/backup.log 2>&1
```
Cron uses a limited environment. Use absolute paths and verify the log and backup files. Keep a copy off the VM for real disaster recovery. A backup is not proven until restoration has been tested.

## 9. Health checks and troubleshooting
```bash
sudo docker compose ps
sudo docker compose logs -f nextcloud
sudo docker compose logs -f db
sudo ufw status verbose
df -h
free -h
```
- If Nextcloud cannot connect to the database, check that the database is healthy and the `.env` values match.
- If the browser cannot connect, verify the VM IP, network mode, port 8080, and firewall path.
- If a container restarts repeatedly, inspect its logs before changing settings.
- Do not delete volumes while troubleshooting unless you intentionally want to erase stored data.

## 10. Maintenance and recovery
- Install Ubuntu security updates regularly.
- Update container images during a maintenance window and take backups first.
- Monitor disk space and container health.
- Restrict SSH access and use SSH keys where possible.
- Store secrets outside version control.
- For recovery, restore the database dump and Nextcloud files to a controlled test environment first; confirm version compatibility and file ownership before replacing production data.

## 11. Repository checklist
- `README.md`
- `architecture-diagram.png`
- `docker-compose.yml`
- `.env.example` (no real secrets)
- `automation-script.sh`
- `operational-manual.md`
- `final-reflection.md`

## 12. References
- Docker Engine installation: https://docs.docker.com/engine/install/ubuntu/
- Docker Compose: https://docs.docker.com/compose/
- Nextcloud Docker image: https://hub.docker.com/_/nextcloud
- MariaDB Docker image: https://hub.docker.com/_/mariadb
- Ubuntu UFW guide: https://help.ubuntu.com/community/UFW
