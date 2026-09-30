# AWS High Availability Web Hosting Infrastructure

## Project Overview

Designed and deployed a high-availability web hosting infrastructure on Amazon Web Services (AWS) using Amazon EC2, Amazon VPC, Amazon Linux, Apache HTTP Server, Application Load Balancer, Security Groups, and GitHub.

The project demonstrates practical knowledge of AWS cloud infrastructure, Linux server administration, networking, security, load balancing, health checks, and high-availability architecture.

---

## Objectives

- Deploy Linux-based web servers on AWS EC2.
- Design a custom AWS VPC network.
- Configure public subnets across multiple Availability Zones.
- Configure Internet Gateway and route tables.
- Implement network access control using Security Groups.
- Install and configure Apache HTTP Server on Amazon Linux.
- Configure an Application Load Balancer.
- Configure target groups and health checks.
- Test high availability by stopping one EC2 instance.
- Manage project files using Git and GitHub.

---

## Technologies and Tools

### Cloud Platform
- Amazon Web Services (AWS)
- Amazon EC2
- Amazon VPC
- Application Load Balancer (ALB)
- Target Groups
- Internet Gateway
- Security Groups
- Route Tables
- Availability Zones

### Operating System and Server
- Amazon Linux
- Apache HTTP Server
- Linux
- SSH
- systemctl
- dnf
- Bash

### Networking
- IPv4
- CIDR
- VPC
- Public Subnets
- Route Tables
- Internet Gateway
- TCP/IP
- HTTP
- SSH
- Load Balancing
- Health Checks

### Version Control
- Git
- GitHub

---

## AWS Architecture

```text
                    Internet
                       |
                       |
                       v
            Application Load Balancer
                       |
                       v
                 Target Group
                  /         \
                 /           \
                v             v
        EC2 Web Server 1   EC2 Web Server 2
        Amazon Linux       Amazon Linux
        Apache HTTPD       Apache HTTPD
             |                  |
             +--------+---------+
                      |
                      v
                  AWS VPC
                 10.0.0.0/16