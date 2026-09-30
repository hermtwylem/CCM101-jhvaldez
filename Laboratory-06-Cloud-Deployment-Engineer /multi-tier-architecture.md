# Multi-Tier Architecture

## What is Two-Tier Architecture?

A two-tier architecture is a system that separates an application into two main parts: the application tier and the database tier. In this laboratory, Nextcloud works as the application tier while MariaDB works as the database tier.

## The Web/Application Tier

The web/application tier is responsible for providing the user interface and handling requests from users. In this laboratory, the Nextcloud container provides the web interface that users access through a browser.

## The Database Tier

The database tier stores important and persistent information used by the application. MariaDB stores information such as user accounts, file metadata, and other Nextcloud data.

## Why Separate Them?

Separating the web application and database into different containers makes the system easier to manage and maintain. Each container has a specific job, and the containers can be updated, restarted, or scaled separately without putting everything into one container.
