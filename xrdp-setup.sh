#!/bin/bash

yum group install "Server with GUI" -y
yum install tigervnc-server -y
wget https://dl.fedoraproject.org/pub/epel/epel-release-latest-9.noarch.rpm
yum install xrdp -y
systemctl start xrdp.service
firewall-cmd --permanent --add-port=3389/tcp
firewall-cmd --reload
