# Laboratory 10 — Mission 10: The Enterprise Cloud Architect

## Project
**CloudNova Private Cloud:** Nextcloud + MariaDB on Ubuntu Server using Docker Compose.

This folder contains the architecture diagram, Compose file, safe environment template, backup automation script, operational manual, and final reflection.

## Quick start
1. Install Ubuntu Server in a VM and install Docker Engine plus the Compose plugin.
2. Copy `.env.example` to `.env`, set unique strong passwords, and run `chmod 600 .env`.
3. Start with `sudo docker compose up -d`.
4. Open `http://VM_IP_ADDRESS:8080` from a browser that can reach the VM.
5. Follow `operational-manual.md` for UFW, backup testing, and cron setup.

## Important
- This folder does not contain real credentials. Never commit `.env` or backup files.
- The deployment must be tested in your own VM before you claim it is working.
- This is a lab design, not a public-internet production deployment. Read the security notes in the manual.

