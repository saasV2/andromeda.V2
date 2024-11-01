#!/bin/bash

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                         ORION DESIGN                                        ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Cores
amarelo="\e[33m"
verde="\e[32m"
branco="\e[97m"
bege="\e[93m"
vermelho="\e[91m"
reset="\e[0m"

sudo apt update
sudo apt upgrade -y

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                         ORION DESIGN                                        ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

nome_aviso(){
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

nome_atualizadno(){
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

nome_iniciando(){
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

nome_verificando(){
    clear
    echo ""
    echo -e "$amarelo===================================================================================================$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo=       $branco ██╗   ██╗███████╗██████╗ ██╗███████╗██╗ ██████╗ █████╗ ███╗   ██╗██████╗  ██████╗       $amarelo=$reset"
    echo -e "$amarelo=       $branco ██║   ██║██╔════╝██╔══██╗██║██╔════╝██║██╔════╝██╔══██╗████╗  ██║██╔══██╗██╔═══██╗      $amarelo=$reset"
    echo -e "$amarelo=       $branco ██║   ██║█████╗  ██████╔╝██║█████╗  ██║██║     ███████║██╔██╗ ██║██║  ██║██║   ██║      $amarelo=$reset"
    echo -e "$amarelo=       $branco ╚██╗ ██╔╝██╔══╝  ██╔══██╗██║██╔══╝  ██║██║     ██╔══██║██║╚██╗██║██║  ██║██║   ██║      $amarelo=$reset"
    echo -e "$amarelo=        ╚████╔╝ ███████╗██║  ██║██║███████╗██║╚██████╗╚██████╗██║  ██║██║ ╚████║██████╔╝╚██████╔╝      $amarelo=$reset"
    echo -e "$amarelo=        ╚═══╝  ╚══════╝╚═╝  ╚═╝╚═╝╚══════╝╚═╝ ╚═════╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝       $amarelo=$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo===================================================================================================$reset"
    echo ""
    echo ""
}

nome_execucao(){
    clear
    echo ""
    echo -e "$amarelo===================================================================================================$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo=                      $branco ██╗███╗   ██╗██╗ ██████╗██╗ █████╗ ███╗   ██╗██████╗  ██████╗                $amarelo=$reset"
    echo -e "$amarelo=                      $branco ██║████╗  ██║██║██╔════╝██║██╔══██╗████╗  ██║██╔══██╗██╔═══██╗               $amarelo=$reset"
    echo -e "$amarelo=                      $branco ██║██╔██╗ ██║██║██║     ██║███████║██╔██╗ ██║██║  ██║██║   ██║               $amarelo=$reset"
    echo -e "$amarelo=                      $branco ██║██║╚██╗██║██║██║     ██║██╔══██║██║╚██╗██║██║  ██║██║   ██║               $amarelo=$reset"
    echo -e "$amarelo=                      $branco ██║██║ ╚████║██║╚██████╗██║██║  ██║██║ ╚████║██████╔╝╚██████╔╝               $amarelo=$reset"
    echo -e "$amarelo=                      $branco ╚═╝╚═╝  ╚═══╝╚═╝ ╚═════╝╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝                $amarelo=$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo===================================================================================================$reset"
    echo ""
    echo ""
}

nome_concluido(){
    clear
    echo ""
    echo -e "$amarelo===================================================================================================$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo=                   $branco █████╗  ██╗   ██╗██╗  ██╗██╗ ██████╗ ██╗   ██╗███████╗██████╗ ██╗ ██████╗  $amarelo=$reset"
    echo -e "$amarelo=                  $branco ██╔══██╗██║   ██║██║  ██║██║██╔════╝ ██║   ██║██╔════╝██╔══██╗██║██╔════╝  $amarelo=$reset"
    echo -e "$amarelo=                  $branco ███████║██║   ██║███████║██║██║  ███╗██║   ██║█████╗  ██████╔╝██║██║  ███╗ $amarelo=$reset"
    echo -e "$amarelo=                  $branco ██╔══██║██║   ██║██╔══██║██║██║   ██║██║   ██║██╔══╝  ██╔══██╗██║██║   ██║ $amarelo=$reset"
    echo -e "$amarelo=                  $branco ██║  ██║╚██████╔╝██║  ██║██║╚██████╔╝╚██████╔╝███████╗██║  ██║██║╚██████╔╝ $amarelo=$reset"
    echo -e "$amarelo=                   ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝ ╚═════╝  ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝  ╚═════╝  $amarelo=$reset"
    echo -e "$amarelo=                                                                                                 $amarelo=$reset"
    echo -e "$amarelo===================================================================================================$reset"
    echo ""
    echo ""
}

nome_aviso

echo "Baixando arquivos necessários..."
wget https://raw.githubusercontent.com/andreacn0/andromeda.v1/main/andromeda.v1.sh -O ~/Desktop/andromeda.v1.sh
chmod +x ~/Desktop/andromeda.v1.sh

echo "Executando o arquivo andromeda.v1.sh..."
bash ~/Desktop/andromeda.v1.sh
