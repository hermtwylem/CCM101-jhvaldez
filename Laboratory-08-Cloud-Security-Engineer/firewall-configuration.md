# Firewall Configuration

## 1. Allow SSH

```bash
sudo ufw allow ssh
```

This command allows SSH connections so administrators can remotely manage the server.

## 2. Configure Default Policies

```bash
sudo ufw default deny incoming
sudo ufw default allow outgoing
```

These commands block incoming connections by default while allowing outgoing connections.

## 3. Enable the Firewall

```bash
sudo ufw enable
sudo ufw status verbose
```

These commands activate UFW and display its current status and default policies.

## 4. Allow the Web Application

```bash
sudo ufw allow 8080/tcp
sudo ufw status numbered
```

This allows incoming TCP traffic on port 8080, which is used by the web application.

## 5. Test the Application

```bash
curl http://localhost:8080
```

This command sends a request to the local web application to check whether it responds.

## 6. Security Precaution

If I enable UFW before allowing SSH, incoming SSH connections may be blocked, preventing remote administrators from accessing the server.
