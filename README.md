Automated Nginx Server Provisioning
Project Overview
This project demonstrates how to automate the deployment of a Linux web server using Bash scripting. It replaces manual configuration with a reproducible script (Infrastructure as Code).

Technologies Used
OS: Ubuntu Linux 24.04 (LTS)

Web Server: Nginx

Scripting: Bash

Networking: SSH, UFW Firewall

What the Script Does
System Update: Automatically updates package repositories.

Installation: Installs Nginx web server silently.

Security: Configures UFW firewall to allow SSH (Port 22) and HTTP (Port 80) traffic.

Deployment: Generates a custom HTML landing page with dynamic server stats.

Service Management: Restarts Nginx to apply changes instantly.

How to Run
Bash
chmod +x provision.sh
sudo ./provision.sh
