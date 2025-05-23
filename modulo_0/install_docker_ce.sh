#!/bin/bash
# Script testado com SO Debian
# Nome da distro (ubuntu, debian)
OS_NAME=$(lsb_release -is | tr '[:upper:]' '[:lower:]')
# Codename da versão (jammy, focal, bullseye, etc.)
OS_VERSION=$(lsb_release -cs)
echo "============================================"
echo "Docker para $OS_NAME $OS_VERSION"
echo "============================================"
# Instala dependências necessárias
sudo apt update
sudo apt install -y ca-certificates curl gnupg 
# Adiciona a chave GPG do Docker
sudo mkdir -p /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/debian/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
sudo chmod a+r /etc/apt/keyrings/docker.gpg
# Adiciona o repositório oficial do Docker
echo "deb [arch=amd64 signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/debian $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# Instala o Docker CE e seus componentes
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin
# Inicia e habilita o serviço Docker
sudo systemctl start docker
sudo systemctl enable docker
# Adiciona o usuário atual ao grupo Docker (para não precisar adicionar "sudo" ao comando)
sudo usermod -aG docker $USER
# Exibe as versões instaladas
docker --version
docker compose version
