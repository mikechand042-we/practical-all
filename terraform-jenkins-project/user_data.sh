#!/bin/bash

set -euxo pipefail

apt-get update -y

apt-get install -y apache2

cat > /var/www/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
    <title>Terraform Jenkins Project</title>
</head>
<body>
    <h1>Welcome to My DevOps Project!</h1>
    <h2>EC2 Created Successfully by Terraform</h2>
    <h3>user_data.sh Executed Successfully!</h3>
    <p>Server Hostname: $(hostname)</p>
    <p>Execution Time: $(date -u)</p>
</body>
</html>
EOF

systemctl enable apache2
systemctl restart apache2

echo "User Data Execution Completed Successfully"