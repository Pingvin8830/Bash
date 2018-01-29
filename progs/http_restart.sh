#!/bin/bash

systemctl stop httpd
sleep 10
systemctl start httpd
sleep 10

