#!/bin/bash

## Cores
amarelo="\e[33m"
verde="\e[32m"
branco="\e[97m"
reset="\e[0m"

echo -e "$amarelo===================================================================================================$reset"
echo -e "$amarelo=            Baixando e executando o script Andromeda...             $reset"
echo -e "$amarelo===================================================================================================$reset"

# Verifica se o curl está instalado
if ! command -v curl &> /dev/null; then
    echo "curl não está instalado. Instalando..."
    sudo apt update && sudo apt install curl -y
fi

# Baixa o script
curl -sSL https://raw.githubusercontent.com/saasV1/andromeda.v1/refs/heads/main/andromeda.v1.sh -o ~/andromeda.v1.sh

# Verifica se o download foi bem-sucedido
if [ $? -eq 0 ]; then
    echo -e "$verde Script baixado com sucesso! $reset"
else
    echo -e "$amarelo Erro ao baixar o script. Encerrando... $reset"
    exit 1
fi

# Torna o script executável
chmod +x ~/andromeda.v1.sh

# Executa o script
~/andromeda.v1.sh
