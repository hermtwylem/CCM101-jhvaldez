# Laboratory Activity 7: The Cloud Operations Engineer

## Mission Overview

In this laboratory activity, I performed basic cloud server monitoring using the KillerCoda Ubuntu Playground. I checked the server's memory and disk storage, deployed an Nginx web server using Docker, generated website traffic, and monitored application logs and container performance.

## Objectives

- Check the server's RAM and disk capacity.
- Monitor CPU activity and running processes.
- Deploy an Nginx container using Docker.
- Generate successful and unsuccessful HTTP requests.
- Examine application logs and container resource usage.
- Document the results using Markdown.

## Monitoring Commands Executed

| Command | Purpose |
|---|---|
| `free -h` | Checks memory usage. |
| `df -h /` | Checks root filesystem storage. |
| `top` | Monitors CPU activity and running processes. |
| `docker --version` | Checks the installed Docker version. |
| `docker run -d --name client-website -p 8080:80 nginx` | Deploys the Nginx container. |
| `docker ps` | Checks running containers. |
| `curl http://localhost:8080` | Sends an HTTP request to the website. |
| `curl http://localhost:8080/hidden-admin-page` | Tests a missing webpage. |
| `docker logs client-website` | Displays application logs. |
| `docker stats` | Monitors container resource usage. |

## Skills Learned

- Linux server monitoring
- Docker container deployment
- HTTP request testing
- Application log analysis
- Real-time resource monitoring
- Technical documentation using Markdown

## Conclusion

This activity helped me understand the importance of monitoring a cloud server and its applications. By checking system resources, testing the website, reviewing logs, and monitoring Docker metrics, I learned how to identify possible performance problems and check whether a web server is working properly.

## Evidence

Screenshots are stored in the `screenshots/` folder.

