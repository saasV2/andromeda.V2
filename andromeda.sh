#!/bin/bash

# Verifica se o usuário é root
if [ "$(id -u)" -ne 0 ]; then
    echo "Este script precisa ser executado como root. Executando sudo su..."
    sudo su
fi

# Verifica se está usando Ubuntu 20.04
if ! grep -q 'Ubuntu 20.04' /etc/os-release; then
    echo "Este script recomenda o uso do Ubuntu 20.04."
    sleep 3
fi

# Instalação de pacotes necessários
sudo apt-get install -y apt-utils
sudo apt-get install -y dialog

# Atualizações do sistema
sudo apt update
sudo apt upgrade -y

# Verifica se o arquivo SinergiaV1Lucrativa já existe e remove, se existir
if [ -e "SinergiaV1Lucrativa" ]; then
    echo "O arquivo SinergiaV1Lucrativa já existe. Removendo..."
    rm SinergiaV1Lucrativa
fi

# Baixa o script e o salva como SinergiaV1Lucrativa
curl -sSL https://raw.githubusercontent.com/saasV1/andromeda.v1/refs/heads/main/andromeda.v1.sh

# Verifica se o download foi bem-sucedido
if [ $? -eq 0 ]; then
    # Executa o script baixado
    chmod +x SinergiaV1Lucrativa
    ./SinergiaV1Lucrativa
else
    echo "Falha ao baixar o script SinergiaV1Lucrativa"
fi

# Atualizações do sistema
sudo apt update
sudo apt upgrade -y

# Limpa e remove o arquivo SinergiaV1Lucrativa
clear
rm SinergiaV1Lucrativa
