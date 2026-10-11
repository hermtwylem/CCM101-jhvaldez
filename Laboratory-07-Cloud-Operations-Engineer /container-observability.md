# Container Observability Report

## 1. Nginx Container Deployment

The Nginx web server was deployed using Docker with the container name `client-website`. Port `8080` on the host was mapped to port `80` inside the container so the website could be accessed locally.

**Command used:**

```bash
docker run -d --name client-website -p 8080:80 nginx
```

## 2. Traffic Simulation

Three HTTP requests were sent to the Nginx website using `curl`. A fourth request was sent to `/hidden-admin-page` to simulate a user accessing a webpage that does not exist.

**Commands used:**

```bash
curl http://localhost:8080
curl http://localhost:8080
curl http://localhost:8080
curl http://localhost:8080/hidden-admin-page
```

The successful requests should produce HTTP `200` responses, while the missing-page request should produce HTTP `404`.

## 3. Application Logs

**Command used:**

```bash
docker logs client-website
```

**404 error log:**

Paste the exact line from your terminal logs that contains `GET /hidden-admin-page` and the `404` status code here.

**Why are application logs important?**

Application logs help administrators understand what happened when users accessed a website. They can reveal errors, failed requests, and other problems that help identify the cause of an issue.

## 4. Real-Time Container Metrics

**Command used:**

```bash
docker stats
```

**Results from my screenshot:**

- Container name: `client-website`
- Memory usage: [Enter your actual MEM USAGE value]
- CPU usage: [Enter your actual CPU % value]
- Memory limit: [Enter the value after the slash in MEM USAGE / LIMIT]
- Network I/O: [Enter the value displayed in NET I/O]

**Explanation:**

Docker metrics show how much CPU, memory, and network activity a container is using. These values help administrators check whether a container is operating within its available resources.

## 5. Conclusion

The Nginx container was tested by generating HTTP requests and examining its logs and resource usage. Logs help explain individual events and errors, while metrics provide numerical information about the container's performance.

## Screenshots

- `screenshots/install-nginx.png`
- `screenshots/simulation1.png`
- `screenshots/simulation2.png`
- `screenshots/docker-logs.png`
- `screenshots/container-metrics.png`

