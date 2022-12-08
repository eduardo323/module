
#!/bin/bash

cat > index.html <<EOF
<h1>Hello, Prod Prod World! Yay!</h1>
<p>Current DB address: ${db_address}</p>
<p>Current DB port: ${db_port}</p>
EOF

nohup busybox httpd -f -p ${server_port} &
