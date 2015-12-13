#!/bin/bash

sed -i.bak 's/main$/main universe/' /etc/apt/sources.list
echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty universe" >> /etc/apt/sources.list
echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty universe" >> /etc/apt/sources.list
echo "deb http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe" >> /etc/apt/sources.list
echo "deb-src http://us.archive.ubuntu.com/ubuntu/ trusty-updates universe" >> /etc/apt/sources.list
apt-get update && apt-get install -y ca-certificates sudo curl git-core
dpkg-divert --local --rename --add /sbin/initctl && ln -s /bin/true /sbin/initctl

locale-gen  en_US.UTF-8
