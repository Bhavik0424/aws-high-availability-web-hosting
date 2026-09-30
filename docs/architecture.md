# AWS Architecture

## Architecture Overview

The project uses a custom AWS VPC containing two public subnets in separate Availability Zones.

Each subnet contains an Amazon Linux EC2 web server running Apache.

Internet traffic reaches the Application Load Balancer, which forwards HTTP requests to the healthy EC2 instances.

## Network Design

VPC:

10.0.0.0/16

Public Subnet A:

10.0.1.0/24

Public Subnet B:

10.0.2.0/24

Internet Gateway:

bhavik-igw

Route Table:

bhavik-public-rt

## Security

Load Balancer Security Group:

HTTP - Port 80 - Internet

Web Server Security Group:

SSH - Port 22 - My IP

HTTP - Port 80 - Load Balancer Security Group

## Traffic Flow

Internet

↓

Application Load Balancer

↓

Target Group

↓

EC2 Server 1
+
EC2 Server 2

↓

Apache Web Server

## High Availability Test

One EC2 instance was stopped during testing.

The Application Load Balancer detected the unhealthy instance and continued serving traffic through the remaining healthy EC2 instance.