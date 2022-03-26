#!/bin/bash
sudo dnf update;
sudo dnf install git wget curl vim bash-completion;
sudo dnf install gcc openssl-devel bzip2-devel libffi-devel zlib-devel;
sudo dnf install python39;
sudo dnf install java-17-openjdk java-17-openjdk-devel;
sudo dnf module install nodejs:16;
sudo curl -sSL -o /usr/local/bin/argocd https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64;
sudo chmod +x /usr/local/bin/argocd;
sudo yum install -y kubelet kubeadm kubectl;
sudo systemctl enable kubelet
sudo systemctl start kubelet
