# Laboratory 08: The Cloud Security Engineer

## Mission Overview

This laboratory activity focuses on securing a Linux server using the Uncomplicated Firewall (UFW). I deployed an Nginx web application and configured firewall rules to allow SSH and web traffic on port 8080 while blocking other incoming traffic by default.

## Objectives

- Understand the Principle of Least Privilege.
- Identify the attack surface of a virtual machine.
- Audit network ports and firewall rules.
- Configure UFW using a Default Deny policy.
- Allow specific network ports.
- Document security configurations and save screenshots as evidence.

## Commands Executed

```bash
docker --version
docker run -d --name secure-web-app -p 8080:80 nginx
curl http://localhost:8080
sudo ufw allow ssh
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable
sudo ufw status verbose
sudo ufw allow 8080/tcp
sudo ufw status numbered
```

## Skills Learned

In this activity, I learned how to deploy an Nginx container, test a web application, and configure firewall rules in Linux. I also learned why SSH access must be allowed before enabling the firewall and why limiting open ports helps protect a cloud server.

## Screenshots

The `screenshots/` folder contains evidence of the running web application, activated firewall, and allowed port 8080.

