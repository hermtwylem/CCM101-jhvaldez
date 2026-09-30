# Docker Compose Guide

## What is Docker Compose?

Docker Compose is a tool used to define and run multiple containers as one application. It uses a YAML file to describe the services, settings, ports, and environment variables needed by the application.

## The `services:` Block

The `services:` block defines the containers that will be created and managed by Docker Compose.

In this laboratory, there are two services:

```yaml
services:
  database:
    ...
  app:
    ...
