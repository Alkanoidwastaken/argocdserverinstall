# Install ARGOCD with a few commands!
Install argocd, kubectl, java, python39 and nodejs with one simple script! This should work for most RedHat based systems with dnf!
```
Prerequisites:
vim, git
(to install: sudo dnf install vim git)
```
Before we begin we need to do a few simple things! Do not worry, they won't take too long and the script will do the rest of the work!
First we need to add the kubernetes repository.
```
sudo touch /etc/yum.repos.d/kubernetes.repo
sudo vim /etc/yum.repos.d/kubernetes.repo
```
Now copy and paste this text into this file
```
[kubernetes]
name=Kubernetes
baseurl=https://mirrors.aliyun.com/kubernetes/yum/repos/kubernetes-el7-x86_64/
enabled=1
gpgcheck=1
repo_gpgcheck=1
gpgkey=https://mirrors.aliyun.com/kubernetes/yum/doc/yum-key.gpg https://mirrors.aliyun.com/kubernetes/yum/doc/rpm-package-key.gpg
```
Now type **:wq** to save the file

Finally we need to make and write to a file to make java work properly.
Follow these commands
```
sudo touch /etc/profile.d/java.sh
sudo vim /etc/profile.d/java.sh
```
Then copy and paste this text into this file
```
JAVA_HOME="/usr/lib/jvm/jdk-17.0.2"
```
Now we can run the script
```
git clone 
chmod +x setup.sh
sudo ./setup.sh
```
All good to go.

So you know I have only installed kubernetes and argocd modules and clients. You will have to configure the rest yourself.
