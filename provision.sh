#!/bin/bash
echo "--------------------------------------------------"
echo "Starting Automated Web Server Setup..."
echo "--------------------------------------------------"

# 1. Update the System
echo "[1/4] Updating system repositories..."
sudo apt-get update -y > /dev/null 2>&1

# 2. Install Nginx
echo "[2/4] Installing Nginx Web Server..."
sudo apt-get install nginx -y > /dev/null 2>&1

# 3. Configure Firewall
echo "[3/4] Configuring Firewall Rules..."
sudo ufw allow 'Nginx HTTP'
sudo ufw allow OpenSSH
sudo ufw --force enable

# 4. Deploy Custom Page
echo "[4/4] Deploying Portfolio Page..."
current_time=$(date)
cat <<EOF | sudo tee /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>DevOps Portfolio</title>
    <style>
        body { font-family: monospace; background-color: #1e1e1e; color: #00ff00; padding: 50px; }
        .box { border: 2px solid #00ff00; padding: 20px; max-width: 600px; }
    </style>
</head>
<body>
    <div class="box">
        <h1>Server Status: ONLINE</h1>
        <p>Managed by: <strong>Sephira111</strong></p>
        <p>Deployment Time: $current_time</p>
        <p>System: Ubuntu Linux</p>
    </div>
</body>
</html>
EOF

# Restart Nginx to apply changes
sudo systemctl restart nginx

echo "--------------------------------------------------"
echo "SETUP COMPLETE! Go to http://$(hostname -I | awk '{print $1}')"
echo "--------------------------------------------------"
