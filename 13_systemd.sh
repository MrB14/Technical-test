#!/bin/bash
cat <<EOL > /etc/systemd/system/simple_service.service
[Unit]
Description=Simple Python Service

[Service]
ExecStart=/usr/bin/python3 /path/to/script.py
Restart=always

[Install]
WantedBy=multi-user.target
EOL
systemctl daemon-reload
systemctl enable simple_service.service
