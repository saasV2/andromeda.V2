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
nome_verificando
echo "Aguarde enquanto verificamos algumas informações."
sleep 1

# Verifica se está usando Ubuntu 20.04
if ! grep -q 'Ubuntu 20.04' /etc/os-release; then
    nome_aviso
    desc_ver
    sleep 5
    clear
    nome_verificando
fi

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

#------------------------------------------


nome_iniciando 

## Fazendo upgrade
sudo apt upgrade -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "1/13 - [ OK ] - Fazendo Upgrade"
else
    echo "1/13 - [ OFF ] - Fazendo Upgrade"
fi

echo ""

## Instalando Sudo
apt install sudo -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "2/13 - [ OK ] - Verificando/Instalando sudo"
else
    echo "2/13 - [ OFF ] - Verificando/Instalando sudo"
fi

echo ""

## Instalando apt-utils
sudo apt-get install -y apt-utils > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "3/13 - [ OK ] - Verificando/Instalando apt-utils"
else
    echo "3/13 - [ OFF ] - Verificando/Instalando apt-utils"
fi

echo ""

## Instalando dialog
sudo apt-get install -y dialog > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "4/13 - [ OK ] - Verificando/Instalando dialog"
else
    echo "4/13 - [ OFF ] - Verificando/Instalando dialog"
fi

echo ""

## Instalando jq
sudo apt-get install -y jq > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "5/13 - [ OK ] - Verificando/Instalando jq 1/2"
else
    echo "5/13 - [ OFF ] - Verificando/Instalando jq 1/2"
fi

echo ""

## Instalando jq
sudo apt install jq -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "6/13 - [ OK ] - Verificando/Instalando jq 2/2"
else
    echo "6/13 - [ OFF ] - Verificando/Instalando jq 2/2"
fi

echo ""

## Instalando apache2-utils
sudo apt install apache2-utils -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "7/13 - [ OK ] - Verificando/Instalando apache2-utils 1/2"
else
    echo "7/13 - [ OFF ] - Verificando/Instalando apache2-utils 1/2"
fi

echo ""

## Instalando apache2-utils
apt install apache2-utils -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "8/13 - [ OK ] - Verificando/Instalando apache2-utils 2/2"
else
    echo "8/13 - [ OFF ] - Verificando/Instalando apache2-utils 2/2"
fi

echo ""

## Instalando git
apt install git -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "9/13 - [ OK ] - Verificando/Instalando Git"
else
    echo "9/13 - [ OFF ] - Verificando/Instalando Git"
fi

echo ""

## Instalando python3
apt install python3 -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "10/13 - [ OK ] - Verificando/Instalando python3"
else
    echo "10/13 - [ OFF ] - Verificando/Instalando python3"
fi

echo ""

## Fazendo update
sudo apt update > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "11/13 - [ OK ] - Fazendo Update"
else
    echo "11/13 - [ OFF ] - Fazendo Update"
fi

echo ""

## Fazendo upgrade
sudo apt upgrade -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "12/13 - [ OK ] - Fazendo Upgrade"
else
    echo "12/13 - [ OFF ] - Fazendo Upgrade"
fi

# Verifica se o arquivo SetupAndromeda já existe
if [ -e "SetupAndromeda" ]; then
    echo ""
    rm SetupAndromeda
fi

# Baixa o script
curl -o andromeda.sh -sSL https://raw.githubusercontent.com/saasV2/andromeda.V2/refs/heads/main/andromeda.v1.sh
if [ $? -eq 0 ]; then
    echo "13/13 - [ OK ] - Baixando o script"
    # Executa o script baixado
    chmod +x SetupAndromeda
    ./SetupAndromeda
else
    echo "13/13 - [ OFF ] - Baixando o script"
    echo "Encerrando o setup"
    sleep 5
fi

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                         ANDROMEDA                                           ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

sudo apt update
sudo apt upgrade -y

clear
rm SetupAndromeda
