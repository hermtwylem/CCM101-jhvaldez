# System Baseline Report

## 1. Introduction

This report presents the initial health check of the Linux server using the KillerCoda Ubuntu Playground. The purpose is to check the server's available memory and disk storage before deploying a web application.

## 2. Memory Check

**Command used:**

```bash
free -h
```

**Results:**

- Total RAM: [Enter the value under the `total` column in the `Mem` row]
- Used RAM: [Enter the value under the `used` column]
- Available RAM: [Enter the value under the `available` column]

**Explanation:**

Checking RAM helps determine whether the server has enough memory to handle applications and incoming user requests without experiencing performance problems.

## 3. Disk Storage Check

**Command used:**

```bash
df -h /
```

**Results:**

- Root filesystem capacity: [Enter the value under `Size`]
- Used storage: [Enter the value under `Used`]
- Available storage: [Enter the value under `Avail`]

**Why is checking disk space important?**

Checking disk space before a massive traffic surge is important because the server needs enough storage for application files, logs, temporary files, and other data to prevent storage-related problems.

## 4. CPU and Process Monitoring

**Command used:**

```bash
top
```

The `top` command displays running processes, CPU activity, and memory usage. It helps an administrator observe the server's current workload and identify processes that may be using too many resources.

## 5. Conclusion

The baseline check provides information about the server's initial resources before running the Nginx container. These results can help identify resource limitations and provide a starting point for future monitoring.

## Screenshots

- `screenshots/memory-check.png`
- `screenshots/disk-check.png`

