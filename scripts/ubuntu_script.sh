#! /bin/bash

NOW="$(date)"
FILE=/Users/velagas/logs/backup.log
LINE_SEP="--------------------------------"

echo $LINE_SEP
echo $NOW
echo $LINE_SEP
apt-get update && apt-get upgrade -y
apt-get remove docker docker-engine docker.io containerd runc
apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y

#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
#add-apt-repository \
 #  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  # $(lsb_release -cs) \
   #stable"
#apt-get update && apt-get install docker-ce docker-ce-cli containerd.io





exit 0