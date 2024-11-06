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

desc_ver(){
echo -e "                            Este script recomenda o uso do Ubuntu$amarelo 20.04$branco.$reset"
echo ""
} 

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                         ANDROMEDA                                           ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

clear
echo "Aguarde enquanto verificamos algumas informações."
sleep 1

# Verifica se está usando Ubuntu 20.04
if ! grep -q 'Ubuntu 20.04' /etc/os-release; then
    echo "Aviso: Este script foi projetado para Ubuntu 20.04. Pode não funcionar corretamente em outras versões."
    sleep 5
    clear
fi

# Verifica se o usuário é root
if [ "$(id -u)" -ne 0 ]; then
    echo "Este script precisa ser executado como root. Tente executá-lo novamente usando 'sudo'."
    exit 1
fi

# Verifica se o usuário está no diretório especificado
DIR="/caminho/do/diretorio"  # Defina o diretório desejado aqui
if [ "$PWD" != "$DIR" ]; then
    echo "Mudando para o diretório $DIR/"
    cd "$DIR" || exit
fi

echo "Iniciando o processo de atualização e instalação..."

# Upgrade do sistema
sudo apt update -y && sudo apt upgrade -y > /dev/null 2>&1
echo "1/13 - [ OK ] - Atualização do sistema concluída"

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

# Baixa o script principal se ele ainda não estiver presente
if [ ! -f "andromeda.sh" ]; then
    curl -sSL https://raw.githubusercontent.com/saasV2/andromeda.V2/refs/heads/main/andromeda.sh -o andromeda.sh
    if [ $? -eq 0 ]; then
        echo "Download bem-sucedido! Executando o script andromeda.sh..."
        chmod +x andromeda.sh
        ./andromeda.sh
    else
        echo "Falha ao baixar o script. Encerrando."
        exit 1
    fi
else
    echo "O arquivo andromeda.sh já existe. Executando-o agora..."
    ./andromeda.sh
fi

# Limpeza
clear
echo "Processo concluído."
rm -f SetupAndromeda
