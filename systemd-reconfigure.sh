#!/bin/sh
echo "reconfiguring systemd"
systemctl daemon-reload
systemctl stop display-manager.service
systemctl disable display-manager.service
systemctl enable ly.service
systemctl start display-manager.service
