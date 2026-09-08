#!/bin/bash

apt-get update -y
apt-get install -y nginx

systemctl enable nginx
systemctl start nginx

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Nginx HA Project</title>
</head>

<body>

    <h1>Welcome to Nginx Web Server</h1>

    <h2>Deployed using Terraform</h2>

    <p>Server: $(hostname)</p>

    <p>Project: Nginx High Availability Web Application</p>

</body>
</html>
EOF