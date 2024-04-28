#!/bin/bash

# Verifica se o usuário é root
if [ "$(id -u)" -ne 0 ]; then
    echo "Este script precisa ser executado como root. Executando sudo su..."
    sudo su
fi

# Verifica se o usuário está no diretório /root/
if [ "$PWD" != "/root" ]; then
    echo "Mudando para o diretório /root/"
    cd /root || exit
fi

# Verifica se está usando Ubuntu 20.04
if ! grep -q 'Ubuntu 20.04' /etc/os-release; then
    echo "Este script recomenda o uso do Ubuntu 20.04."
    sleep 3
fi

# Resto do seu script
sudo apt-get install -y apt-utils
sudo apt-get install -y dialog
sudo apt update
sudo apt upgrade -y

# Verifica se o arquivo andromeda.v1 já existe
if [ -e "SetupOrion" ]; then
    echo "O arquivo andromeda.v1 já existe. Removendo..."
    rm andromeda.v1
fi

# Baixa o script
https://bit.ly/SinergiaV1Lucrativa

# Verifica se o download foi bem-sucedido
if [ $? -eq 0 ]; then
    # Executa o script baixado
    chmod +x andromeda.v1
    ./andromeda.v1
else
    echo "Falha ao baixar o script SetupOrion"
fi

sudo apt update
sudo apt upgrade -y

clear
rm andromeda.v1
