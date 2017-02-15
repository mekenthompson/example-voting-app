#!/bin/bash
# Jenkins Bootstrap for ACS Kubernetes
set -x #echo on
wget https://raw.githubusercontent.com/mekenthompson/kubectl/master/kubectl -O ~/kubectl
chmod +x kubectl
sudo cp kubectl /usr/local/bin/kubectl
sudo mkdir /home/tomcat/.kube
sudo cp config /home/tomcat/.kube/config
sudo chown -R tomcat:tomcat /home/tomcat/.kube
sudo usermod -aG docker tomcat
sudo /opt/bitnami/ctlscript.sh restart
set +x #echo off