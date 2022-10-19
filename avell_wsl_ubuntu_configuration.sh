#!/bin/bash

apt-get update

# 7zip
apt install p7zip-full -y

# az cli
sudo apt remove azure-cli -y && sudo apt autoremove -y
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

# jq
apt install jq -y

# ansible
apt install ansible -y

# packer
apt install packer -y

# terraform
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"
sudo apt install terraform

# sshpass
apt install sshpass -y

# pip
apt install python3-pip -y
pip3 install -r requirements.txt

# Powershell
sudo apt-get update
sudo apt-get install -y wget apt-transport-https software-properties-common
wget -q https://packages.microsoft.com/config/ubuntu/20.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
sudo apt-get update
sudo apt-get install -y powershell
# pwsh - Start PowerShell

# Update ~/.bashrc
cat <<EOT >> ~/.bashrc

# Show current git branch with colors in Bash prompt
parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
export PS1="\u@\h \[\e[32m\]\w \[\e[91m\]\$(parse_git_branch)\[\e[00m\]$ "
EOT

source ~/.bashrc

# Update ~/.bash_aliases
cat <<EOT >> ~/.bash_aliases
alias py3="python3"

alias kubectl="minikube kubectl --"
alias k="minikube kubectl --"
alias mk="minikube"

alias d="docker"
alias dc="docker compose"
EOT