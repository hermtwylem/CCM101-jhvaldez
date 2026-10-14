# Security Audit Report

## 1. Principle of Least Privilege (PoLP)

The Principle of Least Privilege means giving users and applications only the permissions they need to perform their tasks. This is important in cloud computing because it reduces the risk of unauthorized access and accidental changes to important resources.

## 2. Attack Surface

The attack surface refers to all the possible entry points that an attacker could use to access a virtual machine. These include open network ports, running services, and exposed applications. Reducing unnecessary entry points helps improve server security.

## 3. Default Deny Policy

A Default Deny policy blocks all incoming network traffic unless it is specifically allowed by a firewall rule. It is safer because only approved services can receive connections, reducing the chances of unauthorized access.

## 4. Security Audit Summary

The purpose of this activity is to inspect a Linux server, deploy a web application, and configure UFW to protect it. SSH access and TCP port 8080 will be allowed, while other incoming traffic will be blocked by default.
