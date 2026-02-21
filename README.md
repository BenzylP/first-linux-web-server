# Automated Nginx Server Provisioning

## Project Overview
This project demonstrates how to automate the deployment of a Linux web server using Bash scripting. It replaces manual configuration with a reproducible script (Infrastructure as Code).

## Technologies Used
* OS: Ubuntu Linux 24.04 (LTS)
* Web Server: Nginx
* Scripting: Bash
* Networking: SSH, UFW Firewall

## What the Script Does
1. System Update: Automatically updates package repositories.
2. Installation: Installs Nginx web server silently.
3. Security: Configures UFW firewall to allow SSH (Port 22) and HTTP (Port 80) traffic.
4. Deployment: Generates a custom HTML landing page with dynamic server stats.
5. Service Management: Restarts Nginx to apply changes instantly.

## How to Run
chmod +x provision.sh
sudo ./provision.sh
