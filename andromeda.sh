#!/bin/bash

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                         ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Cores
amarelo="\e[33m"
verde="\e[32m"
branco="\e[97m"
bege="\e[93m"
vermelho="\e[91m"
reset="\e[0m"

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                         ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

sudo apt update
sudo apt upgrade -y

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                         ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

nome_aviso() {
    clear
    echo ""
    echo -e "$amarelo===================================================================================================$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo=                     $branco  █████╗     ██╗   ██╗    ██╗    ███████╗     ██████╗                       $amarelo=$reset"
    echo -e "$amarelo=                     $branco ██╔══██╗    ██║   ██║    ██║    ██╔════╝    ██╔═══██╗                      $amarelo=$reset"
    echo -e "$amarelo=                     $branco ███████║    ██║   ██║    ██║    ███████╗    ██║   ██║                      $amarelo=$reset"
    echo -e "$amarelo=                     $branco ██╔══██║    ╚██╗ ██╔╝    ██║    ╚════██║    ██║   ██║                      $amarelo=$reset"
    echo -e "$amarelo=                     $branco ██║  ██║     ╚████╔╝     ██║    ███████║    ╚██████╔╝                      $amarelo=$reset"
    echo -e "$amarelo=                     $branco ╚═╝  ╚═╝      ╚═══╝      ╚═╝    ╚══════╝     ╚═════╝                       $amarelo=$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo===================================================================================================$reset"
    echo ""
    echo ""
}

nome_atualizando() {
    clear
    echo ""
    echo -e "$amarelo===================================================================================================$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo=    $branco  █████╗ ████████╗██╗   ██╗ █████╗ ██╗     ██╗███████╗ █████╗ ███╗   ██╗██████╗  ██████╗     $amarelo=$reset"
    echo -e "$amarelo=    $branco ██╔══██╗╚══██╔══╝██║   ██║██╔══██╗██║     ██║╚══███╔╝██╔══██╗████╗  ██║██╔══██╗██╔═══██╗    $amarelo=$reset"
    echo -e "$amarelo=    $branco ███████║   ██║   ██║   ██║███████║██║     ██║  ███╔╝ ███████║██╔██╗ ██║██║  ██║██║   ██║    $amarelo=$reset"
    echo -e "$amarelo=    $branco ██╔══██║   ██║   ██║   ██║██╔══██║██║     ██║ ███╔╝  ██╔══██║██║╚██╗██║██║  ██║██║   ██║    $amarelo=$reset"
    echo -e "$amarelo=    $branco ██║  ██║   ██║   ╚██████╔╝██║  ██║███████╗██║███████╗██║  ██║██║ ╚████║██████╔╝╚██████╔╝    $amarelo=$reset"
    echo -e "$amarelo=    $branco ╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝     $amarelo=$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo===================================================================================================$reset"
    echo ""
    echo ""
}

nome_iniciando() {
    clear
    echo ""
    echo -e "$amarelo===================================================================================================$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo=                  $branco ██╗███╗   ██╗██╗ ██████╗██╗ █████╗ ███╗   ██╗██████╗  ██████╗                 $amarelo=$reset"
    echo -e "$amarelo=                  $branco ██║████╗  ██║██║██╔════╝██║██╔══██╗████╗  ██║██╔══██╗██╔═══██╗                $amarelo=$reset"
    echo -e "$amarelo=                  $branco ██║██╔██╗ ██║██║██║     ██║███████║██╔██╗ ██║██║  ██║██║   ██║                $amarelo=$reset"
    echo -e "$amarelo=                  $branco ██║██║╚██╗██║██║██║     ██║██╔══██║██║╚██╗██║██║  ██║██║   ██║                $amarelo=$reset"
    echo -e "$amarelo=                  $branco ██║██║ ╚████║██║╚██████╗██║██║  ██║██║ ╚████║██████╔╝╚██████╔╝                $amarelo=$reset"
    echo -e "$amarelo=                  $branco ╚═╝╚═╝  ╚═══╝╚═╝ ╚═════╝╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝                 $amarelo=$reset"
    echo -e "$amarelo=                                              v. 2.5.9                                           $amarelo=$reset"
    echo -e "$amarelo===================================================================================================$reset"
    echo ""
    echo ""
}

nome_verificando() {
    clear
    echo ""
    echo -e "$amarelo===================================================================================================$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo=       $branco ██╗   ██╗███████╗██████╗ ██╗███████╗██╗ ██████╗ █████╗ ███╗   ██╗██████╗  ██████╗       $amarelo=$reset"
    echo -e "$amarelo=       $branco ██║   ██║██╔════╝██╔══██╗██║██╔════╝██║██╔════╝██╔══██╗████╗  ██║██╔══██╗██╔═══██╗      $amarelo=$reset"
    echo -e "$amarelo=       $branco ██║   ██║█████╗  ██████╔╝██║█████╗  ██║██║     ███████║██╔██╗ ██║██║  ██║██║   ██║      $amarelo=$reset"
    echo -e "$amarelo=       $branco ╚██╗ ██╔╝██╔══╝  ██╔══██╗██║██╔══╝  ██║██║     ██╔══██║██║╚██╗██║██║  ██║██║   ██║      $amarelo=$reset"
    echo -e "$amarelo=       $branco  ╚████╔╝ ███████╗██║  ██║██║██║     ██║╚██████╗██║  ██║██║ ╚████║██████╔╝╚██████╔╝      $amarelo=$reset"
    echo -e "$amarelo=       $branco   ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝╚═╝     ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝       $amarelo=$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo===================================================================================================$reset"
    echo ""
    echo ""
}

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                         ANDROMEDA                                           ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##


#!/bin/bash

# Função para exibir a recomendação do Ubuntu 20.04
desc_ver(){
    echo -e "                            Este script recomenda o uso do Ubuntu 20.04."
    echo ""
} 

## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ##
##                                         ANDROMEDA                                           ##
## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ## // ##

clear
echo "Aguarde enquanto verificamos algumas informações..."
sleep 1

# Verifica se está usando Ubuntu 20.04
if ! grep -q 'Ubuntu 20.04' /etc/os-release; then
    echo "Aviso: Este script foi projetado para Ubuntu 20.04. Pode não funcionar corretamente em outras versões."
    desc_ver
    sleep 5
    clear
fi

# Verifica se o usuário é root
if [ "$(id -u)" -ne 0 ]; then
    echo "Este script precisa ser executado como root. Tente executá-lo novamente usando 'sudo'."
    exit 1
fi

# Define o diretório desejado e verifica se o usuário está nele
DIR="/caminho/do/diretorio"  # Substitua pelo caminho do diretório desejado
if [ "$PWD" != "$DIR" ]; then
    echo "Mudando para o diretório $DIR/"
    cd "$DIR" || exit
fi

echo "Iniciando o processo de atualização e instalação dos pacotes..."

# Atualiza e faz upgrade do sistema
sudo apt update -y > /dev/null 2>&1 && sudo apt upgrade -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "1/13 - [ OK ] - Sistema atualizado"
else
    echo "1/13 - [ OFF ] - Falha ao atualizar o sistema"
fi
echo ""

# Instalação de pacotes necessários
packages=(sudo apt-utils dialog jq apache2-utils git python3)
for i in "${!packages[@]}"; do
    pkg="${packages[i]}"
    apt install -y "$pkg" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "$((i+2))/13 - [ OK ] - Verificando/Instalando $pkg"
    else
        echo "$((i+2))/13 - [ OFF ] - Erro ao instalar $pkg"
    fi
    echo ""
done

# Verifica se o arquivo SetupAndromeda já existe e o remove
if [ -e "SetupAndromeda" ]; then
    echo "Removendo o arquivo SetupAndromeda..."
    rm -f SetupAndromeda
fi

# Baixa e executa o próximo script diretamente
echo "Todas as verificações e instalações concluídas. Iniciando o próximo script..."

# Executa o próximo script após todas as verificações
bash <(curl -sSL https://raw.githubusercontent.com/saasV2/andromeda.V2/refs/heads/main/andromeda.sh)

# Limpeza final
clear
echo "Processo concluído."
rm -f SetupAndromeda
