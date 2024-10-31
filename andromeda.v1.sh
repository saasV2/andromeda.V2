#!/bin/bash

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                          ANDROMEDA                                          ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

versao() {
echo -e "                                   \e[97mVersão do SetupOrion: \e[32mv. 2.5.9\e[0m                                  "
echo -e "\e[32moriondesign.art.br/whatsapp1      \e[97m<----- Grupos no WhatsApp ----->     \e[32moriondesign.art.br/whatsapp2\e[0m"
}

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Cores do Setup

amarelo="\e[33m"
verde="\e[32m"
branco="\e[97m"
bege="\e[93m"
vermelho="\e[91m"
reset="\e[0m"

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

menu_instalador="1"

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANEDOMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

home_directory="$HOME"
dados_vps="${home_directory}/dados_vps/dados_vps"

dados() {
    nome_servidor=$(grep "Nome do Servidor:" "$dados_vps" | awk -F': ' '{print $2}')
    nome_rede_interna=$(grep "Rede interna:" "$dados_vps" | awk -F': ' '{print $2}')
}

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                            ANDROMEDA                                        ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Licença do Setup

## copia
direitos_setup() {
    echo -e "\e[38;5;129m=============================================================================================================\e[0m"
    echo -e "\e[38;5;129m||                                                                                                         ||\e[0m"
    echo -e "\e[38;5;129m||  ${branco}Este é um instalador automatizado desenvolvido para simplificar a instalação das principais            \e[38;5;129m||\e[0m"
    echo -e "\e[38;5;129m||  ${branco}aplicações de código aberto disponíveis. Todos os créditos são atribuídos aos desenvolvedores          \e[38;5;129m||\e[0m"
    echo -e "\e[38;5;129m||  ${branco}de cada aplicação incluída. Este instalador é licenciado sob a Licença MIT (MIT), permitindo que       \e[38;5;129m||\e[0m"
    echo -e "\e[38;5;129m||  ${branco}você copie, modifique, integre, publique, distribua e/ou venda cópias dos produtos finais. No          \e[38;5;129m||\e[0m"
    echo -e "\e[38;5;129m||  ${branco}entanto, é obrigatório atribuir a autoria original à Sinergia Lucrativa (\e[1m${azul}suporte@sinergialucrativa.com\e[0m${branco})\e[38;5;129m||\e[0m"
    echo -e "\e[38;5;129m||  ${branco}e fornecer um link para \e[1m${azul}https://www.instagram.com/binho_v1/\e[0m${branco}.                                           \e[38;5;129m||\e[0m"
    echo -e "\e[38;5;129m||                                                                                                         ||\e[0m"
    echo -e "\e[38;5;129m=============================================================================================================\e[0m"
    echo ""
    echo ""
}

direitos_instalador() {
    echo -e "\e[38;5;129m=============================================================================================================\e[0m"
    echo -e "\e[38;5;129m||                                                                                                         ||\e[0m"
    echo -e "\e[38;5;129m||  ${branco}Este é um instalador automatizado desenvolvido para simplificar a instalação das principais            \e[38;5;129m||\e[0m"
    echo -e "\e[38;5;129m||  ${branco}aplicações de código aberto disponíveis. Todos os créditos são atribuídos aos desenvolvedores          \e[38;5;129m||\e[0m"
    echo -e "\e[38;5;129m||  ${branco}de cada aplicação incluída. Este instalador é licenciado sob a Licença MIT (MIT), permitindo que       \e[38;5;129m||\e[0m"
    echo -e "\e[38;5;129m||  ${branco}você copie, modifique, integre, publique, distribua e/ou venda cópias dos produtos finais. No          \e[38;5;129m||\e[0m"
    echo -e "\e[38;5;129m||  ${branco}entanto, é obrigatório atribuir a autoria original à Sinergia Lucrativa (\e[1m${azul}suporte@sinergialucrativa.com\e[0m${branco})\e[38;5;129m||\e[0m"
    echo -e "\e[38;5;129m||  ${branco}e fornecer um link para \e[1m${azul}https://www.instagram.com/binho_v1/\e[0m${branco}.                                           \e[38;5;129m||\e[0m"
    echo -e "\e[38;5;129m||                                                                                                         ||\e[0m"
    echo -e "\e[38;5;129m=============================================================================================================\e[0m"
    echo ""
    echo ""
    read -p "Ao digitar Y você aceita e concorda com as orientações passadas acima (Y/N): " choice
    while true; do
        case $choice in
            Y|y)
                return
                ;;
            N|n)
                clear
                nome_finalizado
                echo "Que pena que você não concorda, então estarei encerrando o instalador. Até mais."
                sleep 2
                clear
                exit 1
                ;;
            *)
                clear
                erro_msg
                echo ""
                echo ""
                echo "Por favor, digite apenas Y ou N."
                sleep 2
                clear
                nome_instalador
                direitos_setup
                ;;
        esac
        read -p "Ao digitar Y você aceita e concorda com as orientações passadas acima (Y/N): " choice
    done
}

## Credenciais Portainerv2.5.0+
info_credenciais(){ 
    echo -e "$amarelo===================================================================================================\e[0m"
    echo -e "$amarelo=                                                                                                 =\e[0m"
    echo -e "$amarelo=  $branco A partir da versão 2.5.0 deste Setup foi implementado uma função para realizar deploy dentro $amarelo =\e[0m"
    echo -e "$amarelo=  $branco   do proprio portainer através de uma requisição api. Para que esta nova função funcione em  $amarelo =\e[0m"
    echo -e "$amarelo=  $branco suas proximas instalações, você precisará informar às credenciais de acesso do seu portainer $amarelo =\e[0m"
    echo -e "$amarelo=                                                                                                 =\e[0m"
    echo -e "$amarelo===================================================================================================\e[0m"
    echo ""
    echo ""
    
}

## Credito do Setup

creditos_msg() {
    echo ""
    echo ""
    echo -e "$amarelo===================================================================================================\e[0m"
    echo -e "$amarelo=                                                                                                 $amarelo=\e[0m"
    echo -e "$amarelo=           $branco Gostaria de contribuir para continuarmos o desenvolvimento deste projeto?            $amarelo=\e[0m"
    echo -e "$amarelo=                              $branco Você pode fazer uma doação via PIX:                               $amarelo=\e[0m"
    echo -e "$amarelo=                                                                                                 $amarelo=\e[0m"
    echo -e "$amarelo=                                     $amarelo suporte@sinergialucrativa.com                                     $amarelo=\e[0m"
    echo -e "$amarelo=                                                                                                 $amarelo=\e[0m"
    echo -e "$amarelo=                                                                                                 $amarelo=\e[0m"
    echo -e "$amarelo=                            $branco ou via WhatsApp (comunidade SetupOrion)                             $amarelo=\e[0m"
    echo -e "$amarelo=   $amarelo https://chat.whatsapp.com/Ez8z14o9SxV1w1Ya3clxtM $branco<-- ou -->$amarelo https://chat.whatsapp.com/IpwTyjt9Gun4DQymh7bISo    $amarelo=\e[0m"
    echo -e "$amarelo=                                                                                                 $amarelo=\e[0m"
    echo -e "$amarelo===================================================================================================\e[0m"
    echo ""
    echo ""
}


## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                            ANDROMEDA                                        ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Mensagens gerais

## Mensagem pedindo para preencher as informações

preencha_as_info() {
    echo -e "$amarelo===================================================================================================\e[0m"
    echo -e "$amarelo=                                                                                                 $amarelo=\e[0m"
    echo -e "$amarelo=                          $branco Preencha as informações solicitadas abaixo                            $amarelo=\e[0m"
    echo -e "$amarelo=                                                                                                 $amarelo=\e[0m"
    echo -e "$amarelo===================================================================================================\e[0m"
    echo ""
    echo ""
}

## Mensagem pedindo para verificar se as informações estão certas

conferindo_as_info() {
    echo -e "$amarelo===================================================================================================\e[0m"
    echo -e "$amarelo=                                                                                                 $amarelo=\e[0m"
    echo -e "$amarelo=                          $branco Verifique se os dados abaixos estão certos                            $amarelo=\e[0m"
    echo -e "$amarelo=                                                                                                 $amarelo=\e[0m"
    echo -e "$amarelo===================================================================================================\e[0m"
    echo ""
    echo ""
}

## Mensagem de Guarde os dados

guarde_os_dados_msg() {
    echo -e "$amarelo===================================================================================================\e[0m"
    echo -e "$amarelo=                                                                                                 $amarelo=\e[0m"
    echo -e "$amarelo=                 $branco Guarde todos os dados abaixo para evitar futuros transtornos                   $amarelo=\e[0m"
    echo -e "$amarelo=                                                                                                 $amarelo=\e[0m"
    echo -e "$amarelo===================================================================================================\e[0m"
    echo ""
    echo ""
}

## Mensagem de Instalando

instalando_msg() {
  echo""
  echo -e "$amarelo===================================================================================================\e[0m"
  echo -e "$amarelo=                                                                                                 =\e[0m"
  echo -e "$amarelo=      $branco  ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗      █████╗ ███╗   ██╗██████╗  ██████╗   $amarelo      = \e[0m" 
  echo -e "$amarelo=      $branco  ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██╔══██╗████╗  ██║██╔══██╗██╔═══██╗  $amarelo      =\e[0m"
  echo -e "$amarelo=      $branco  ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ███████║██╔██╗ ██║██║  ██║██║   ██║  $amarelo      =\e[0m"
  echo -e "$amarelo=      $branco  ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██╔══██║██║╚██╗██║██║  ██║██║   ██║  $amarelo      =\e[0m"
  echo -e "$amarelo=      $branco  ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗██║  ██║██║ ╚████║██████╔╝╚██████╔╝  $amarelo      =\e[0m"
  echo -e "$amarelo=      $branco  ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝   $amarelo      =\e[0m"
  echo -e "$amarelo=                                                                                                 =\e[0m"
  echo -e "$amarelo===================================================================================================\e[0m"
  echo ""
  echo ""
}

## Mensagem de Erro

erro_msg() {
   echo -e "$amarelo===================================================================================================\e[0m"
   echo -e "$amarelo=                                                                                                 =\e[0m"
   echo -e "$amarelo=                                 $branco███████╗██████╗ ██████╗  ██████╗                                $amarelo=\e[0m"
   echo -e "$amarelo=                                 $branco██╔════╝██╔══██╗██╔══██╗██╔═══██╗                               $amarelo=\e[0m"
   echo -e "$amarelo=                                 $branco█████╗  ██████╔╝██████╔╝██║   ██║                               $amarelo=\e[0m"
   echo -e "$amarelo=                                 $branco██╔══╝  ██╔══██╗██╔══██╗██║   ██║                               $amarelo=\e[0m"
   echo -e "$amarelo=                                 $branco███████╗██║  ██║██║  ██║╚██████╔╝                               $amarelo=\e[0m"
   echo -e "$amarelo=                                 $branco╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝                                $amarelo=\e[0m"
   echo -e "$amarelo=                                                                                                 =\e[0m"
   echo -e "$amarelo===================================================================================================\e[0m"
}

## Mensagem de Instalado

instalado_msg() {
    clear
    echo ""
    echo -e "$amarelo===================================================================================================\e[0m"
    echo ""
    echo -e "$branco     ██╗      ██╗███╗   ██╗███████╗████████╗ █████╗ ██╗      █████╗ ██████╗  ██████╗       ██╗\e[0m"
    echo -e "$branco     ╚██╗     ██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██╔══██╗██╔══██╗██╔═══██╗     ██╔╝\e[0m"
    echo -e "$branco      ╚██╗    ██║██╔██╗ ██║███████╗   ██║   ███████║██║     ███████║██║  ██║██║   ██║    ██╔╝ \e[0m"
    echo -e "$branco      ██╔╝    ██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██╔══██║██║  ██║██║   ██║    ╚██╗ \e[0m"
    echo -e "$branco     ██╔╝     ██║██║ ╚████║███████║   ██║   ██║  ██║███████╗██║  ██║██████╔╝╚██████╔╝     ╚██╗\e[0m"
    echo -e "$branco     ╚═╝      ╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝╚═════╝  ╚═════╝       ╚═╝\e[0m"
    echo ""
    echo -e "$amarelo===================================================================================================\e[0m"
    echo ""
    echo ""
}

## Mensagem de Testando

nome_testando() {
    clear
    echo ""
    echo -e "$branco               ████████╗███████╗███████╗████████╗ █████╗ ███╗   ██╗██████╗  ██████╗ \e[0m"
    echo -e "$branco               ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██╔══██╗████╗  ██║██╔══██╗██╔═══██╗\e[0m"
    echo -e "$branco                  ██║   █████╗  ███████╗   ██║   ███████║██╔██╗ ██║██║  ██║██║   ██║\e[0m"
    echo -e "$branco                  ██║   ██╔══╝  ╚════██║   ██║   ██╔══██║██║╚██╗██║██║  ██║██║   ██║\e[0m"
    echo -e "$branco                  ██║   ███████╗███████║   ██║   ██║  ██║██║ ╚████║██████╔╝╚██████╔╝\e[0m"
    echo -e "$branco                  ╚═╝   ╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝ \e[0m"
    echo ""
    echo ""
}
nome_credenciais() {
    clear
    echo ""
    echo -e "$branco          ██████╗██████╗ ███████╗██████╗ ███████╗███╗   ██╗ ██████╗██╗ █████╗ ██╗███████╗      \e[0m"
    echo -e "$branco         ██╔════╝██╔══██╗██╔════╝██╔══██╗██╔════╝████╗  ██║██╔════╝██║██╔══██╗██║██╔════╝      \e[0m"
    echo -e "$branco         ██║     ██████╔╝█████╗  ██║  ██║█████╗  ██╔██╗ ██║██║     ██║███████║██║███████╗      \e[0m"
    echo -e "$branco         ██║     ██╔══██╗██╔══╝  ██║  ██║██╔══╝  ██║╚██╗██║██║     ██║██╔══██║██║╚════██║      \e[0m"
    echo -e "$branco         ╚██████╗██║  ██║███████╗██████╔╝███████╗██║ ╚████║╚██████╗██║██║  ██║██║███████║      \e[0m"
    echo -e "$branco          ╚═════╝╚═╝  ╚═╝╚══════╝╚═════╝ ╚══════╝╚═╝  ╚═══╝ ╚═════╝╚═╝╚═╝  ╚═╝╚═╝╚══════╝      \e[0m"
    echo -e "$branco                                                                                               \e[0m"
    echo -e "$branco   ██████╗  ██████╗     ██████╗  ██████╗ ██████╗ ████████╗ █████╗ ██╗███╗   ██╗███████╗██████╗ \e[0m"
    echo -e "$branco   ██╔══██╗██╔═══██╗    ██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝██╔══██╗██║████╗  ██║██╔════╝██╔══██╗\e[0m"
    echo -e "$branco   ██║  ██║██║   ██║    ██████╔╝██║   ██║██████╔╝   ██║   ███████║██║██╔██╗ ██║█████╗  ██████╔╝\e[0m"
    echo -e "$branco   ██║  ██║██║   ██║    ██╔═══╝ ██║   ██║██╔══██╗   ██║   ██╔══██║██║██║╚██╗██║██╔══╝  ██╔══██╗\e[0m"
    echo -e "$branco   ██████╔╝╚██████╔╝    ██║     ╚██████╔╝██║  ██║   ██║   ██║  ██║██║██║ ╚████║███████╗██║  ██║\e[0m"
    echo -e "$branco   ╚═════╝  ╚═════╝     ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝\e[0m"
    echo ""
    echo ""
    info_credenciais
}
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                            ANDROMEDA                                        ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Titulos

## Nome do instalador

nome_instalador() {
    clear
    echo ""
    echo -e "$branco       ███████╗███████╗████████╗██╗   ██╗██████╗      ██████╗ ██████╗ ██╗ ██████╗ ███╗   ██╗\e[0m"
    echo -e "$branco       ██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗    ██╔═══██╗██╔══██╗██║██╔═══██╗████╗  ██║\e[0m"
    echo -e "$branco       ███████╗█████╗     ██║   ██║   ██║██████╔╝    ██║   ██║██████╔╝██║██║   ██║██╔██╗ ██║\e[0m"
    echo -e "$branco       ╚════██║██╔══╝     ██║   ██║   ██║██╔═══╝     ██║   ██║██╔══██╗██║██║   ██║██║╚██╗██║\e[0m"
    echo -e "$branco       ███████║███████╗   ██║   ╚██████╔╝██║         ╚██████╔╝██║  ██║██║╚██████╔╝██║ ╚████║\e[0m"
    echo -e "$branco       ╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝          ╚═════╝ ╚═╝  ╚═╝╚═╝ ╚═════╝ ╚═╝  ╚═══╝\e[0m"
    echo -e "$branco                                                                                            \e[0m"
    echo -e "$branco                                  ██████╗    ███████╗   █████╗                             \e[0m"
    echo -e "$branco                                  ╚════██╗   ██╔════╝  ██╔══██╗                            \e[0m"
    echo -e "$branco                        █████╗     █████╔╝   ███████╗  ╚██████║    █████╗                  \e[0m"
    echo -e "$branco                        ╚════╝    ██╔═══╝    ╚════██║   ╚═══██║    ╚════╝                  \e[0m"
    echo -e "$branco                                  ███████╗██╗███████║██╗█████╔╝                            \e[0m"
    echo -e "$branco                                  ╚══════╝╚═╝╚══════╝╚═╝╚════╝                             \e[0m"
    echo ""                                            
}

## Menu de ferramentas

nome_menu() {
    clear
    echo -e "$amarelo===================================================================================================\e[0m"
    echo ""
    echo -e "$branco                    ███╗   ███╗███████╗███╗   ██╗██╗   ██╗    ██████╗ ███████╗                \e[0m"
    echo -e "$branco                    ████╗ ████║██╔════╝████╗  ██║██║   ██║    ██╔══██╗██╔════╝                \e[0m"
    echo -e "$branco                    ██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║    ██║  ██║█████╗                  \e[0m"
    echo -e "$branco                    ██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║    ██║  ██║██╔══╝                  \e[0m"
    echo -e "$branco                    ██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝    ██████╔╝███████╗                \e[0m"
    echo -e "$branco                    ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝     ╚═════╝ ╚══════╝                \e[0m"
    echo -e "$branco                                                                                                \e[0m"
    echo -e "$branco  ███████╗███████╗██████╗ ██████╗  █████╗ ███╗   ███╗███████╗███╗   ██╗████████╗ █████╗ ███████╗\e[0m"
    echo -e "$branco  ██╔════╝██╔════╝██╔══██╗██╔══██╗██╔══██╗████╗ ████║██╔════╝████╗  ██║╚══██╔══╝██╔══██╗██╔════╝\e[0m"
    echo -e "$branco  █████╗  █████╗  ██████╔╝██████╔╝███████║██╔████╔██║█████╗  ██╔██╗ ██║   ██║   ███████║███████╗\e[0m"
    echo -e "$branco  ██╔══╝  ██╔══╝  ██╔══██╗██╔══██╗██╔══██║██║╚██╔╝██║██╔══╝  ██║╚██╗██║   ██║   ██╔══██║╚════██║\e[0m"
    echo -e "$branco  ██║     ███████╗██║  ██║██║  ██║██║  ██║██║ ╚═╝ ██║███████╗██║ ╚████║   ██║   ██║  ██║███████║\e[0m"
    echo -e "$branco  ╚═╝     ╚══════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚═╝  ╚═╝╚══════╝\e[0m"
    echo ""
    echo -e "$amarelo===================================================================================================\e[0m"
    versao
    echo ""
}

## Titulo Teste de Email [0]

nome_testeemail() {
  clear
  echo ""
  echo -e "$branco                     ████████╗███████╗███████╗████████╗███████╗    ██████╗ ███████╗\e[0m"
  echo -e "$branco                     ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██╔════╝    ██╔══██╗██╔════╝\e[0m"
  echo -e "$branco                        ██║   █████╗  ███████╗   ██║   █████╗      ██║  ██║█████╗  \e[0m"
  echo -e "$branco                        ██║   ██╔══╝  ╚════██║   ██║   ██╔══╝      ██║  ██║██╔══╝  \e[0m"
  echo -e "$branco                        ██║   ███████╗███████║   ██║   ███████╗    ██████╔╝███████╗\e[0m"
  echo -e "$branco                        ╚═╝   ╚══════╝╚══════╝   ╚═╝   ╚══════╝    ╚═════╝ ╚══════╝\e[0m"
  echo -e "$branco                                                                                   \e[0m"
  echo -e "$branco                                    ███████╗███╗   ███╗ █████╗ ██╗██╗                 \e[0m"
  echo -e "$branco                                    ██╔════╝████╗ ████║██╔══██╗██║██║                 \e[0m"
  echo -e "$branco                                    █████╗  ██╔████╔██║███████║██║██║                 \e[0m"
  echo -e "$branco                                    ██╔══╝  ██║╚██╔╝██║██╔══██║██║██║                 \e[0m"
  echo -e "$branco                                    ███████╗██║ ╚═╝ ██║██║  ██║██║███████╗            \e[0m"
  echo -e "$branco                                    ╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚══════╝            \e[0m"
  echo ""
  echo ""                                                          
}

## Titulo Traefik e Portainer [1]

nome_traefik_e_portainer() {
    clear
    echo ""
    echo -e "$branco               ████████╗██████╗  █████╗ ███████╗███████╗██╗██╗  ██╗    ███████╗       \e[0m"
    echo -e "$branco               ╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██╔════╝██║██║ ██╔╝    ██╔════╝       \e[0m"
    echo -e "$branco                  ██║   ██████╔╝███████║█████╗  █████╗  ██║█████╔╝     █████╗         \e[0m"
    echo -e "$branco                  ██║   ██╔══██╗██╔══██║██╔══╝  ██╔══╝  ██║██╔═██╗     ██╔══╝         \e[0m"
    echo -e "$branco                  ██║   ██║  ██║██║  ██║███████╗██║     ██║██║  ██╗    ███████╗       \e[0m"
    echo -e "$branco                  ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝    ╚══════╝       \e[0m"
    echo -e "$branco                                                                                      \e[0m"
    echo -e "$branco             ██████╗  ██████╗ ██████╗ ████████╗ █████╗ ██╗███╗   ██╗███████╗██████╗   \e[0m"
    echo -e "$branco             ██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝██╔══██╗██║████╗  ██║██╔════╝██╔══██╗  \e[0m"
    echo -e "$branco             ██████╔╝██║   ██║██████╔╝   ██║   ███████║██║██╔██╗ ██║█████╗  ██████╔╝  \e[0m"
    echo -e "$branco             ██╔═══╝ ██║   ██║██╔══██╗   ██║   ██╔══██║██║██║╚██╗██║██╔══╝  ██╔══██╗  \e[0m"
    echo -e "$branco             ██║     ╚██████╔╝██║  ██║   ██║   ██║  ██║██║██║ ╚████║███████╗██║  ██║  \e[0m"
    echo -e "$branco             ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝  \e[0m"
    echo ""
    echo ""
}

## Titulo Chatwoot [2]

nome_chatwoot(){
    clear
    echo ""
    echo -e "$branco               ██████╗██╗  ██╗ █████╗ ████████╗██╗    ██╗ ██████╗  ██████╗ ████████╗\e[0m"
    echo -e "$branco              ██╔════╝██║  ██║██╔══██╗╚══██╔══╝██║    ██║██╔═══██╗██╔═══██╗╚══██╔══╝\e[0m"
    echo -e "$branco              ██║     ███████║███████║   ██║   ██║ █╗ ██║██║   ██║██║   ██║   ██║   \e[0m"
    echo -e "$branco              ██║     ██╔══██║██╔══██║   ██║   ██║███╗██║██║   ██║██║   ██║   ██║   \e[0m"
    echo -e "$branco              ╚██████╗██║  ██║██║  ██║   ██║   ╚███╔███╔╝╚██████╔╝╚██████╔╝   ██║   \e[0m"
    echo -e "$branco               ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚══╝╚══╝  ╚═════╝  ╚═════╝    ╚═╝   \e[0m"
    echo ""
    echo ""
}

## Titulo Evolution [3]

nome_evolution() {
    clear
    echo ""
    echo -e "$branco ███████╗██╗   ██╗ ██████╗ ██╗     ██╗   ██╗████████╗██╗ ██████╗ ███╗   ██╗     █████╗ ██████╗ ██╗\e[0m"
    echo -e "$branco ██╔════╝██║   ██║██╔═══██╗██║     ██║   ██║╚══██╔══╝██║██╔═══██╗████╗  ██║    ██╔══██╗██╔══██╗██║\e[0m"
    echo -e "$branco █████╗  ██║   ██║██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██╔██╗ ██║    ███████║██████╔╝██║\e[0m"
    echo -e "$branco ██╔══╝  ╚██╗ ██╔╝██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██║╚██╗██║    ██╔══██║██╔═══╝ ██║\e[0m"
    echo -e "$branco ███████╗ ╚████╔╝ ╚██████╔╝███████╗╚██████╔╝   ██║   ██║╚██████╔╝██║ ╚████║    ██║  ██║██║     ██║\e[0m"
    echo -e "$branco ╚══════╝  ╚═══╝   ╚═════╝ ╚══════╝ ╚═════╝    ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═╝╚═╝     ╚═╝\e[0m"
    echo ""
    echo ""                                                                                        
}

## Titulo Evolution [2.beta]

nome_evolution_v2() {
    clear
    echo ""
    echo -e "$branco  ███████╗██╗   ██╗ ██████╗ ██╗     ██╗   ██╗████████╗██╗ ██████╗ ███╗   ██╗     █████╗ ██████╗ ██╗\e[0m"
    echo -e "$branco  ██╔════╝██║   ██║██╔═══██╗██║     ██║   ██║╚══██╔══╝██║██╔═══██╗████╗  ██║    ██╔══██╗██╔══██╗██║\e[0m"
    echo -e "$branco  █████╗  ██║   ██║██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██╔██╗ ██║    ███████║██████╔╝██║\e[0m"
    echo -e "$branco  ██╔══╝  ╚██╗ ██╔╝██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██║╚██╗██║    ██╔══██║██╔═══╝ ██║\e[0m"
    echo -e "$branco  ███████╗ ╚████╔╝ ╚██████╔╝███████╗╚██████╔╝   ██║   ██║╚██████╔╝██║ ╚████║    ██║  ██║██║     ██║\e[0m"
    echo -e "$branco  ╚══════╝  ╚═══╝   ╚═════╝ ╚══════╝ ╚═════╝    ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═╝╚═╝     ╚═╝\e[0m"
    echo -e "$branco                                                                                                \e[0m"
    echo -e "$branco                                    ██╗   ██╗██████╗     ██████╗                                 \e[0m"
    echo -e "$branco                                    ██║   ██║╚════██╗   ██╔═████╗                                \e[0m"
    echo -e "$branco                                    ██║   ██║ █████╔╝   ██║██╔██║                                \e[0m"
    echo -e "$branco                                    ╚██╗ ██╔╝██╔═══╝    ████╔╝██║                                \e[0m"
    echo -e "$branco                                     ╚████╔╝ ███████╗██╗╚██████╔╝                                \e[0m"
    echo -e "$branco                                      ╚═══╝  ╚══════╝╚═╝ ╚═════╝                                 \e[0m"
    echo ""
    echo ""
    echo -e "$amarelo===================================================================================================\e[0m"
    echo -e "$amarelo=                                                                                                 =\e[0m"
    echo -e "$amarelo=                    $branco Esta é uma versão Alfa e não deve ser usada em produção.                    $amarel=\e[0m"
    echo -e "$amarelo=                                                                                                 =\e[0m"
    echo -e "$amarelo===================================================================================================\e[0m"
    echo ""
    echo ""
}    

## Titulo Minio [4]

nome_minio() {
    clear
    echo ""
    echo -e "$branco                              ███╗   ███╗██╗███╗   ██╗██╗ ██████╗ \e[0m"
    echo -e "$branco                              ████╗ ████║██║████╗  ██║██║██╔═══██╗\e[0m"
    echo -e "$branco                              ██╔████╔██║██║██╔██╗ ██║██║██║   ██║\e[0m"
    echo -e "$branco                              ██║╚██╔╝██║██║██║╚██╗██║██║██║   ██║\e[0m"
    echo -e "$branco                              ██║ ╚═╝ ██║██║██║ ╚████║██║╚██████╔╝\e[0m"
    echo -e "$branco                              ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝ ╚═════╝ \e[0m"
    echo ""
    echo ""                                   
}

## Titulo Typebot [5]

nome_typebot() {
    clear
    echo ""
    echo -e "$branco                    ████████╗██╗   ██╗██████╗ ███████╗██████╗  ██████╗ ████████╗\e[0m"
    echo -e "$branco                    ╚══██╔══╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗██╔═══██╗╚══██╔══╝\e[0m"
    echo -e "$branco                       ██║    ╚████╔╝ ██████╔╝█████╗  ██████╔╝██║   ██║   ██║   \e[0m"
    echo -e "$branco                       ██║     ╚██╔╝  ██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║   ██║   \e[0m"
    echo -e "$branco                       ██║      ██║   ██║     ███████╗██████╔╝╚██████╔╝   ██║   \e[0m"
    echo -e "$branco                       ╚═╝      ╚═╝   ╚═╝     ╚══════╝╚═════╝  ╚═════╝    ╚═╝   \e[0m"
    echo ""
    echo ""                                                    
}

## Titulo N8N [6]

nome_n8n() {
    clear
    echo ""
    echo -e "$branco                            ███╗   ██╗ █████╗ ███╗   ██╗\e[0m"
    echo -e "$branco                            ████╗  ██║██╔══██╗████╗  ██║\e[0m"
    echo -e "$branco                            ██╔██╗ ██║╚█████╔╝██╔██╗ ██║\e[0m"
    echo -e "$branco                            ██║╚██╗██║██╔══██╗██║╚██╗██║\e[0m"
    echo -e "$branco                            ██║ ╚████║╚█████╔╝██║ ╚████║\e[0m"
    echo -e "$branco                            ╚═╝  ╚═══╝ ╚════╝ ╚═╝  ╚═══╝\e[0m"
    echo ""
    echo ""                     
}

## Titulo Flowise [7]

nome_flowise() {
    clear
    echo ""
    echo -e "$branco                      ███████╗██╗      ██████╗ ██╗    ██╗██╗███████╗███████╗\e[0m"
    echo -e "$branco                      ██╔════╝██║     ██╔═══██╗██║    ██║██║██╔════╝██╔════╝\e[0m"
    echo -e "$branco                      █████╗  ██║     ██║   ██║██║ █╗ ██║██║███████╗█████╗  \e[0m"
    echo -e "$branco                      ██╔══╝  ██║     ██║   ██║██║███╗██║██║╚════██║██╔══╝  \e[0m"
    echo -e "$branco                      ██║     ███████╗╚██████╔╝╚███╔███╔╝██║███████║███████╗\e[0m"
    echo -e "$branco                      ╚═╝     ╚══════╝ ╚═════╝  ╚══╝╚══╝ ╚═╝╚══════╝╚══════╝\e[0m"
    echo ""
    echo ""
}

## Titulo PgAdmin [8]

nome_pgAdmin_4() {
    clear
    echo ""
    echo -e "$branco               ██████╗  ██████╗  █████╗ ██████╗ ███╗   ███╗██╗███╗   ██╗    ██╗  ██╗\e[0m"
    echo -e "$branco               ██╔══██╗██╔════╝ ██╔══██╗██╔══██╗████╗ ████║██║████╗  ██║    ██║  ██║\e[0m"
    echo -e "$branco               ██████╔╝██║  ███╗███████║██║  ██║██╔████╔██║██║██╔██╗ ██║    ███████║\e[0m"
    echo -e "$branco               ██╔═══╝ ██║   ██║██╔══██║██║  ██║██║╚██╔╝██║██║██║╚██╗██║    ╚════██║\e[0m"
    echo -e "$branco               ██║     ╚██████╔╝██║  ██║██████╔╝██║ ╚═╝ ██║██║██║ ╚████║         ██║\e[0m"
    echo -e "$branco               ╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝         ╚═╝\e[0m"
    echo ""
    echo ""                                                                  
}

## Titulo Nocobase [9]

nome_nocobase() {
    clear
    echo ""
    echo -e "$branco               ███╗   ██╗ ██████╗  ██████╗ ██████╗ ██████╗  █████╗ ███████╗███████╗\e[0m"
    echo -e "$branco               ████╗  ██║██╔═══██╗██╔════╝██╔═══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝\e[0m"
    echo -e "$branco               ██╔██╗ ██║██║   ██║██║     ██║   ██║██████╔╝███████║███████╗█████╗  \e[0m"
    echo -e "$branco               ██║╚██╗██║██║   ██║██║     ██║   ██║██╔══██╗██╔══██║╚════██║██╔══╝  \e[0m"
    echo -e "$branco               ██║ ╚████║╚██████╔╝╚██████╗╚██████╔╝██████╔╝██║  ██║███████║███████╗\e[0m"
    echo -e "$branco               ╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝\e[0m"
    echo ""
    echo ""                                                                 
}

## Titulo Botpress [10]

nome_botpress() {
    clear
    echo ""
    echo -e "$branco              ██████╗  ██████╗ ████████╗██████╗ ██████╗ ███████╗███████╗███████╗\e[0m"
    echo -e "$branco              ██╔══██╗██╔═══██╗╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝\e[0m"
    echo -e "$branco              ██████╔╝██║   ██║   ██║   ██████╔╝██████╔╝█████╗  ███████╗███████╗\e[0m"
    echo -e "$branco              ██╔══██╗██║   ██║   ██║   ██╔═══╝ ██╔══██╗██╔══╝  ╚════██║╚════██║\e[0m"
    echo -e "$branco              ██████╔╝╚██████╔╝   ██║   ██║     ██║  ██║███████╗███████║███████║\e[0m"
    echo -e "$branco              ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝\e[0m"
    echo ""
    echo ""                                                          
}

## Titulo Wordpress [11]

nome_wordpress() {
    clear
    echo ""
    echo -e "$branco           ██╗    ██╗ ██████╗ ██████╗ ██████╗ ██████╗ ██████╗ ███████╗███████╗███████╗\e[0m"
    echo -e "$branco           ██║    ██║██╔═══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝\e[0m"
    echo -e "$branco           ██║ █╗ ██║██║   ██║██████╔╝██║  ██║██████╔╝██████╔╝█████╗  ███████╗███████╗\e[0m"
    echo -e "$branco           ██║███╗██║██║   ██║██╔══██╗██║  ██║██╔═══╝ ██╔══██╗██╔══╝  ╚════██║╚════██║\e[0m"
    echo -e "$branco           ╚███╔███╔╝╚██████╔╝██║  ██║██████╔╝██║     ██║  ██║███████╗███████║███████║\e[0m"
    echo -e "$branco            ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝\e[0m"
    echo ""
    echo ""
}

## Titulo Baserow [12]

nome_baserow() {
    clear
    echo ""
    echo -e "$branco                      ██████╗  █████╗ ███████╗███████╗██████╗  ██████╗ ██╗    ██╗\e[0m"
    echo -e "$branco                      ██╔══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗██╔═══██╗██║    ██║\e[0m"
    echo -e "$branco                      ██████╔╝███████║███████╗█████╗  ██████╔╝██║   ██║██║ █╗ ██║\e[0m"
    echo -e "$branco                      ██╔══██╗██╔══██║╚════██║██╔══╝  ██╔══██╗██║   ██║██║███╗██║\e[0m"
    echo -e "$branco                      ██████╔╝██║  ██║███████║███████╗██║  ██║╚██████╔╝╚███╔███╔╝\e[0m"
    echo -e "$branco                      ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ \e[0m"
    echo ""
    echo ""                                                          
}

## Titulo MongoDB [13]

nome_mongodb() {
  clear
  echo ""
  echo -e "$branco               ███╗   ███╗ ██████╗ ███╗   ██╗ ██████╗  ██████╗     ██████╗ ██████╗ \e[0m"
  echo -e "$branco               ████╗ ████║██╔═══██╗████╗  ██║██╔════╝ ██╔═══██╗    ██╔══██╗██╔══██╗\e[0m"
  echo -e "$branco               ██╔████╔██║██║   ██║██╔██╗ ██║██║  ███╗██║   ██║    ██║  ██║██████╔╝\e[0m"
  echo -e "$branco               ██║╚██╔╝██║██║   ██║██║╚██╗██║██║   ██║██║   ██║    ██║  ██║██╔══██╗\e[0m"
  echo -e "$branco               ██║ ╚═╝ ██║╚██████╔╝██║ ╚████║╚██████╔╝╚██████╔╝    ██████╔╝██████╔╝\e[0m"
  echo -e "$branco               ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝  ╚═════╝     ╚═════╝ ╚═════╝ \e[0m"
  echo ""
  echo ""                                                               
}

## Titulo RabbitMQ [14]

nome_rabbitmq() {
  clear
  echo ""
  echo -e "$branco               ██████╗  █████╗ ██████╗ ██████╗ ██╗████████╗    ███╗   ███╗ ██████╗ \e[0m"
  echo -e "$branco               ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║╚══██╔══╝    ████╗ ████║██╔═══██╗\e[0m"
  echo -e "$branco               ██████╔╝███████║██████╔╝██████╔╝██║   ██║       ██╔████╔██║██║   ██║\e[0m"
  echo -e "$branco               ██╔══██╗██╔══██║██╔══██╗██╔══██╗██║   ██║       ██║╚██╔╝██║██║▄▄ ██║\e[0m"
  echo -e "$branco               ██║  ██║██║  ██║██████╔╝██████╔╝██║   ██║       ██║ ╚═╝ ██║╚██████╔╝\e[0m"
  echo -e "$branco               ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═════╝ ╚═╝   ╚═╝       ╚═╝     ╚═╝ ╚══▀▀═╝ \e[0m"
  echo ""
  echo ""                                                                 
}

## Titulo UptimeKuma [15]

nome_uptimekuma() {
  clear
  echo ""
  echo -e "$branco      ██╗   ██╗██████╗ ████████╗██╗███╗   ███╗███████╗    ██╗  ██╗██╗   ██╗███╗   ███╗ █████╗ \e[0m"
  echo -e "$branco      ██║   ██║██╔══██╗╚══██╔══╝██║████╗ ████║██╔════╝    ██║ ██╔╝██║   ██║████╗ ████║██╔══██╗\e[0m"
  echo -e "$branco      ██║   ██║██████╔╝   ██║   ██║██╔████╔██║█████╗      █████╔╝ ██║   ██║██╔████╔██║███████║\e[0m"
  echo -e "$branco      ██║   ██║██╔═══╝    ██║   ██║██║╚██╔╝██║██╔══╝      ██╔═██╗ ██║   ██║██║╚██╔╝██║██╔══██║\e[0m"
  echo -e "$branco      ╚██████╔╝██║        ██║   ██║██║ ╚═╝ ██║███████╗    ██║  ██╗╚██████╔╝██║ ╚═╝ ██║██║  ██║\e[0m"
  echo -e "$branco       ╚═════╝ ╚═╝        ╚═╝   ╚═╝╚═╝     ╚═╝╚══════╝    ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝\e[0m"
  echo ""
  echo ""
}

## Titulo Calcom [16]

nome_calcom() {
  clear
  echo ""
  echo -e "$branco                       ██████╗ █████╗ ██╗         ██████╗ ██████╗ ███╗   ███╗\e[0m"
  echo -e "$branco                      ██╔════╝██╔══██╗██║        ██╔════╝██╔═══██╗████╗ ████║\e[0m"
  echo -e "$branco                      ██║     ███████║██║        ██║     ██║   ██║██╔████╔██║\e[0m"
  echo -e "$branco                      ██║     ██╔══██║██║        ██║     ██║   ██║██║╚██╔╝██║\e[0m"
  echo -e "$branco                      ╚██████╗██║  ██║███████╗██╗╚██████╗╚██████╔╝██║ ╚═╝ ██║\e[0m"
  echo -e "$branco                       ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝\e[0m"
  echo ""
  echo ""
}

## Titulo Mautic [17]

nome_mautic(){
    clear
    echo ""
    echo -e "$branco                         ███╗   ███╗ █████╗ ██╗   ██╗████████╗██╗ ██████╗\e[0m"
    echo -e "$branco                         ████╗ ████║██╔══██╗██║   ██║╚══██╔══╝██║██╔════╝\e[0m"
    echo -e "$branco                         ██╔████╔██║███████║██║   ██║   ██║   ██║██║     \e[0m"
    echo -e "$branco                         ██║╚██╔╝██║██╔══██║██║   ██║   ██║   ██║██║     \e[0m"
    echo -e "$branco                         ██║ ╚═╝ ██║██║  ██║╚██████╔╝   ██║   ██║╚██████╗\e[0m"
    echo -e "$branco                         ╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝ ╚═════╝\e[0m"
    echo ""
    echo ""                                              
}

## Titulo Appsmith [18]

nome_appsmith() {
    clear
    echo ""
    echo -e "$branco                   █████╗ ██████╗ ██████╗ ███████╗███╗   ███╗██╗████████╗██╗  ██╗\e[0m"
    echo -e "$branco                  ██╔══██╗██╔══██╗██╔══██╗██╔════╝████╗ ████║██║╚══██╔══╝██║  ██║\e[0m"
    echo -e "$branco                  ███████║██████╔╝██████╔╝███████╗██╔████╔██║██║   ██║   ███████║\e[0m"
    echo -e "$branco                  ██╔══██║██╔═══╝ ██╔═══╝ ╚════██║██║╚██╔╝██║██║   ██║   ██╔══██║\e[0m"
    echo -e "$branco                  ██║  ██║██║     ██║     ███████║██║ ╚═╝ ██║██║   ██║   ██║  ██║\e[0m"
    echo -e "$branco                  ╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝   ╚═╝   ╚═╝  ╚═╝\e[0m"
    echo ""
    echo ""
}

## Titulo Qdrant [19]

nome_qdrant() {
    clear
    echo ""
    echo -e "$branco                        ██████╗ ██████╗ ██████╗  █████╗ ███╗   ██╗████████╗\e[0m"
    echo -e "$branco                       ██╔═══██╗██╔══██╗██╔══██╗██╔══██╗████╗  ██║╚══██╔══╝\e[0m"
    echo -e "$branco                       ██║   ██║██║  ██║██████╔╝███████║██╔██╗ ██║   ██║   \e[0m"
    echo -e "$branco                       ██║▄▄ ██║██║  ██║██╔══██╗██╔══██║██║╚██╗██║   ██║   \e[0m"
    echo -e "$branco                       ╚██████╔╝██████╔╝██║  ██║██║  ██║██║ ╚████║   ██║   \e[0m"
    echo -e "$branco                        ╚══▀▀═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   \e[0m"
    echo ""
    echo ""
}

## Titulo WoofedCRM [20]

nome_woofedcrm() {
    clear
    echo ""
    echo -e "$branco        ██╗    ██╗ ██████╗  ██████╗ ███████╗███████╗██████╗      ██████╗██████╗ ███╗   ███╗\e[0m"
    echo -e "$branco        ██║    ██║██╔═══██╗██╔═══██╗██╔════╝██╔════╝██╔══██╗    ██╔════╝██╔══██╗████╗ ████║\e[0m"
    echo -e "$branco        ██║ █╗ ██║██║   ██║██║   ██║█████╗  █████╗  ██║  ██║    ██║     ██████╔╝██╔████╔██║\e[0m"
    echo -e "$branco        ██║███╗██║██║   ██║██║   ██║██╔══╝  ██╔══╝  ██║  ██║    ██║     ██╔══██╗██║╚██╔╝██║\e[0m"
    echo -e "$branco        ╚███╔███╔╝╚██████╔╝╚██████╔╝██║     ███████╗██████╔╝    ╚██████╗██║  ██║██║ ╚═╝ ██║\e[0m"
    echo -e "$branco         ╚══╝╚══╝  ╚═════╝  ╚═════╝ ╚═╝     ╚══════╝╚═════╝      ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝\e[0m"
    echo ""
    echo ""
}

## Titulo Formbricks [21]

nome_formbricks() {
    clear
    echo ""
    echo -e "$branco          ███████╗ ██████╗ ██████╗ ███╗   ███╗██████╗ ██████╗ ██╗ ██████╗██╗  ██╗███████╗\e[0m"
    echo -e "$branco          ██╔════╝██╔═══██╗██╔══██╗████╗ ████║██╔══██╗██╔══██╗██║██╔════╝██║ ██╔╝██╔════╝\e[0m"
    echo -e "$branco          █████╗  ██║   ██║██████╔╝██╔████╔██║██████╔╝██████╔╝██║██║     █████╔╝ ███████╗\e[0m"
    echo -e "$branco          ██╔══╝  ██║   ██║██╔══██╗██║╚██╔╝██║██╔══██╗██╔══██╗██║██║     ██╔═██╗ ╚════██║\e[0m"
    echo -e "$branco          ██║     ╚██████╔╝██║  ██║██║ ╚═╝ ██║██████╔╝██║  ██║██║╚██████╗██║  ██╗███████║\e[0m"
    echo -e "$branco          ╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝\e[0m"
    echo ""
    echo ""
}

## Titulo NocoDB [22]

nome_nocodb() {
    clear
    echo ""
    echo -e "$branco                       ███╗   ██╗ ██████╗  ██████╗ ██████╗ ██████╗ ██████╗ \e[0m"
    echo -e "$branco                       ████╗  ██║██╔═══██╗██╔════╝██╔═══██╗██╔══██╗██╔══██╗\e[0m"
    echo -e "$branco                       ██╔██╗ ██║██║   ██║██║     ██║   ██║██║  ██║██████╔╝\e[0m"
    echo -e "$branco                       ██║╚██╗██║██║   ██║██║     ██║   ██║██║  ██║██╔══██╗\e[0m"
    echo -e "$branco                       ██║ ╚████║╚██████╔╝╚██████╗╚██████╔╝██████╔╝██████╔╝\e[0m"
    echo -e "$branco                       ╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚═════╝ ╚═════╝ \e[0m"
    echo ""
    echo ""                                                 
}

## Titulo Langfuse [23]

nome_langfuse() {
    clear
    echo ""
    echo -e "$branco               ██╗      █████╗ ███╗   ██╗ ██████╗ ███████╗██╗   ██╗███████╗███████╗\e[0m"
    echo -e "$branco               ██║     ██╔══██╗████╗  ██║██╔════╝ ██╔════╝██║   ██║██╔════╝██╔════╝\e[0m"
    echo -e "$branco               ██║     ███████║██╔██╗ ██║██║  ███╗█████╗  ██║   ██║███████╗█████╗  \e[0m"
    echo -e "$branco               ██║     ██╔══██║██║╚██╗██║██║   ██║██╔══╝  ██║   ██║╚════██║██╔══╝  \e[0m"
    echo -e "$branco               ███████╗██║  ██║██║ ╚████║╚██████╔╝██║     ╚██████╔╝███████║███████╗\e[0m"
    echo -e "$branco               ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝      ╚═════╝ ╚══════╝╚══════╝\e[0m"
    echo ""
    echo ""
}

## Titulo Metabase [24]

nome_metabase() {
    clear
    echo ""
    echo -e "$branco               ███╗   ███╗███████╗████████╗ █████╗ ██████╗  █████╗ ███████╗███████╗\e[0m"
    echo -e "$branco               ████╗ ████║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝\e[0m"
    echo -e "$branco               ██╔████╔██║█████╗     ██║   ███████║██████╔╝███████║███████╗█████╗  \e[0m"
    echo -e "$branco               ██║╚██╔╝██║██╔══╝     ██║   ██╔══██║██╔══██╗██╔══██║╚════██║██╔══╝  \e[0m"
    echo -e "$branco               ██║ ╚═╝ ██║███████╗   ██║   ██║  ██║██████╔╝██║  ██║███████║███████╗\e[0m"
    echo -e "$branco               ╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝\e[0m"
    echo ""
    echo ""
}   

## Titulo Odoo [25]

nome_odoo() {
    clear
    echo ""
    echo -e "$branco                                 ██████╗ ██████╗  ██████╗  ██████╗ \e[0m"
    echo -e "$branco                                ██╔═══██╗██╔══██╗██╔═══██╗██╔═══██╗\e[0m"
    echo -e "$branco                                ██║   ██║██║  ██║██║   ██║██║   ██║\e[0m"
    echo -e "$branco                                ██║   ██║██║  ██║██║   ██║██║   ██║\e[0m"
    echo -e "$branco                                ╚██████╔╝██████╔╝╚██████╔╝╚██████╔╝\e[0m"
    echo -e "$branco                                 ╚═════╝ ╚═════╝  ╚═════╝  ╚═════╝ \e[0m"
    echo ""
    echo ""
}

## Titulo Chatwoot Nestor [26]

nome_unoapi() {
    clear
    echo ""
    echo -e "$branco                     ██╗   ██╗███╗   ██╗ ██████╗      █████╗ ██████╗ ██╗\e[0m"
    echo -e "$branco                     ██║   ██║████╗  ██║██╔═══██╗    ██╔══██╗██╔══██╗██║\e[0m"
    echo -e "$branco                     ██║   ██║██╔██╗ ██║██║   ██║    ███████║██████╔╝██║\e[0m"
    echo -e "$branco                     ██║   ██║██║╚██╗██║██║   ██║    ██╔══██║██╔═══╝ ██║\e[0m"
    echo -e "$branco                     ╚██████╔╝██║ ╚████║╚██████╔╝    ██║  ██║██║     ██║\e[0m"
    echo -e "$branco                      ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝     ╚═╝  ╚═╝╚═╝     ╚═╝\e[0m"
    echo ""
    echo ""
}

## Titulo Uno API [27]

nome_n8n_quepasa(){
    clear
    echo ""
    echo -e "$branco         ███╗   ██╗ █████╗ ███╗   ██╗    ███╗   ██╗ ██████╗ ██████╗ ███████╗███████╗\e[0m"
    echo -e "$branco         ████╗  ██║██╔══██╗████╗  ██║    ████╗  ██║██╔═══██╗██╔══██╗██╔════╝██╔════╝\e[0m"
    echo -e "$branco         ██╔██╗ ██║╚█████╔╝██╔██╗ ██║    ██╔██╗ ██║██║   ██║██║  ██║█████╗  ███████╗\e[0m"
    echo -e "$branco         ██║╚██╗██║██╔══██╗██║╚██╗██║    ██║╚██╗██║██║   ██║██║  ██║██╔══╝  ╚════██║\e[0m"
    echo -e "$branco         ██║ ╚████║╚█████╔╝██║ ╚████║    ██║ ╚████║╚██████╔╝██████╔╝███████╗███████║\e[0m"
    echo -e "$branco         ╚═╝  ╚═══╝ ╚════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═══╝ ╚═════╝ ╚═════╝ ╚══════╝╚══════╝\e[0m"
    echo -e "$branco                                                                                       \e[0m"                            
    echo -e "$branco        ██████╗  ██████╗      ██████╗ ██╗   ██╗███████╗██████╗  █████╗ ███████╗ █████╗ \e[0m"                
    echo -e "$branco        ██╔══██╗██╔═══██╗    ██╔═══██╗██║   ██║██╔════╝██╔══██╗██╔══██╗██╔════╝██╔══██╗\e[0m"                
    echo -e "$branco        ██║  ██║██║   ██║    ██║   ██║██║   ██║█████╗  ██████╔╝███████║███████╗███████║\e[0m"                
    echo -e "$branco        ██║  ██║██║   ██║    ██║▄▄ ██║██║   ██║██╔══╝  ██╔═══╝ ██╔══██║╚════██║██╔══██║\e[0m"                
    echo -e "$branco        ██████╔╝╚██████╔╝    ╚██████╔╝╚██████╔╝███████╗██║     ██║  ██║███████║██║  ██║\e[0m"                
    echo -e "$branco        ╚═════╝  ╚═════╝      ╚══▀▀═╝  ╚═════╝ ╚══════╝╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝\e[0m"                                                                                                                           
    echo ""
    echo ""
}

## Titulo Quepasa API [29]

nome_quepasa() {
    clear
    echo ""
    echo -e "$branco                  ██████╗ ██╗   ██╗███████╗██████╗  █████╗ ███████╗ █████╗ \e[0m"
    echo -e "$branco                 ██╔═══██╗██║   ██║██╔════╝██╔══██╗██╔══██╗██╔════╝██╔══██╗\e[0m"
    echo -e "$branco                 ██║   ██║██║   ██║█████╗  ██████╔╝███████║███████╗███████║\e[0m"
    echo -e "$branco                 ██║▄▄ ██║██║   ██║██╔══╝  ██╔═══╝ ██╔══██║╚════██║██╔══██║\e[0m"
    echo -e "$branco                 ╚██████╔╝╚██████╔╝███████╗██║     ██║  ██║███████║██║  ██║\e[0m"
    echo -e "$branco                  ╚══▀▀═╝  ╚═════╝ ╚══════╝╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝\e[0m"
    echo ""
    echo ""
}

## Titulo Docuseal [30]

nome_docuseal(){
    clear
    echo ""
    echo -e "$branco                ██████╗  ██████╗  ██████╗██╗   ██╗███████╗███████╗ █████╗ ██╗     \e[0m"
    echo -e "$branco                ██╔══██╗██╔═══██╗██╔════╝██║   ██║██╔════╝██╔════╝██╔══██╗██║     \e[0m"
    echo -e "$branco                ██║  ██║██║   ██║██║     ██║   ██║███████╗█████╗  ███████║██║     \e[0m"
    echo -e "$branco                ██║  ██║██║   ██║██║     ██║   ██║╚════██║██╔══╝  ██╔══██║██║     \e[0m"
    echo -e "$branco                ██████╔╝╚██████╔╝╚██████╗╚██████╔╝███████║███████╗██║  ██║███████╗\e[0m"
    echo -e "$branco                ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝\e[0m"
    echo ""
    echo ""
}

## Titulo Grafana + Prometheus + cAdvisor [31]

nome_monitor() {
    clear
    echo ""
    echo -e "$branco                     ██████╗ ██████╗  █████╗ ███████╗ █████╗ ███╗   ██╗ █████╗ \e[0m"
    echo -e "$branco                    ██╔════╝ ██╔══██╗██╔══██╗██╔════╝██╔══██╗████╗  ██║██╔══██╗\e[0m"
    echo -e "$branco                    ██║  ███╗██████╔╝███████║█████╗  ███████║██╔██╗ ██║███████║\e[0m"
    echo -e "$branco                    ██║   ██║██╔══██╗██╔══██║██╔══╝  ██╔══██║██║╚██╗██║██╔══██║\e[0m"
    echo -e "$branco                    ╚██████╔╝██║  ██║██║  ██║██║     ██║  ██║██║ ╚████║██║  ██║\e[0m"
    echo -e "$branco                     ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝\e[0m"
    echo ""
    echo ""
}

## Titulo Dify AI [32]

nome_dify() {
    clear
    echo ""
    echo -e "$branco                            ██████╗ ██╗███████╗██╗   ██╗ █████╗ ██╗\e[0m"
    echo -e "$branco                            ██╔══██╗██║██╔════╝╚██╗ ██╔╝██╔══██╗██║\e[0m"
    echo -e "$branco                            ██║  ██║██║█████╗   ╚████╔╝ ███████║██║\e[0m"
    echo -e "$branco                            ██║  ██║██║██╔══╝    ╚██╔╝  ██╔══██║██║\e[0m"
    echo -e "$branco                            ██████╔╝██║██║        ██║██╗██║  ██║██║\e[0m"
    echo -e "$branco                            ╚═════╝ ╚═╝╚═╝        ╚═╝╚═╝╚═╝  ╚═╝╚═╝\e[0m"
    echo ""
    echo ""
}

## Titulo Ollama [33]

nome_ollama() {
    clear
    echo ""
    echo -e "$branco                            ██████╗ ██╗     ██╗      █████╗ ███╗   ███╗ █████╗ \e[0m"
    echo -e "$branco                           ██╔═══██╗██║     ██║     ██╔══██╗████╗ ████║██╔══██╗\e[0m"
    echo -e "$branco                           ██║   ██║██║     ██║     ███████║██╔████╔██║███████║\e[0m"
    echo -e "$branco                           ██║   ██║██║     ██║     ██╔══██║██║╚██╔╝██║██╔══██║\e[0m"
    echo -e "$branco                           ╚██████╔╝███████╗███████╗██║  ██║██║ ╚═╝ ██║██║  ██║\e[0m"
    echo -e "$branco                            ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝\e[0m"
    echo ""
    echo ""                                   
}

## Titulo Affine [34]

nome_affine(){
    clear
    echo ""
    echo -e "$branco                         █████╗ ███████╗███████╗██╗███╗   ██╗███████╗\e[0m"
    echo -e "$branco                        ██╔══██╗██╔════╝██╔════╝██║████╗  ██║██╔════╝\e[0m"
    echo -e "$branco                        ███████║█████╗  █████╗  ██║██╔██╗ ██║█████╗  \e[0m"
    echo -e "$branco                        ██╔══██║██╔══╝  ██╔══╝  ██║██║╚██╗██║██╔══╝  \e[0m"
    echo -e "$branco                        ██║  ██║██║     ██║     ██║██║ ╚████║███████╗\e[0m"
    echo -e "$branco                        ╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝╚═╝  ╚═══╝╚══════╝\e[0m"
    echo ""
    echo ""
}

## Titulo Directus [35]

nome_directus(){
clear
echo ""
echo -e "$branco                   ██████╗ ██╗██████╗ ███████╗ ██████╗████████╗██╗   ██╗███████╗\e[0m"
echo -e "$branco                   ██╔══██╗██║██╔══██╗██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔════╝\e[0m"
echo -e "$branco                   ██║  ██║██║██████╔╝█████╗  ██║        ██║   ██║   ██║███████╗\e[0m"
echo -e "$branco                   ██║  ██║██║██╔══██╗██╔══╝  ██║        ██║   ██║   ██║╚════██║\e[0m"
echo -e "$branco                   ██████╔╝██║██║  ██║███████╗╚██████╗   ██║   ╚██████╔╝███████║\e[0m"
echo -e "$branco                   ╚═════╝ ╚═╝╚═╝  ╚═╝╚══════╝ ╚═════╝   ╚═╝    ╚═════╝ ╚══════╝\e[0m"
echo ""
echo ""
}

## Titulo VaultWarden [36]

nome_vaultwarden() {
    clear
    echo ""
    echo -e "$branco   ██╗   ██╗ █████╗ ██╗   ██╗██╗  ████████╗██╗    ██╗ █████╗ ██████╗ ██████╗ ███████╗███╗   ██╗\e[0m"
    echo -e "$branco   ██║   ██║██╔══██╗██║   ██║██║  ╚══██╔══╝██║    ██║██╔══██╗██╔══██╗██╔══██╗██╔════╝████╗  ██║\e[0m"
    echo -e "$branco   ██║   ██║███████║██║   ██║██║     ██║   ██║ █╗ ██║███████║██████╔╝██║  ██║█████╗  ██╔██╗ ██║\e[0m"
    echo -e "$branco   ╚██╗ ██╔╝██╔══██║██║   ██║██║     ██║   ██║███╗██║██╔══██║██╔══██╗██║  ██║██╔══╝  ██║╚██╗██║\e[0m"
    echo -e "$branco    ╚████╔╝ ██║  ██║╚██████╔╝███████╗██║   ╚███╔███╔╝██║  ██║██║  ██║██████╔╝███████╗██║ ╚████║\e[0m"
    echo -e "$branco     ╚═══╝  ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝    ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═══╝\e[0m"
    echo ""
    echo ""
}

## Titulo NextCloud [37]

nome_nextcloud() {
    clear
    echo ""
    echo -e "$branco           ███╗   ██╗███████╗██╗  ██╗████████╗ ██████╗██╗      ██████╗ ██╗   ██╗██████╗ \e[0m"
    echo -e "$branco           ████╗  ██║██╔════╝╚██╗██╔╝╚══██╔══╝██╔════╝██║     ██╔═══██╗██║   ██║██╔══██╗\e[0m"
    echo -e "$branco           ██╔██╗ ██║█████╗   ╚███╔╝    ██║   ██║     ██║     ██║   ██║██║   ██║██║  ██║\e[0m"
    echo -e "$branco           ██║╚██╗██║██╔══╝   ██╔██╗    ██║   ██║     ██║     ██║   ██║██║   ██║██║  ██║\e[0m"
    echo -e "$branco           ██║ ╚████║███████╗██╔╝ ██╗   ██║   ╚██████╗███████╗╚██████╔╝╚██████╔╝██████╔╝\e[0m"
    echo -e "$branco           ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝╚══════╝ ╚═════╝  ╚═════╝ ╚═════╝ \e[0m"
    echo ""
    echo ""
}

## Titulo Strapi [38]

nome_strapi() {
    clear
    echo ""
    echo -e "$branco                         ███████╗████████╗██████╗  █████╗ ██████╗ ██╗\e[0m"
    echo -e "$branco                         ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██║\e[0m"
    echo -e "$branco                         ███████╗   ██║   ██████╔╝███████║██████╔╝██║\e[0m"
    echo -e "$branco                         ╚════██║   ██║   ██╔══██╗██╔══██║██╔═══╝ ██║\e[0m"
    echo -e "$branco                         ███████║   ██║   ██║  ██║██║  ██║██║     ██║\e[0m"
    echo -e "$branco                         ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝\e[0m"
    echo ""
    echo ""
}

## Titulo PhpMyAdmin [39]

nome_phpmyadmin(){
    clear
    echo "" 
    echo -e "$branco    ██████╗ ██╗  ██╗██████╗     ███╗   ███╗██╗   ██╗     █████╗ ██████╗ ███╗   ███╗██╗███╗   ██╗\e[0m"
    echo -e "$branco    ██╔══██╗██║  ██║██╔══██╗    ████╗ ████║╚██╗ ██╔╝    ██╔══██╗██╔══██╗████╗ ████║██║████╗  ██║\e[0m"
    echo -e "$branco    ██████╔╝███████║██████╔╝    ██╔████╔██║ ╚████╔╝     ███████║██║  ██║██╔████╔██║██║██╔██╗ ██║\e[0m"
    echo -e "$branco    ██╔═══╝ ██╔══██║██╔═══╝     ██║╚██╔╝██║  ╚██╔╝      ██╔══██║██║  ██║██║╚██╔╝██║██║██║╚██╗██║\e[0m"
    echo -e "$branco    ██║     ██║  ██║██║         ██║ ╚═╝ ██║   ██║       ██║  ██║██████╔╝██║ ╚═╝ ██║██║██║ ╚████║\e[0m"
    echo -e "$branco    ╚═╝     ╚═╝  ╚═╝╚═╝         ╚═╝     ╚═╝   ╚═╝       ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝\e[0m"
    echo "" 
    echo "" 
}

## Titulo Supabase [40]

nome_supabase(){
    clear
    echo ""
    echo -e "$branco              ███████╗██╗   ██╗██████╗  █████╗ ██████╗  █████╗ ███████╗███████╗\e[0m"
    echo -e "$branco              ██╔════╝██║   ██║██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝\e[0m"
    echo -e "$branco              ███████╗██║   ██║██████╔╝███████║██████╔╝███████║███████╗█████╗  \e[0m"
    echo -e "$branco              ╚════██║██║   ██║██╔═══╝ ██╔══██║██╔══██╗██╔══██║╚════██║██╔══╝  \e[0m"
    echo -e "$branco              ███████║╚██████╔╝██║     ██║  ██║██████╔╝██║  ██║███████║███████╗\e[0m"
    echo -e "$branco              ╚══════╝ ╚═════╝ ╚═╝     ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝\e[0m"
    echo "" 
    echo "" 
}

## Titulo Ntfy [41]

nome_ntfy(){
    clear
    echo ""
    echo -e "$branco                                ███╗   ██╗████████╗███████╗██╗   ██╗\e[0m"
    echo -e "$branco                                ████╗  ██║╚══██╔══╝██╔════╝╚██╗ ██╔╝\e[0m"
    echo -e "$branco                                ██╔██╗ ██║   ██║   █████╗   ╚████╔╝ \e[0m"
    echo -e "$branco                                ██║╚██╗██║   ██║   ██╔══╝    ╚██╔╝  \e[0m"
    echo -e "$branco                                ██║ ╚████║   ██║   ██║        ██║   \e[0m"
    echo -e "$branco                                ╚═╝  ╚═══╝   ╚═╝   ╚═╝        ╚═╝   \e[0m"
    echo "" 
    echo ""
}
 
## Titulo Lowcoder [42]

nome_lowcoder(){
    clear
    echo ""
    echo -e "$branco               ██╗      ██████╗ ██╗    ██╗ ██████╗ ██████╗ ██████╗ ███████╗██████╗ \e[0m"
    echo -e "$branco               ██║     ██╔═══██╗██║    ██║██╔════╝██╔═══██╗██╔══██╗██╔════╝██╔══██╗\e[0m"
    echo -e "$branco               ██║     ██║   ██║██║ █╗ ██║██║     ██║   ██║██║  ██║█████╗  ██████╔╝\e[0m"
    echo -e "$branco               ██║     ██║   ██║██║███╗██║██║     ██║   ██║██║  ██║██╔══╝  ██╔══██╗\e[0m"
    echo -e "$branco               ███████╗╚██████╔╝╚███╔███╔╝╚██████╗╚██████╔╝██████╔╝███████╗██║  ██║\e[0m"
    echo -e "$branco               ╚══════╝ ╚═════╝  ╚══╝╚══╝  ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝\e[0m"
    echo ""
    echo ""  
}

## Titulo Langflow [43]

nome_langflow() {
    clear
    echo ""
    echo -e "$branco               ██╗      █████╗ ███╗   ██╗ ██████╗ ███████╗██╗      ██████╗ ██╗    ██╗\e[0m"
    echo -e "$branco               ██║     ██╔══██╗████╗  ██║██╔════╝ ██╔════╝██║     ██╔═══██╗██║    ██║\e[0m"
    echo -e "$branco               ██║     ███████║██╔██╗ ██║██║  ███╗█████╗  ██║     ██║   ██║██║ █╗ ██║\e[0m"
    echo -e "$branco               ██║     ██╔══██║██║╚██╗██║██║   ██║██╔══╝  ██║     ██║   ██║██║███╗██║\e[0m"
    echo -e "$branco               ███████╗██║  ██║██║ ╚████║╚██████╔╝██║     ███████╗╚██████╔╝╚███╔███╔╝\e[0m"
    echo -e "$branco               ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     ╚══════╝ ╚═════╝  ╚══╝╚══╝ \e[0m"
    echo ""
    echo ""
}

## Titulo OpenProject [44]

nome_openproject() {
    clear
    echo ""
    echo -e "$branco   ██████╗ ██████╗ ███████╗███╗   ██╗    ██████╗ ██████╗  ██████╗      ██╗███████╗ ██████╗████████╗\e[0m"
    echo -e "$branco  ██╔═══██╗██╔══██╗██╔════╝████╗  ██║    ██╔══██╗██╔══██╗██╔═══██╗     ██║██╔════╝██╔════╝╚══██╔══╝\e[0m"
    echo -e "$branco  ██║   ██║██████╔╝█████╗  ██╔██╗ ██║    ██████╔╝██████╔╝██║   ██║     ██║█████╗  ██║        ██║   \e[0m"
    echo -e "$branco  ██║   ██║██╔═══╝ ██╔══╝  ██║╚██╗██║    ██╔═══╝ ██╔══██╗██║   ██║██   ██║██╔══╝  ██║        ██║   \e[0m"
    echo -e "$branco  ╚██████╔╝██║     ███████╗██║ ╚████║    ██║     ██║  ██║╚██████╔╝╚█████╔╝███████╗╚██████╗   ██║   \e[0m"
    echo -e "$branco   ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═══╝    ╚═╝     ╚═╝  ╚═╝ ╚═════╝  ╚════╝ ╚══════╝ ╚═════╝   ╚═╝   \e[0m"
    echo ""
    echo ""
}

## Titulo Zep [45]

nome_zep() {
    clear
    echo ""
    echo -e "$branco                                      ███████╗███████╗██████╗ \e[0m"
    echo -e "$branco                                      ╚══███╔╝██╔════╝██╔══██╗\e[0m"
    echo -e "$branco                                        ███╔╝ █████╗  ██████╔╝\e[0m"
    echo -e "$branco                                       ███╔╝  ██╔══╝  ██╔═══╝ \e[0m"
    echo -e "$branco                                      ███████╗███████╗██║     \e[0m"
    echo -e "$branco                                      ╚══════╝╚══════╝╚═╝     \e[0m"
    echo ""
    echo ""
}

## Titulo HumHub [46]

nome_humhub() {
    clear
    echo ""
    echo -e "$branco                       ██╗  ██╗██╗   ██╗███╗   ███╗██╗  ██╗██╗   ██╗██████╗ \e[0m"
    echo -e "$branco                       ██║  ██║██║   ██║████╗ ████║██║  ██║██║   ██║██╔══██╗\e[0m"
    echo -e "$branco                       ███████║██║   ██║██╔████╔██║███████║██║   ██║██████╔╝\e[0m"
    echo -e "$branco                       ██╔══██║██║   ██║██║╚██╔╝██║██╔══██║██║   ██║██╔══██╗\e[0m"
    echo -e "$branco                       ██║  ██║╚██████╔╝██║ ╚═╝ ██║██║  ██║╚██████╔╝██████╔╝\e[0m"
    echo -e "$branco                       ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ \e[0m"
    echo ""
    echo ""
}

## Titulo Yourls [47]

nome_yourls() {
clear
echo ""
echo -e "$branco                        ██╗   ██╗ ██████╗ ██╗   ██╗██████╗ ██╗     ███████╗\e[0m"
echo -e "$branco                        ╚██╗ ██╔╝██╔═══██╗██║   ██║██╔══██╗██║     ██╔════╝\e[0m"
echo -e "$branco                         ╚████╔╝ ██║   ██║██║   ██║██████╔╝██║     ███████╗\e[0m"
echo -e "$branco                          ╚██╔╝  ██║   ██║██║   ██║██╔══██╗██║     ╚════██║\e[0m"
echo -e "$branco                           ██║   ╚██████╔╝╚██████╔╝██║  ██║███████╗███████║\e[0m"
echo -e "$branco                           ╚═╝    ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝\e[0m"
echo ""
echo ""
}

## Titulo TwentyCRM [48]

nome_twentycrm() {
clear
echo ""
echo -e "$branco         ████████╗██╗    ██╗███████╗███╗   ██╗████████╗██╗   ██╗ ██████╗██████╗ ███╗   ███╗\e[0m"
echo -e "$branco         ╚══██╔══╝██║    ██║██╔════╝████╗  ██║╚══██╔══╝╚██╗ ██╔╝██╔════╝██╔══██╗████╗ ████║\e[0m"
echo -e "$branco            ██║   ██║ █╗ ██║█████╗  ██╔██╗ ██║   ██║    ╚████╔╝ ██║     ██████╔╝██╔████╔██║\e[0m"
echo -e "$branco            ██║   ██║███╗██║██╔══╝  ██║╚██╗██║   ██║     ╚██╔╝  ██║     ██╔══██╗██║╚██╔╝██║\e[0m"
echo -e "$branco            ██║   ╚███╔███╔╝███████╗██║ ╚████║   ██║      ██║   ╚██████╗██║  ██║██║ ╚═╝ ██║\e[0m"
echo -e "$branco            ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═══╝   ╚═╝      ╚═╝    ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝\e[0m"
echo ""
echo ""
}

## Titulo Mattermost [49]

nome_mattermost() {
clear
echo ""
echo -e "$branco    ███╗   ███╗ █████╗ ████████╗████████╗███████╗██████╗ ███╗   ███╗ ██████╗ ███████╗████████╗\e[0m"
echo -e "$branco    ████╗ ████║██╔══██╗╚══██╔══╝╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██╔═══██╗██╔════╝╚══██╔══╝\e[0m"
echo -e "$branco    ██╔████╔██║███████║   ██║      ██║   █████╗  ██████╔╝██╔████╔██║██║   ██║███████╗   ██║   \e[0m"
echo -e "$branco    ██║╚██╔╝██║██╔══██║   ██║      ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║   ██║╚════██║   ██║   \e[0m"
echo -e "$branco    ██║ ╚═╝ ██║██║  ██║   ██║      ██║   ███████╗██║  ██║██║ ╚═╝ ██║╚██████╔╝███████║   ██║   \e[0m"
echo -e "$branco    ╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   \e[0m"
echo ""
echo ""
}

## Titulo Outline [50]

nome_outline() {
clear
echo ""
echo -e "$branco                       ██████╗ ██╗   ██╗████████╗██╗     ██╗███╗   ██╗███████╗\e[0m"
echo -e "$branco                      ██╔═══██╗██║   ██║╚══██╔══╝██║     ██║████╗  ██║██╔════╝\e[0m"
echo -e "$branco                      ██║   ██║██║   ██║   ██║   ██║     ██║██╔██╗ ██║█████╗  \e[0m"
echo -e "$branco                      ██║   ██║██║   ██║   ██║   ██║     ██║██║╚██╗██║██╔══╝  \e[0m"
echo -e "$branco                      ╚██████╔╝╚██████╔╝   ██║   ███████╗██║██║ ╚████║███████╗\e[0m"
echo -e "$branco                       ╚═════╝  ╚═════╝    ╚═╝   ╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝\e[0m"
echo ""
echo ""
}

## Titulo FocalBoard [51]

nome_focalboard() {
    clear
    echo ""
    echo -e "$branco         ███████╗ ██████╗  ██████╗ █████╗ ██╗     ██████╗  ██████╗  █████╗ ██████╗ ██████╗ \e[0m"
    echo -e "$branco         ██╔════╝██╔═══██╗██╔════╝██╔══██╗██║     ██╔══██╗██╔═══██╗██╔══██╗██╔══██╗██╔══██╗\e[0m"
    echo -e "$branco         █████╗  ██║   ██║██║     ███████║██║     ██████╔╝██║   ██║███████║██████╔╝██║  ██║\e[0m"
    echo -e "$branco         ██╔══╝  ██║   ██║██║     ██╔══██║██║     ██╔══██╗██║   ██║██╔══██║██╔══██╗██║  ██║\e[0m"
    echo -e "$branco         ██║     ╚██████╔╝╚██████╗██║  ██║███████╗██████╔╝╚██████╔╝██║  ██║██║  ██║██████╔╝\e[0m"
    echo -e "$branco         ╚═╝      ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ \e[0m"
    echo ""
    echo ""
}

## Titulo GLPI [52]

nome_glpi() {
    clear
    echo ""
    echo -e "$branco                                     ██████╗ ██╗     ██████╗ ██╗\e[0m"
    echo -e "$branco                                    ██╔════╝ ██║     ██╔══██╗██║\e[0m"
    echo -e "$branco                                    ██║  ███╗██║     ██████╔╝██║\e[0m"
    echo -e "$branco                                    ██║   ██║██║     ██╔═══╝ ██║\e[0m"
    echo -e "$branco                                    ╚██████╔╝███████╗██║     ██║\e[0m"
    echo -e "$branco                                     ╚═════╝ ╚══════╝╚═╝     ╚═╝\e[0m"
    echo ""
    echo ""
}

## Titulo Anything LLM [53]

nome_anythingllm() {
    clear
    echo ""
    echo ""
    echo -e "$branco  █████╗ ███╗   ██╗██╗   ██╗████████╗██╗  ██╗██╗███╗   ██╗ ██████╗     ██╗     ██╗     ███╗   ███╗\e[0m"
    echo -e "$branco ██╔══██╗████╗  ██║╚██╗ ██╔╝╚══██╔══╝██║  ██║██║████╗  ██║██╔════╝     ██║     ██║     ████╗ ████║\e[0m"
    echo -e "$branco ███████║██╔██╗ ██║ ╚████╔╝    ██║   ███████║██║██╔██╗ ██║██║  ███╗    ██║     ██║     ██╔████╔██║\e[0m"
    echo -e "$branco ██╔══██║██║╚██╗██║  ╚██╔╝     ██║   ██╔══██║██║██║╚██╗██║██║   ██║    ██║     ██║     ██║╚██╔╝██║\e[0m"
    echo -e "$branco ██║  ██║██║ ╚████║   ██║      ██║   ██║  ██║██║██║ ╚████║╚██████╔╝    ███████╗███████╗██║ ╚═╝ ██║\e[0m"
    echo -e "$branco ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚══════╝╚══════╝╚═╝     ╚═╝\e[0m"
    echo ""
    echo ""
}

## Titulo Excalidraw [54]

nome_excalidraw() {
    clear
    echo ""
    echo ""
    echo -e "$branco           ███████╗██╗  ██╗ ██████╗ █████╗ ██╗     ██╗██████╗ ██████╗  █████╗ ██╗    ██╗\e[0m"
    echo -e "$branco           ██╔════╝╚██╗██╔╝██╔════╝██╔══██╗██║     ██║██╔══██╗██╔══██╗██╔══██╗██║    ██║\e[0m"
    echo -e "$branco           █████╗   ╚███╔╝ ██║     ███████║██║     ██║██║  ██║██████╔╝███████║██║ █╗ ██║\e[0m"
    echo -e "$branco           ██╔══╝   ██╔██╗ ██║     ██╔══██║██║     ██║██║  ██║██╔══██╗██╔══██║██║███╗██║\e[0m"
    echo -e "$branco           ███████╗██╔╝ ██╗╚██████╗██║  ██║███████╗██║██████╔╝██║  ██║██║  ██║╚███╔███╔╝\e[0m"
    echo -e "$branco           ╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚══╝╚══╝ \e[0m"
    echo ""
    echo ""
}

## Titulo Excalidraw [55]

nome_easyappointments() {
    clear
    echo ""
    echo ""
    echo -e "$branco                                ███████╗ █████╗ ███████╗██╗   ██╗██╗                                 \e[0m"
    echo -e "$branco                                ██╔════╝██╔══██╗██╔════╝╚██╗ ██╔╝██║                                 \e[0m"
    echo -e "$branco                                █████╗  ███████║███████╗ ╚████╔╝ ██║                                 \e[0m"
    echo -e "$branco                                ██╔══╝  ██╔══██║╚════██║  ╚██╔╝  ╚═╝                                 \e[0m"
    echo -e "$branco                                ███████╗██║  ██║███████║   ██║   ██╗                                 \e[0m"
    echo -e "$branco                                ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝                                 \e[0m"
    echo -e "$branco                                                                                                     \e[0m"
    echo -e "$branco █████╗ ██████╗ ██████╗  ██████╗ ██╗███╗   ██╗████████╗███╗   ███╗███████╗███╗   ██╗████████╗███████╗\e[0m"
    echo -e "$branco██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██║████╗  ██║╚══██╔══╝████╗ ████║██╔════╝████╗  ██║╚══██╔══╝██╔════╝\e[0m"
    echo -e "$branco███████║██████╔╝██████╔╝██║   ██║██║██╔██╗ ██║   ██║   ██╔████╔██║█████╗  ██╔██╗ ██║   ██║   ███████╗\e[0m"
    echo -e "$branco██╔══██║██╔═══╝ ██╔═══╝ ██║   ██║██║██║╚██╗██║   ██║   ██║╚██╔╝██║██╔══╝  ██║╚██╗██║   ██║   ╚════██║\e[0m"
    echo -e "$branco██║  ██║██║     ██║     ╚██████╔╝██║██║ ╚████║   ██║   ██║ ╚═╝ ██║███████╗██║ ╚████║   ██║   ███████║\e[0m"
    echo -e "$branco╚═╝  ╚═╝╚═╝     ╚═╝      ╚═════╝ ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝\e[0m"
    echo ""
    echo ""
}

## Titulo Documenso [56]

nome_documenso() {
    clear
    echo ""
    echo ""
    echo -e "$branco          ██████╗  ██████╗  ██████╗██╗   ██╗███╗   ███╗███████╗███╗   ██╗███████╗ ██████╗ \e[0m"
    echo -e "$branco          ██╔══██╗██╔═══██╗██╔════╝██║   ██║████╗ ████║██╔════╝████╗  ██║██╔════╝██╔═══██╗\e[0m"
    echo -e "$branco          ██║  ██║██║   ██║██║     ██║   ██║██╔████╔██║█████╗  ██╔██╗ ██║███████╗██║   ██║\e[0m"
    echo -e "$branco          ██║  ██║██║   ██║██║     ██║   ██║██║╚██╔╝██║██╔══╝  ██║╚██╗██║╚════██║██║   ██║\e[0m"
    echo -e "$branco          ██████╔╝╚██████╔╝╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗██║ ╚████║███████║╚██████╔╝\e[0m"
    echo -e "$branco          ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝╚══════╝ ╚═════╝ \e[0m"
    echo ""
    echo ""
}

## Titulo Moodle [57]

nome_moodle() {
    clear
    echo ""
    echo ""
    echo -e "$branco                       ███╗   ███╗ ██████╗  ██████╗ ██████╗ ██╗     ███████╗\e[0m"
    echo -e "$branco                       ████╗ ████║██╔═══██╗██╔═══██╗██╔══██╗██║     ██╔════╝\e[0m"
    echo -e "$branco                       ██╔████╔██║██║   ██║██║   ██║██║  ██║██║     █████╗  \e[0m"
    echo -e "$branco                       ██║╚██╔╝██║██║   ██║██║   ██║██║  ██║██║     ██╔══╝  \e[0m"
    echo -e "$branco                       ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██████╔╝███████╗███████╗\e[0m"
    echo -e "$branco                       ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚══════╝╚══════╝\e[0m"
    echo ""
    echo ""
}

## Titulo ToolJet [58]

nome_tooljet() {
    clear
    echo ""
    echo ""
    echo -e "$branco                    ████████╗ ██████╗  ██████╗ ██╗          ██╗███████╗████████╗\e[0m"
    echo -e "$branco                    ╚══██╔══╝██╔═══██╗██╔═══██╗██║          ██║██╔════╝╚══██╔══╝\e[0m"
    echo -e "$branco                       ██║   ██║   ██║██║   ██║██║          ██║█████╗     ██║   \e[0m"
    echo -e "$branco                       ██║   ██║   ██║██║   ██║██║     ██   ██║██╔══╝     ██║   \e[0m"
    echo -e "$branco                       ██║   ╚██████╔╝╚██████╔╝███████╗╚█████╔╝███████╗   ██║   \e[0m"
    echo -e "$branco                       ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝ ╚════╝ ╚══════╝   ╚═╝   \e[0m"
    echo ""
    echo ""
}

# ===================================================================================================


## Titulo Saindo do setup

nome_saindo() {
    clear
    echo ""
    echo -e "$branco                ███████╗ █████╗ ██╗███╗   ██╗██████╗  ██████╗     ██████╗  ██████╗ \e[0m"
    echo -e "$branco                ██╔════╝██╔══██╗██║████╗  ██║██╔══██╗██╔═══██╗    ██╔══██╗██╔═══██╗\e[0m"
    echo -e "$branco                ███████╗███████║██║██╔██╗ ██║██║  ██║██║   ██║    ██║  ██║██║   ██║\e[0m"
    echo -e "$branco                ╚════██║██╔══██║██║██║╚██╗██║██║  ██║██║   ██║    ██║  ██║██║   ██║\e[0m"
    echo -e "$branco                ███████║██║  ██║██║██║ ╚████║██████╔╝╚██████╔╝    ██████╔╝╚██████╔╝\e[0m"
    echo -e "$branco                ╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝     ╚═════╝  ╚═════╝ \e[0m"
    echo -e "$branco                                                                   \e[0m"
    echo -e "$branco                           ███████╗███████╗████████╗██╗   ██╗██████╗                   \e[0m"
    echo -e "$branco                           ██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔══██╗                  \e[0m"
    echo -e "$branco                           ███████╗█████╗     ██║   ██║   ██║██████╔╝                  \e[0m"
    echo -e "$branco                           ╚════██║██╔══╝     ██║   ██║   ██║██╔═══╝                   \e[0m"       
    echo -e "$branco                           ███████║███████╗   ██║   ╚██████╔╝██║                       \e[0m"
    echo -e "$branco                           ╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝                       \e[0m"
    echo ""
    echo "" 
}

## Titulo Remover Stack

nome_remover_stack() {
    clear
    echo -e "$amarelo===================================================================================================\e[0m"
    echo ""
    echo ""
    echo -e "$branco                  ██████╗ ███████╗███╗   ███╗ ██████╗ ██╗   ██╗███████╗██████╗ \e[0m"
    echo -e "$branco                  ██╔══██╗██╔════╝████╗ ████║██╔═══██╗██║   ██║██╔════╝██╔══██╗\e[0m"
    echo -e "$branco                  ██████╔╝█████╗  ██╔████╔██║██║   ██║██║   ██║█████╗  ██████╔╝\e[0m"
    echo -e "$branco                  ██╔══██╗██╔══╝  ██║╚██╔╝██║██║   ██║╚██╗ ██╔╝██╔══╝  ██╔══██╗\e[0m"
    echo -e "$branco                  ██║  ██║███████╗██║ ╚═╝ ██║╚██████╔╝ ╚████╔╝ ███████╗██║  ██║\e[0m"
    echo -e "$branco                  ╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝ ╚═════╝   ╚═══╝  ╚══════╝╚═╝  ╚═╝\e[0m"
    echo -e "$branco                                                                               \e[0m"
    echo -e "$branco                           ███████╗████████╗ █████╗  ██████╗██╗  ██╗            \e[0m"
    echo -e "$branco                           ██╔════╝╚══██╔══╝██╔══██╗██╔════╝██║ ██╔╝            \e[0m"
    echo -e "$branco                           ███████╗   ██║   ███████║██║     █████╔╝             \e[0m"
    echo -e "$branco                           ╚════██║   ██║   ██╔══██║██║     ██╔═██╗             \e[0m"
    echo -e "$branco                           ███████║   ██║   ██║  ██║╚██████╗██║  ██╗            \e[0m"
    echo -e "$branco                           ╚══════╝   ╚═╝   ╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝            \e[0m"
    echo ""
    echo ""
    echo -e "$amarelo===================================================================================================\e[0m"
    echo""                                                                                             
}
nome_portainer.reset() {
    echo ""
    echo ""
    echo -e "$branco           ██████╗ ███████╗███████╗███████╗████████╗ █████╗ ███╗   ██╗██████╗  ██████╗ \e[0m"
    echo -e "$branco           ██╔══██╗██╔════╝██╔════╝██╔════╝╚══██╔══╝██╔══██╗████╗  ██║██╔══██╗██╔═══██╗\e[0m"
    echo -e "$branco           ██████╔╝█████╗  ███████╗█████╗     ██║   ███████║██╔██╗ ██║██║  ██║██║   ██║\e[0m"
    echo -e "$branco           ██╔══██╗██╔══╝  ╚════██║██╔══╝     ██║   ██╔══██║██║╚██╗██║██║  ██║██║   ██║\e[0m"
    echo -e "$branco           ██║  ██║███████╗███████║███████╗   ██║   ██║  ██║██║ ╚████║██████╔╝╚██████╔╝\e[0m"
    echo -e "$branco           ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═══╝╚═════╝  ╚═════╝ \e[0m"
    echo -e "$branco                                                                                       \e[0m"
    echo -e "$branco                           ███████╗███████╗███╗   ██╗██╗  ██╗ █████╗                   \e[0m"
    echo -e "$branco                           ██╔════╝██╔════╝████╗  ██║██║  ██║██╔══██╗                  \e[0m"
    echo -e "$branco                           ███████╗█████╗  ██╔██╗ ██║███████║███████║                  \e[0m"
    echo -e "$branco                           ╚════██║██╔══╝  ██║╚██╗██║██╔══██║██╔══██║                  \e[0m"
    echo -e "$branco                           ███████║███████╗██║ ╚████║██║  ██║██║  ██║                  \e[0m"
    echo -e "$branco                           ╚══════╝╚══════╝╚═╝  ╚═══╝╚═╝  ╚═╝╚═╝  ╚═╝                  \e[0m"
    echo ""
    echo ""
}


## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                            ANDROMEDA                                        ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Defasados

nome_trocar_logos() {
    clear
    echo ""
    echo -e "$branco████████╗██████╗  ██████╗  ██████╗ █████╗ ██████╗     ██╗      ██████╗  ██████╗  ██████╗ ███████╗\e[0m"
    echo -e "$branco╚══██╔══╝██╔══██╗██╔═══██╗██╔════╝██╔══██╗██╔══██╗    ██║     ██╔═══██╗██╔════╝ ██╔═══██╗██╔════╝\e[0m"
    echo -e "$branco   ██║   ██████╔╝██║   ██║██║     ███████║██████╔╝    ██║     ██║   ██║██║  ███╗██║   ██║███████╗\e[0m"
    echo -e "$branco   ██║   ██╔══██╗██║   ██║██║     ██╔══██║██╔══██╗    ██║     ██║   ██║██║   ██║██║   ██║╚════██║\e[0m"
    echo -e "$branco   ██║   ██║  ██║╚██████╔╝╚██████╗██║  ██║██║  ██║    ███████╗╚██████╔╝╚██████╔╝╚██████╔╝███████║\e[0m"
    echo -e "$branco   ╚═╝   ╚═╝  ╚═╝ ╚═════╝  ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝    ╚══════╝ ╚═════╝  ╚═════╝  ╚═════╝ ╚══════╝\e[0m"
    echo -e "$branco                                                                                                 \e[0m"
    echo -e "$branco   ██████╗  ██████╗      ██████╗██╗  ██╗ █████╗ ████████╗██╗    ██╗ ██████╗  ██████╗ ████████╗      \e[0m"
    echo -e "$branco   ██╔══██╗██╔═══██╗    ██╔════╝██║  ██║██╔══██╗╚══██╔══╝██║    ██║██╔═══██╗██╔═══██╗╚══██╔══╝      \e[0m"
    echo -e "$branco   ██║  ██║██║   ██║    ██║     ███████║███████║   ██║   ██║ █╗ ██║██║   ██║██║   ██║   ██║         \e[0m"
    echo -e "$branco   ██║  ██║██║   ██║    ██║     ██╔══██║██╔══██║   ██║   ██║███╗██║██║   ██║██║   ██║   ██║         \e[0m"
    echo -e "$branco   ██████╔╝╚██████╔╝    ╚██████╗██║  ██║██║  ██║   ██║   ╚███╔███╔╝╚██████╔╝╚██████╔╝   ██║         \e[0m"
    echo -e "$branco   ╚═════╝  ╚═════╝      ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚══╝╚══╝  ╚═════╝  ╚═════╝    ╚═╝         \e[0m"
    echo ""
    echo ""
}

nome_finalizado() {
    clear
    echo ""
    echo -e "$branco             ███████╗██╗███╗   ██╗ █████╗ ██╗     ██╗███████╗ █████╗ ██████╗  ██████╗ \e[0m"
    echo -e "$branco             ██╔════╝██║████╗  ██║██╔══██╗██║     ██║╚══███╔╝██╔══██╗██╔══██╗██╔═══██╗\e[0m"
    echo -e "$branco             █████╗  ██║██╔██╗ ██║███████║██║     ██║  ███╔╝ ███████║██║  ██║██║   ██║\e[0m"
    echo -e "$branco             ██╔══╝  ██║██║╚██╗██║██╔══██║██║     ██║ ███╔╝  ██╔══██║██║  ██║██║   ██║\e[0m"
    echo -e "$branco             ██║     ██║██║ ╚████║██║  ██║███████╗██║███████╗██║  ██║██████╔╝╚██████╔╝\e[0m"
    echo -e "$branco             ╚═╝     ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝╚═╝╚══════╝╚═╝  ╚═╝╚═════╝  ╚═════╝ \e[0m"
    echo ""
    echo ""
}

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                            ANDROMEDA                                        ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Menu de opções

#menu_instalador(){
#    echo -e "${amarelo}[ 00 ]${reset} - ${branco}Testar SMTP                             ${verde}| ${reset}  ${amarelo}[ 21 ]${reset} - ${branco}Formbricks${reset}"
#    echo -e "${amarelo}[ 01 ]${reset} - ${branco}Traefik & Portainer                     ${verde}| ${reset}  ${amarelo}[ 22 ]${reset} - ${branco}NocoDB${reset}"
#    echo -e "${amarelo}[ 02 ]${reset} - ${branco}Chatwoot                                ${verde}| ${reset}  ${amarelo}[ 23 ]${reset} - ${branco}Langfuse${reset}"
#    echo -e "${branco}  '-->${amarelo}[ 2.1 ]${reset} - ${branco}Chatwoot (ARM)                   ${verde}| ${reset}  ${amarelo}[ 24 ]${reset} - ${branco}Metabase${reset}"
#    echo -e "${amarelo}[ 03 ]${reset} -  ${branco}Evolution API                          ${verde}| ${reset}  ${amarelo}[ 25 ]${reset} - ${branco}Odoo${reset}"
#    echo -e "${branco}  '-->${amarelo}[ 3.1 ]${reset} - ${branco}Evolution API (ARM)              ${verde}| ${reset}  ${amarelo}[ 26 ]${reset} - ${branco}Chatwoot Nestor${reset}"
#    echo -e "${amarelo}[ 04 ]${reset} - ${branco}MinIO                                   ${verde}| ${reset}  ${amarelo}[ 27 ]${reset} - ${branco}Uno API${reset}"
#    echo -e "${amarelo}[ 05 ]${reset} - ${branco}Typebot                                 ${verde}| ${reset}  ${amarelo}[ 28 ]${reset} - ${branco}N8N + Nodes Quepasa $vermelho[OFF]${reset}"
#    echo -e "${amarelo}[ 06 ]${reset} - ${branco}N8N                                     ${verde}| ${reset}  ${amarelo}[ 29 ]${reset} - ${branco}Quepasa API $vermelho[OFF]${reset}"
#    echo -e "${amarelo}[ 07 ]${reset} - ${branco}Flowise                                 ${verde}| ${reset}  ${amarelo}[ 30 ]${reset} - ${branco}Docuseal${reset}"
#    echo -e "${amarelo}[ 08 ]${reset} - ${branco}PgAdmin 4                               ${verde}| ${reset}  ${amarelo}[ 31 ]${reset} - ${branco}Grafana + Prometheus + cAdvisor${reset}"
#    echo -e "${amarelo}[ 09 ]${reset} - ${branco}Nocobase                                ${verde}| ${reset}  ${amarelo}[ 32 ]${reset} - ${branco}Dify AI${reset}"
#    echo -e "${amarelo}[ 10 ]${reset} - ${branco}Botpress                                ${verde}| ${reset}  ${amarelo}[ 33 ]${reset} - ${branco}Ollama${reset}"
#    echo -e "${amarelo}[ 11 ]${reset} - ${branco}Wordpress                               ${verde}| ${reset}  ${amarelo}[ 34 ]${reset} - ${branco}Affine${reset}"
#    echo -e "${amarelo}[ 12 ]${reset} - ${branco}Baserow                                 ${verde}| ${reset}  ${amarelo}[ 35 ]${reset} - ${branco}Directus${reset}"
#    echo -e "${amarelo}[ 13 ]${reset} - ${branco}MongoDB                                 ${verde}| ${reset}  ${amarelo}[ 36 ]${reset} - ${branco}VaultWarden${reset}"
#    echo -e "${amarelo}[ 14 ]${reset} - ${branco}RabbitMQ                                ${verde}| ${reset}  ${amarelo}[ 37 ]${reset} - ${branco}NextCloud${reset}"
#    echo -e "${amarelo}[ 15 ]${reset} - ${branco}Uptime Kuma                             ${verde}| ${reset}  ${amarelo}[ 38 ]${reset} - ${branco}Strapi${reset}"
#    echo -e "${amarelo}[ 16 ]${reset} - ${branco}Cal.com                                 ${verde}| ${reset}  ${amarelo}[ 39 ]${reset} - ${branco}PhpMyAdmin${reset}"
#    echo -e "${amarelo}[ 17 ]${reset} - ${branco}Mautic                                  ${verde}| ${reset}  ${amarelo}[ 40 ]${reset} - ${branco}Supabase${reset}"
#    echo -e "${amarelo}[ 18 ]${reset} - ${branco}Appsmith                                ${verde}| ${reset}  ${amarelo}[ 41 ]${reset} - ${branco}Ntfy ${verde}[NOVO]${reset}"
#    echo -e "${amarelo}[ 19 ]${reset} - ${branco}Qdrant                                  ${verde}| ${reset}  ${amarelo}[ 42 ]${reset} - ${branco}REMOVER STACK${reset}"
#    echo -e "${amarelo}[ 20 ]${reset} - ${branco}Woofed CRM                              ${verde}| ${reset}  ${amarelo}[ 43 ]${reset} - ${branco}Sair do instalador${reset}"
#    echo""
#}

menu_instalador() {
  case $menu_instalador in
    1) menu_instalador_pg_1 ;;
    2) menu_instalador_pg_2 ;;
    *) echo "Erro ao listar menu..." ;;
  esac
}

menu_instalador_pg_1(){
    echo -e "${amarelo}[ 00 ]${reset} - ${branco}Testar SMTP                            ${verde}| ${reset}  ${amarelo}[ 22 ]${reset} - ${branco}NocoDB${reset}"
    echo -e "${amarelo}[ 01 ]${reset} - ${branco}Traefik & Portainer                    ${verde}| ${reset}  ${amarelo}[ 23 ]${reset} - ${branco}Langfuse${reset}"
    echo -e "${amarelo}[ 02 ]${reset} - ${branco}Chatwoot                               ${verde}| ${reset}  ${amarelo}[ 24 ]${reset} - ${branco}Metabase${reset}"
    echo -e "${branco}  '-->${amarelo}[ 2.1 ]${reset} - ${branco}Chatwoot (ARM)                  ${verde}| ${reset}  ${amarelo}[ 25 ]${reset} - ${branco}Odoo${reset}"
    echo -e "${amarelo}[ 03 ]${reset} -  ${branco}Evolution API                         ${verde}| ${reset}  ${amarelo}[ 26 ]${reset} - ${branco}Chatwoot Nestor${reset}"
    echo -e "${amarelo}[ 04 ]${reset} - ${branco}MinIO                                  ${verde}| ${reset}  ${amarelo}[ 27 ]${reset} - ${branco}Uno API${reset}"
    echo -e "${amarelo}[ 05 ]${reset} - ${branco}Typebot                                ${verde}| ${reset}  ${amarelo}[ 28 ]${reset} - ${branco}N8N + Nodes Quepasa${reset}"
    echo -e "${amarelo}[ 06 ]${reset} - ${branco}N8N                                    ${verde}| ${reset}  ${amarelo}[ 29 ]${reset} - ${branco}Quepasa API${reset}"
    echo -e "${amarelo}[ 07 ]${reset} - ${branco}Flowise                                ${verde}| ${reset}  ${amarelo}[ 30 ]${reset} - ${branco}Docuseal${reset}"
    echo -e "${amarelo}[ 08 ]${reset} - ${branco}PgAdmin 4                              ${verde}| ${reset}  ${amarelo}[ 31 ]${reset} - ${branco}Grafana + Prometheus + cAdvisor${reset}"
    echo -e "${amarelo}[ 09 ]${reset} - ${branco}Nocobase                               ${verde}| ${reset}  ${amarelo}[ 32 ]${reset} - ${branco}Dify AI${reset}"
    echo -e "${amarelo}[ 10 ]${reset} - ${branco}Botpress                               ${verde}| ${reset}  ${amarelo}[ 33 ]${reset} - ${branco}Ollama${reset}"
    echo -e "${amarelo}[ 11 ]${reset} - ${branco}Wordpress                              ${verde}| ${reset}  ${amarelo}[ 34 ]${reset} - ${branco}Affine${reset}"
    echo -e "${amarelo}[ 12 ]${reset} - ${branco}Baserow                                ${verde}| ${reset}  ${amarelo}[ 35 ]${reset} - ${branco}Directus${reset}"
    echo -e "${amarelo}[ 13 ]${reset} - ${branco}MongoDB                                ${verde}| ${reset}  ${amarelo}[ 36 ]${reset} - ${branco}VaultWarden${reset}"
    echo -e "${amarelo}[ 14 ]${reset} - ${branco}RabbitMQ                               ${verde}| ${reset}  ${amarelo}[ 37 ]${reset} - ${branco}NextCloud${reset}"
    echo -e "${amarelo}[ 15 ]${reset} - ${branco}Uptime Kuma                            ${verde}| ${reset}  ${amarelo}[ 38 ]${reset} - ${branco}Strapi${reset}"
    echo -e "${amarelo}[ 16 ]${reset} - ${branco}Cal.com                                ${verde}| ${reset}  ${amarelo}[ 39 ]${reset} - ${branco}PhpMyAdmin${reset}"
    echo -e "${amarelo}[ 17 ]${reset} - ${branco}Mautic                                 ${verde}| ${reset}  ${amarelo}[ 40 ]${reset} - ${branco}Supabase${reset}"
    echo -e "${amarelo}[ 18 ]${reset} - ${branco}Appsmith                               ${verde}| ${reset}  ${amarelo}[ 41 ]${reset} - ${branco}Ntfy${reset}"
    echo -e "${amarelo}[ 19 ]${reset} - ${branco}Qdrant                                 ${verde}| ${reset}  ${amarelo}[ 42 ]${reset} - ${branco}LowCoder ${reset}"
    echo -e "${amarelo}[ 20 ]${reset} - ${branco}Woofed CRM                             ${verde}| ${reset}  ${amarelo}[ 43 ]${reset} - ${branco}LangFlow${reset}"
    echo -e "${amarelo}[ 21 ]${reset} - ${branco}Formbricks                             ${verde}| ${reset}  ${amarelo}[ 44 ]${reset} - ${branco}OpenProject${reset}"
    echo -e ""
    echo -e "${branco}<-- Digite ${amarelo}P1 ${branco}para ir para pagina 1             ${amarelo}|${branco}              Digite ${amarelo}P2${branco} para ir para pagina 2 -->${reset}"
    echo -e ""
}

menu_instalador_pg_2(){
    echo -e "${amarelo}[ 45 ]${reset} - ${branco}ZEP                                    ${verde}| ${reset}  ${amarelo}[ 68 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 46 ]${reset} - ${branco}HumHub                                 ${verde}| ${reset}  ${amarelo}[ 69 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 47 ]${reset} - ${branco}Yourls                                 ${verde}| ${reset}  ${amarelo}[ 70 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 48 ]${reset} - ${branco}TwentyCRM                              ${verde}| ${reset}  ${amarelo}[ 71 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 49 ]${reset} - ${branco}Mattermost                             ${verde}| ${reset}  ${amarelo}[ 72 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 50 ]${reset} - ${branco}Outline                                ${verde}| ${reset}  ${amarelo}[ 73 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 51 ]${reset} - ${branco}Focalboard                             ${verde}| ${reset}  ${amarelo}[ 74 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 52 ]${reset} - ${branco}GLPI                                   ${verde}| ${reset}  ${amarelo}[ 75 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 53 ]${reset} - ${branco}Anything LLM ${verde}[NOVO]                    ${verde}| ${reset}  ${amarelo}[ 76 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 54 ]${reset} - ${branco}Excalidraw ${verde}[NOVO]                      ${verde}| ${reset}  ${amarelo}[ 77 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 55 ]${reset} - ${branco}Easy!Apointments ${verde}[NOVO]                ${verde}| ${reset}  ${amarelo}[ 78 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 56 ]${reset} - ${branco}Documenso ${verde}[NOVO]                       ${verde}| ${reset}  ${amarelo}[ 79 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 57 ]${reset} - ${branco}Moodle ${verde}[NOVO]                          ${verde}| ${reset}  ${amarelo}[ 80 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 58 ]${reset} - ${branco}ToolJet ${verde}[NOVO]                         ${verde}| ${reset}  ${amarelo}[ 81 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 59 ]${reset} - ${branco}EM BREVE...                            ${verde}| ${reset}  ${amarelo}[ 82 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 60 ]${reset} - ${branco}EM BREVE...                            ${verde}| ${reset}  ${amarelo}[ 83 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 61 ]${reset} - ${branco}EM BREVE...                            ${verde}| ${reset}  ${amarelo}[ 84 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 62 ]${reset} - ${branco}EM BREVE...                            ${verde}| ${reset}  ${amarelo}[ 85 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 63 ]${reset} - ${branco}EM BREVE...                            ${verde}| ${reset}  ${amarelo}[ 86 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 64 ]${reset} - ${branco}EM BREVE...                            ${verde}| ${reset}  ${amarelo}[ 87 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 65 ]${reset} - ${branco}EM BREVE...                            ${verde}| ${reset}  ${amarelo}[ 88 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 66 ]${reset} - ${branco}EM BREVE...                            ${verde}| ${reset}  ${amarelo}[ 89 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e "${amarelo}[ 67 ]${reset} - ${branco}EM BREVE...                            ${verde}| ${reset}  ${amarelo}[ 90 ]${reset} - ${branco}EM BREVE...${reset}"
    echo -e ""
    echo -e ""
    echo -e "${branco}<-- Digite ${amarelo}P1 ${branco}para ir para pagina 1             ${amarelo}|${branco}              Digite ${amarelo}P2${branco} para ir para pagina 2 -->${reset}"
    echo -e ""
}

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                            ANDROMEDA                                        ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##


stack_editavel(){

    ## Instalar jq
    sudo apt install jq -y > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "2/10 - [ OK ] - Instalando JQ Método 1/2"
    else
        echo "2/10 - [ OFF ] - Erro ao instalar JQ Método 1/2"
    fi

    sudo apt-get install -y jq > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "3/10 - [ OK ] - Instalando JQ Método 2/2"
    else
        echo "3/10 - [ OFF ] - Erro ao instalar JQ Método 2/2"
    fi

    ## Definindo o diretório do arquivo dados_portainer
    arquivo="/root/dados_vps/dados_portainer"

    ## Verifica se o arquivo existe
    if [ ! -f "$arquivo" ]; then
        echo "Arquivo não encontrado: $arquivo"
        sleep 2

        ## Cria o arquivo caso não exista
        criar_arquivo
    fi

    ## Remove o https:// caso existir
    sed -i 's/Dominio do portainer: https:\/\/\(.*\)/Dominio do portainer: \1/' "$arquivo"

    ## Pega o usuario do portainer
    USUARIO=$(grep "Usuario: " /root/dados_vps/dados_portainer | awk -F "Usuario: " '{print $2}')
    if [ $? -eq 0 ]; then
        echo -e "4/10 - [ OK ] - Pegando usuario do portainer: $bege$USUARIO$reset"
    else
        echo "4/10 - [ OFF ] - Erro ao pegar usuario do portainer"
    fi

    ## Pega a senha do portainer
    SENHA=$(grep "Senha: " /root/dados_vps/dados_portainer | awk -F "Senha: " '{print $2}')
    if [ $? -eq 0 ]; then
        echo -e "5/10 - [ OK ] - Pegando a senha do portainer: $bege$SENHA$reset"
    else
        echo "5/10 - [ OFF ] - Erro ao pegar senha do portainer"
    fi

    ## Pega a URL do portainer
    PORTAINER_URL=$(grep "Dominio do portainer: " /root/dados_vps/dados_portainer | awk -F "Dominio do portainer: " '{print $2}')
    if [ $? -eq 0 ]; then
        echo -e "6/10 - [ OK ] - Pegando dominio do Portainer: $bege$PORTAINER_URL$reset"
    else
        echo "6/10 - [ OFF ] - Erro ao pegar dominio do Portainer"
    fi

    ## Usa o token do portainer
    #TOKEN=$(grep "Token: " /root/dados_vps/dados_portainer | awk -F "Token: " '{print $2}')
    
    ## Pega um token do portainer
    #TOKEN=$(curl -k -X POST -H "Content-Type: application/json" -d "{\"username\":\"$USUARIO\",\"password\":\"$SENHA\"}" https://$PORTAINER_URL/api/auth | jq -r .jwt)

    TOKEN=""
    Tentativa_atual=0
    Maximo_de_tentativas=6
    
    while [ -z "$TOKEN" ] || [ "$TOKEN" == "null" ]; do
        TOKEN=$(curl -k -s -X POST -H "Content-Type: application/json" -d "{\"username\":\"$USUARIO\",\"password\":\"$SENHA\"}" https://$PORTAINER_URL/api/auth | jq -r .jwt)
    
        Tentativa_atual=$((Tentativa_atual + 1))
    
        ## Verifica se atingiu o número máximo de tentativas
        if [ "$Tentativa_atual" -ge "$Maximo_de_tentativas" ]; then
            clear
            erro_msg
            echo "7/10 - [ OFF ] - Erro: Falha ao obter token após $Maximo_de_tentativas tentativas."
            echo "Verifique suas credenciais do Portainer para conseguirmos realizar o deploy."
            sleep 5
            criar_arquivo
            return
            #exit 1
        fi
    
        ## Se o token foi obtido com sucesso, sair do loop
        if [ -n "$TOKEN" ] && [ "$TOKEN" != "null" ]; then
            break
        fi
    
        ## Aguarda alguns segundos antes de tentar novamente
        echo -e "Tentando gerar token do portainer. Tentativa atual $bege$Tentativa_atual/5$reset"
        sleep 5
    done
    
    if [ $? -eq 0 ]; then
        echo -e "7/10 - [ OK ] - Pegando token do Portainer: $bege$TOKEN$reset"
    fi
    

    ### Verifica se o token veio vazio
    #if [ -z "$TOKEN" ] || [ "$TOKEN" == "null" ]; then
    #    echo "Erro: Falha ao obter token. Preencha com suas credenciais do portainer a seguir."
    #    sleep 5
    #    criar_arquivo
    #    #exit 1
    #fi

    ## Salva dados no arquivo do portainer
    echo -e "[ PORTAINER ]\nDominio do portainer: $PORTAINER_URL\n\nUsuario: $USUARIO\n\nSenha: $SENHA\n\nToken: $TOKEN" > "/root/dados_vps/dados_portainer"

    ## Pegando o id do portainer
    ENDPOINT_ID=$(curl -k -s -X GET -H "Authorization: Bearer $TOKEN" https://$PORTAINER_URL/api/endpoints | jq -r '.[] | select(.Name == "primary") | .Id')
    if [ $? -eq 0 ]; then
        echo -e "8/10 - [ OK ] - Pegando ID do Portainer: $bege$ENDPOINT_ID$reset"
    else
        echo "8/10 - [ OFF ] - Erro ao pegar ID do Portainer"
    fi

    ## Definindo id 1 do Portainer
    #ENDPOINT_ID=1
    
    ## Pegando o ID do Swarm
    SWARM_ID=$(curl -k -s -X GET -H "Authorization: Bearer $TOKEN" "https://$PORTAINER_URL/api/endpoints/$ENDPOINT_ID/docker/swarm" | jq -r .ID)
    if [ $? -eq 0 ]; then
        echo -e "9/10 - [ OK ] - Pegando ID do Swarm: $bege$SWARM_ID$reset"
    else
        echo "9/10 - [ OFF ] - Erro ao pegar ID do Swarm"
    fi

    ## Testa o Swarm
    SWARM_STATUS=$(docker info --format '{{.Swarm.LocalNodeState}}')
    if [ "$SWARM_STATUS" != "active" ]; then
        echo "Erro: Docker Swarm não está ativo."
        exit 1
    fi

    # Arquivo temporário para capturar a saída de erro e a resposta
    erro_output=$(mktemp)
    response_output=$(mktemp)

    ## Fazendo deploy da stack pelo portainer
    http_code=$(curl -s -o "$response_output" -w "%{http_code}" -k -X POST \
    -H "Authorization: Bearer $TOKEN" \
    -F "Name=$STACK_NAME" \
    -F "file=@$(pwd)/$STACK_NAME.yaml" \
    -F "SwarmID=$SWARM_ID" \
    -F "endpointId=$ENDPOINT_ID" \
    "https://$PORTAINER_URL/api/stacks/create/swarm/file" 2> "$erro_output")

    response_body=$(cat "$response_output")

    if [ "$http_code" -eq 200 ]; then
        # Verifica o conteúdo da resposta para garantir que o deploy foi bem-sucedido
        if echo "$response_body" | grep -q "\"Id\""; then
            echo -e "10/10 - [ OK ] - Deploy da stack $bege$STACK_NAME$reset feito com sucesso!"
        else
            echo -e "10/10 - [ OFF ] - Erro, resposta inesperada do servidor ao tentar efetuar deploy da stack $bege$STACK_NAME$reset."
            echo "Resposta do servidor: $(echo "$response_body" | jq .)"
        fi
    else
        echo "10/10 - [ OFF ] - Erro ao efetuar deploy. Resposta HTTP: $http_code"
        echo "Mensagem de erro: $(cat "$erro_output")"
        echo "Detalhes: $(echo "$response_body" | jq .)"
    fi

    echo ""

    # Remove os arquivos temporários
    rm "$erro_output"
    rm "$response_output"
}

## Função para verificar se o arquivo de dados do Portainer existe
verificar_arquivo() {
    sudo apt install jq -y > /dev/null 2>&1
    if [ ! -f "/root/dados_vps/dados_portainer" ]; then
        nome_credenciais
        criar_arquivo
    else
        verificar_campos
    fi
}


## Função para criar o arquivo de dados do Portainer
criar_arquivo() {
    if [ -f "/root/dados_vps/dados_portainer" ]; then
        rm "/root/dados_vps/dados_portainer"
        echo "Arquivo existente removido."
    fi

    ## Caso não exista o arquivo ele vai pedir os dados para criar.
    nome_credenciais
    echo -e "\e[97mPasso$amarelo 1/3\e[0m"
    #echo -e "\e[97mObs: Coloque o https:// antes do link do portainer\e[0m"
    read -p "Digite a Url do Portainer (ex: portainer.sinergialucrativa.com): " PORTAINER_URL
    echo ""

    echo -e "\e[97mPasso$amarelo 2/3\e[0m"
    read -p "Digite seu Usuario (ex: admin): " USUARIO
    echo ""

    echo -e "\e[97mPasso$amarelo 3/3\e[0m"
    echo -e "\e[97mObs: A Senha não aparecera ao digitar\e[0m"
    read -s -p "Digite a Senha (ex: @Senha123_): " SENHA
    echo ""

    verificar_token "$PORTAINER_URL" "$USUARIO" "$SENHA" true
}


## Função para verificar os campos do arquivo de dados do Portainer
verificar_campos() {
    PORTAINER_URL=$(grep -oP '(?<=Dominio do portainer: ).*' /root/dados_vps/dados_portainer)
    USUARIO=$(grep -oP '(?<=Usuario: ).*' /root/dados_vps/dados_portainer)
    SENHA=$(grep -oP '(?<=Senha: ).*' /root/dados_vps/dados_portainer)

    ## se por acaso não tiver login nem senha lá vem para ca
    if [ -z "$USUARIO" ] || [ -z "$SENHA" ]; then
        
        nome_credenciais
        echo -e "\e[97mPasso$amarelo 1/3\e[0m"
        #echo -e "\e[97mObs: Coloque o https:// antes do link do portainer\e[0m"
        read -p "Digite a Url do Portainer (ex: portainer.sinergialucrativa.com): " PORTAINER_URL
        echo ""
    
        echo -e "\e[97mPasso$amarelo 2/3\e[0m"
        read -p "Digite seu Usuario (ex: admin): " USUARIO
        echo ""
    
        echo -e "\e[97mPasso$amarelo 3/3\e[0m"
        echo -e "\e[97mObs: A Senha não aparecera ao digitar\e[0m"
        read -s -p "Digite a Senha (ex: @Senha123_): " SENHA
        echo ""

        ATUALIZAR="true" ## Verificar se já existe TOKEN no arquivo
        verificar_token "$PORTAINER_URL" "$USUARIO" "$SENHA" true
    ## Caso o usuario e senha estiver como "Precisa criar dentro do portainer" como o arquivo oficial vem para ca
    elif [ "$USUARIO" == "Precisa criar dentro do portainer" ] || [ "$SENHA" == "Precisa criar dentro do portainer" ]; then
        
        nome_credenciais
        echo -e "\e[97mPasso$amarelo 1/3\e[0m"
        #echo -e "\e[97mObs: Coloque o https:// antes do link do portainer\e[0m"
        read -p "Digite a Url do Portainer (ex: portainer.sinergialucrativa.com): " PORTAINER_URL
        echo ""
    
        echo -e "\e[97mPasso$amarelo 2/3\e[0m"
        read -p "Digite seu Usuario (ex: admin): " USUARIO
        echo ""
    
        echo -e "\e[97mPasso$amarelo 3/3\e[0m"
        echo -e "\e[97mObs: A Senha não aparecera ao digitar\e[0m"
        read -s -p "Digite a Senha (ex: @Senha123_): " NOVA_SENHA
        echo ""

        verificar_token "$PORTAINER_URL" "$NOVO_USUARIO" "$NOVA_SENHA" true
    else
        verificar_token "$PORTAINER_URL" "$USUARIO" "$SENHA" false
    fi
}

## Função para verificar se o token é válido
verificar_token() {
    PORTAINER_URL="$1"
    USUARIO="$2"
    SENHA="$3"
    ATUALIZAR="$4"
    TENTATIVAS=0
    MAX_TENTATIVAS=5

    while [ $TENTATIVAS -lt $MAX_TENTATIVAS ]; do
        TENTATIVAS=$((TENTATIVAS+1))

        #echo -e "Dados a serem testados:"
        #echo "Link do Portainer: $PORTAINER_URL"
        #echo "Usuário: $USUARIO"
        #echo "Senha: $SENHA"

        RESPONSE=$(curl -s -w "\n%{http_code}" -k -X POST -H "Content-Type: application/json" -d "{\"username\":\"$USUARIO\",\"password\":\"$SENHA\"}" "https://$PORTAINER_URL/api/auth")
        TOKEN=$(echo "$RESPONSE" | sed '$d' | jq -r '.jwt')
        HTTP_STATUS=$(echo "$RESPONSE" | tail -n1)

        if [ "$HTTP_STATUS" -eq 200 ] && [ ! -z "$TOKEN" ]; then
    
            if [ "$ATUALIZAR" == true ]; then
                atualizar_arquivo
            fi

            $APP_ORION

            break
        else
            if [ $TENTATIVAS -gt 1 ]; then
                clear
                erro_msg
                echo ""
                echo ""
                echo "              Não foi possivel autenticar suas credenciais. Por favor tente novamente"
                echo "                                           Tentativa: $TENTATIVAS/$MAX_TENTATIVAS"
    
                sleep 3

            else
                clear
                nome_credenciais
            fi

            if [ $TENTATIVAS -lt $MAX_TENTATIVAS ]; then
                
                nome_credenciais
                echo -e "\e[97mPasso$amarelo 1/3\e[0m"
                #echo -e "\e[97mObs: Coloque o https:// antes do link do portainer\e[0m"
                read -p "Digite a Url do Portainer (ex: portainer.sinergialucrativa.com): " PORTAINER_URL
                echo ""
            
                echo -e "\e[97mPasso$amarelo 2/3\e[0m"
                read -p "Digite seu Usuario (ex: admin): " USUARIO
                echo ""
            
                echo -e "\e[97mPasso$amarelo 3/3\e[0m"
                echo -e "\e[97mObs: A Senha não aparecera ao digitar\e[0m"
                read -s -p "Digite a Senha (ex: @Senha123_): " SENHA
                echo ""
                ATUALIZAR="true"
            else
                clear
                erro_msg

                echo ""
                echo ""
                echo "                         Você atingiu o limite maximo de tentativas ($TENTATIVAS/$MAX_TENTATIVAS)."
                echo "                         Tente novamente quando lembrar da sua credencial!"
                echo 5
                clear
                break
            fi
        fi
    done
}

## Função para atualizar o arquivo de dados do Portainer com o novo usuário e senha
atualizar_arquivo() {
    echo -e "[ PORTAINER ]\nDominio do portainer: $PORTAINER_URL\n\nUsuario: $USUARIO\n\nSenha: $SENHA\n\nToken: $TOKEN" > "/root/dados_vps/dados_portainer"
    echo -e "\nArquivo de dados do Portainer atualizado com sucesso!"
}

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Verificadores


## Verifica se existe Docker, Portainer e Traefik na VPS
verificar_docker_e_portainer_traefik() {
    ## Verifica se o Docker está instalado
    if ! command -v docker &> /dev/null; then
        clear
        erro_msg
        echo -e "Ops, parece que você não instalou a opção \e[32m[1] Traefik e Portainer${reset} ${branco}do nosso instalador.${reset}"
        echo "Instale antes de tentar instalar esta aplicação."

        echo ""
        echo "Voltando ao menu em 5 segundos."
        sleep 5

        nome_menu
        menu_instalador

        return 1
    fi

    ## Verifica se o Portainer está instalado
    if ! docker ps -a --format "{{.Names}}" | grep -q "portainer"; then
        clear
        erro_msg
        echo -e "Ops, parece que você não instalou a opção \e[32m[1] Traefik e Portainer${reset} ${branco}do nosso instalador.${reset}"
        echo "Instale antes de tentar instalar esta aplicação."

        echo ""
        echo "Voltando ao menu em 5 segundos."
        sleep 5

        nome_menu
        menu_instalador

        return 1
    fi

    ## Verificar se o Traefik está instalado
    if ! docker ps -a --format "{{.Names}}" | grep -q "traefik"; then
        clear
        erro_msg
        echo -e "Ops, parece que você não instalou a opção \e[32m[1] Traefik e Portainer${reset} ${branco}do nosso instalador.${reset}"
        echo "Instale antes de tentar instalar esta aplicação."

        echo ""
        echo "Voltando ao menu em 5 segundos."
        sleep 5

        nome_menu
        menu_instalador

        return 1
    fi

    return 0
}

## Verifica se existe Minio
verificar_antes_se_tem_minio() {

    ## Verifica se o Portainer está instalado
    if ! docker ps -a --format "{{.Names}}" | grep -q "minio"; then
        clear
        erro_msg
        echo -e "Ops, parece que você não instalou a opção \e[32m[ 4 ] - MinIO${reset} ${branco}do nosso instalador.${reset}"
        echo "Instale antes de tentar instalar esta aplicação."

        echo ""
        echo "Voltando ao menu em 5 segundos."
        sleep 5

        nome_menu
        menu_instalador

        return 1
    fi

    return 0
}

## Verifica se existe rabbitMQ
verificar_antes_se_tem_rabbitmq() {

    ## Verifica se o Portainer está instalado
    if ! docker ps -a --format "{{.Names}}" | grep -q "rabbitmq"; then
        clear
        erro_msg
        echo -e "Ops, parece que você não instalou a opção \e[32m[ 14 ] - RabbitMQ${reset} ${branco}do nosso instalador.${reset}"
        echo "Instale antes de tentar instalar esta aplicação."

        echo ""
        echo "Voltando ao menu em 5 segundos."
        sleep 5

        nome_menu
        menu_instalador

        return 1
    fi

    return 0
}

## Verifica se existe Minio RabbitMQ e Chatwoot 
verificar_antes_se_tem_minio_e_rabbitmq_e_chatwoot() {
    ## Verifica se o minio está instalado
    if ! docker ps -a --format "{{.Names}}" | grep -q "minio"; then
        clear
        erro_msg
        echo -e "Ops, parece que você não instalou a opção \e[32m[ 4 ] - MinIO${reset} ${branco}do nosso instalador.${reset}"
        echo "Instale antes de tentar instalar esta aplicação."

        echo ""
        echo "Voltando ao menu em 5 segundos."
        sleep 5

        nome_menu
        menu_instalador

        return 1
    fi

    ## Verifica se o rabbitmq está instalado
    if ! docker ps -a --format "{{.Names}}" | grep -q "rabbitmq"; then
        clear
        erro_msg
        echo -e "Ops, parece que você não instalou a opção \e[32m[ 14 ] - RabbitMQ${reset} ${branco}do nosso instalador.${reset}"
        echo "Instale antes de tentar instalar esta aplicação."

        echo ""
        echo "Voltando ao menu em 5 segundos."
        sleep 5

        nome_menu
        menu_instalador

        return 1
    fi

    ## Verificar se o chatwoot está instalado
    if ! docker ps -a --format "{{.Names}}" | grep -q "chatwoot"; then
        clear
        erro_msg
        echo -e "Ops, parece que você não instalou a opção \e[32m[ 2 ] - Chatwoot${reset} ou  \e[32m[ 26 ] - Chatwoot Nestor (ft. Francis) ${branco}do nosso instalador.${reset}"
        echo "Instale antes de tentar instalar esta aplicação."

        echo ""
        echo "Voltando ao menu em 5 segundos."
        sleep 5

        nome_menu
        menu_instalador

        return 1
    fi

    return 0
}

## Verifica se existe Minio e Qdrant
verificar_antes_se_tem_minio_e_qdrant() {
    ## Verifica se o minio está instalado
    if ! docker ps -a --format "{{.Names}}" | grep -q "minio"; then
        clear
        erro_msg
        echo -e "Ops, parece que você não instalou a opção \e[32m[ 4 ] - MinIO${reset} ${branco}do nosso instalador.${reset}"
        echo "Instale antes de tentar instalar esta aplicação."

        echo ""
        echo "Voltando ao menu em 5 segundos."
        sleep 5

        nome_menu
        menu_instalador

        return 1
    fi

    ## Verifica se o rabbitmq está instalado
    if ! docker ps -a --format "{{.Names}}" | grep -q "qdrant"; then
        clear
        erro_msg
        echo -e "Ops, parece que você não instalou a opção \e[32m[ 19 ] - Qdrant${reset} ${branco}do nosso instalador.${reset}"
        echo "Instale antes de tentar instalar esta aplicação."

        echo ""
        echo "Voltando ao menu em 5 segundos."
        sleep 5

        nome_menu
        menu_instalador

        return 1
    fi

    return 0
}

## Verifica se existe Minio
verificar_antes_se_tem_mongo() {

    ## Verifica se o Portainer está instalado
    if ! docker ps -a --format "{{.Names}}" | grep -q "mongodb"; then
        clear
        erro_msg
        echo -e "Ops, parece que você não instalou a opção \e[32m[ 13 ] - MongoDB${reset} ${branco}do nosso instalador.${reset}"
        echo "Instale antes de tentar instalar esta aplicação."

        echo ""
        echo "Voltando ao menu em 5 segundos."
        sleep 5

        nome_menu
        menu_instalador

        return 1
    fi

    return 0
}

## Verificar Container Postgres

verificar_container_postgres() {
    if docker ps -q --filter "name=postgres_postgres" | grep -q .; then
        return 0
    else
        return 1
    fi
}

## Verificar Container PgVector

verificar_container_pgvector() {
    if docker ps -q --filter "name=pgvector" | grep -q .; then
        return 0
    else
        return 1
    fi
}

## Verificar Container Mysql

verificar_container_mysql() {
    if docker ps -q --filter "name=mysql" | grep -q .; then
        echo "Container MySQL está em execução."
        return 0
    else
        echo "Container MySQL não está em execução."
        return 1
    fi
}

## Verificar Container Redis

verificar_container_redis() {
    if docker ps -q --filter "name=redis" | grep -q .; then
        return 0
    else
        return 1
    fi
}

## Verificar Container Minio

verificar_container_minio() {
    if docker ps -q --filter "name=minio" | grep -q .; then
        return 0
    else
        return 1
    fi
}

## Esperar Postgres estar pronto

wait_for_postgres() {
    dados
    local container_name="postgres_postgres"

    echo "."
    while true; do
        CONTAINER_ID=$(docker ps -q --filter "name=.*$container_name.*")

        if [ -n "$CONTAINER_ID" ]; then
            echo "."
            break
        fi

        sleep 5
    done
}

## Verificar se o Traefik esta online

wait_30_sec() {
    sleep 30
}

wait_stack() {
    echo "Este processo pode demorar um pouco. Se levar mais de 5 minutos, cancele, pois algo deu errado."
    while true; do
        # Verifica se o serviço trarik está ativo
        if docker service ls --filter "name=$1" | grep "1/1"; then
            sleep 10
            break
        fi

        sleep 5
    done
}

requisitar_outra_instalacao(){
    read -p "Deseja instalar outra aplicação? (Y/N): " choice
    if [ "$choice" = "Y" ] || [ "$choice" = "y" ]; then
        return
    else
        cd
        cd
        clear
        exit 1
    fi
}


## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Pegar informações


## Pegar senha Postgres

pegar_senha_postgres() {
    while :; do
        if [ -f /root/postgres.yaml ]; then
            senha_postgres=$(grep "POSTGRES_PASSWORD" /root/postgres.yaml | awk -F '=' '{print $2}')
            break
        else
            sleep 5
        fi
    done
}

pegar_senha_pgvector() {
    while :; do
        if [ -f /root/pgvector.yaml ]; then
            senha_pgvector=$(grep "POSTGRES_PASSWORD" /root/pgvector.yaml | awk -F '=' '{print $2}')
            break
        else
            sleep 5
        fi
    done
}

pegar_user_senha_rabbitmq() {
    while :; do
        if [ -f /root/rabbitmq.yaml ]; then
            user_rabbit_mqs=$(grep "RABBITMQ_DEFAULT_USER" /root/rabbitmq.yaml | awk -F ': ' '{print $2}')
            senha_rabbit_mqs=$(grep "RABBITMQ_DEFAULT_PASS" /root/rabbitmq.yaml | awk -F ': ' '{print $2}')
            break
        else
            sleep 5
            echo "erro"
        fi
    done
}

## Pegar senha Mysql

pegar_senha_mysql() {
    while :; do
        if [ -f /root/mysql.yaml ]; then
            senha_mysql=$(grep "MYSQL_ROOT_PASSWORD" /root/mysql.yaml | awk -F '=' '{print $2}')
            break
        else
            sleep 5
        fi
    done
}

## Pegar senha Minio

pegar_senha_minio() {
    user_minio=$(grep "MINIO_ROOT_USER" /root/minio.yaml | awk -F '=' '{print $2}')
    senha_minio=$(grep "MINIO_ROOT_PASSWORD" /root/minio.yaml | awk -F '=' '{print $2}')
    url_minio=$(grep "MINIO_BROWSER_REDIRECT_URL" /root/minio.yaml | awk -F '=' '{print $2}' | sed 's/https:\/\///')
    url_s3=$(grep "MINIO_SERVER_URL" /root/minio.yaml | awk -F '=' '{print $2}' | sed 's/https:\/\///')
}

## Pegar link S3

pegar_link_s3() {
    url_s3=$(grep "MINIO_SERVER_URL" /root/minio.yaml | awk -F '=' '{print $2}' | sed 's/https:\/\///')
}

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Criadores de banco de dados Postgres

## Criar banco do Chatwoot
criar_banco_postgres_da_stack() {
    while :; do
        if docker ps -q --filter "name=^postgres_postgres" | grep -q .; then
            CONTAINER_ID=$(docker ps -q --filter "name=^postgres_postgres")

            # Verificar se o banco de dados já existe
            docker exec "$CONTAINER_ID" psql -U postgres -lqt | cut -d \| -f 1 | grep -qw "$1"

            if [ $? -eq 0 ]; then
                echo "O banco de dados $1 já existe."

                read -p "Deseja apagar e criar um novo banco de dados? (Y/N): " resposta
                if [ "$resposta" == "Y" ] || [ "$resposta" == "y" ]; then
                    # Apagar o banco de dados
                    docker exec "$CONTAINER_ID" psql -U postgres -c "DROP DATABASE IF EXISTS $1;"
                    echo "Banco de dados $1 apagado com sucesso."
                    
                    # Criar o banco de dados novamente
                    docker exec "$CONTAINER_ID" psql -U postgres -c "CREATE DATABASE $1;"
                    
                    echo "Banco de dados $1 criado com sucesso."
                else
                    echo "Usando o banco de dados existente."
                fi
                break
            else
                # Criar o banco de dados
                docker exec "$CONTAINER_ID" psql -U postgres -c "CREATE DATABASE $1;"
                
                # Verificar novamente se o banco de dados foi criado com sucesso
                docker exec "$CONTAINER_ID" psql -U postgres -lqt | cut -d \| -f 1 | grep -qw "$1"

                if [ $? -eq 0 ]; then
                    echo "Banco de dados $1 criado com sucesso."
                    break
                else
                    echo "Erro ao criar o banco de dados. Tentando novamente..."
                fi
            fi
        else
            sleep 5
        fi
    done
}

## Criar banco do Zep
criar_banco_pgvector_da_stack () {
    while :; do
        if docker ps -q --filter "name=^pgvector_pgvector" | grep -q .; then
            CONTAINER_PGVECTOR_ID=$(docker ps -q --filter "name=^pgvector_pgvector")

            # Verificar se o banco de dados já existe
            docker exec "$CONTAINER_PGVECTOR_ID" psql -U postgres -lqt | cut -d \| -f 1 | grep -qw "$1"


            if [ $? -eq 0 ]; then
                echo "O banco de dados $1 já existe."

                read -p "Deseja apagar e criar um novo banco de dados? (Y/N): " resposta
                if [ "$resposta" == "Y" ] || [ "$resposta" == "y" ]; then
                    # Apagar o banco de dados
                    docker exec "$CONTAINER_PGVECTOR_ID" psql -U postgres -c "DROP DATABASE IF EXISTS $1;"
                    echo "Banco de dados $1 apagado com sucesso."
                    
                    # Criar o banco de dados novamente
                    docker exec "$CONTAINER_PGVECTOR_ID" psql -U postgres -c "CREATE DATABASE $1;"
                    
                    echo "Banco de dados $1 criado com sucesso."
                else
                    echo "Usando o banco de dados existente."
                fi
                break
            else
                # Criar o banco de dados
                docker exec "$CONTAINER_PGVECTOR_ID" psql -U postgres -c "CREATE DATABASE $1;"
                
                # Verificar novamente se o banco de dados foi criado com sucesso
                docker exec "$CONTAINER_PGVECTOR_ID" psql -U postgres -lqt | cut -d \| -f 1 | grep -qw "$1"

                if [ $? -eq 0 ]; then
                    echo "Banco de dados $1 criado com sucesso."
                    break
                else
                    echo "Erro ao criar o banco de dados. Tentando novamente..."
                fi
            fi
        else
            sleep 5
        fi
    done
}

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Criadores de banco de dados Mysql

## Criar banco do Mautic
criar_banco_mysql_da_stack() {
    dados
    pegar_senha_mysql
    while :; do
        if CONTAINER_ID=$(docker ps -q --filter "name=^mysql_mysql"); then
            if [ -n "$CONTAINER_ID" ]; then
                # Verificar se o banco de dados já existe
                if docker exec -it "$CONTAINER_ID" mysql -u root -p"$senha_mysql" -e "SHOW DATABASES LIKE '$1';" | grep -qw "$1"; then
                    echo "O banco de dados $1 já existe."

                    read -p "Deseja apagar e criar um novo banco de dados? (Y/N): " resposta
                    if [ "$resposta" == "Y" ] || [ "$resposta" == "y" ]; then
                        # Apagar o banco de dados
                        docker exec -it "$CONTAINER_ID" mysql -u root -p"$senha_mysql" -e "DROP DATABASE $1;"
                        echo "Banco de dados $1 apagado com sucesso."

                        # Criar o banco de dados novamente
                        docker exec -it "$CONTAINER_ID" mysql -u root -p"$senha_mysql" -e "CREATE DATABASE $1;"
                        echo "Banco de dados $1 criado com sucesso."
                    else
                        echo "Usando o banco de dados existente."
                    fi
                    break
                else
                    # Criar o banco de dados
                    docker exec -it "$CONTAINER_ID" mysql -u root -p"$senha_mysql" -e "CREATE DATABASE $1;"
                    
                    # Verificar novamente se o banco de dados foi criado com sucesso
                    if docker exec -it "$CONTAINER_ID" mysql -u root -p"$senha_mysql" -e "SHOW DATABASES LIKE '$1';" | grep -qw "$1"; then
                        echo "Banco de dados $1 criado com sucesso."
                        break
                    else
                        echo "Erro ao criar o banco de dados. Tentando novamente..."
                    fi
                fi
            else
                echo "Container MySQL não encontrado. Tentando novamente..."
                sleep 5
            fi
        else
            echo "Container MySQL não encontrado. Tentando novamente..."
            sleep 5
        fi
    done
}


## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Instalação das Ferramentas

## ████████╗███████╗███████╗████████╗███████╗    ███████╗███╗   ███╗████████╗██████╗ 
## ╚══██╔══╝██╔════╝██╔════╝╚══██╔══╝██╔════╝    ██╔════╝████╗ ████║╚══██╔══╝██╔══██╗
##    ██║   █████╗  ███████╗   ██║   █████╗      ███████╗██╔████╔██║   ██║   ██████╔╝
##    ██║   ██╔══╝  ╚════██║   ██║   ██╔══╝      ╚════██║██║╚██╔╝██║   ██║   ██╔═══╝ 
##    ██║   ███████╗███████║   ██║   ███████╗    ███████║██║ ╚═╝ ██║   ██║   ██║     
##    ╚═╝   ╚══════╝╚══════╝   ╚═╝   ╚══════╝    ╚══════╝╚═╝     ╚═╝   ╚═╝   ╚═╝     
                                                                                  
ferramenta_testeemail() {
clear
dados
nome_testeemail
preencha_as_info

while true; do

echo -e "\e[97mPasso$amarelo 1/5\e[0m"
echo -en "\e[33mDigite o endereço de Email (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_teste
echo ""

echo -e "\e[97mPasso$amarelo 2/5\e[0m"
echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
echo -en "\e[33mDigite o usuário de Email (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r user_teste
echo ""

echo -e "\e[97mPasso$amarelo 3/5\e[0m"
echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
echo -en "\e[33mDigite a Senha do email (ex: @Senha123_): \e[0m" && read -r senha_teste
echo ""

echo -e "\e[97mPasso$amarelo 4/5\e[0m"
echo -en "\e[33mDigite o Host Smtp (ex: smtp.hostinger.com): \e[0m" && read -r host_teste
echo ""

echo -e "\e[97mPasso$amarelo 5/5\e[0m"
echo -en "\e[33mDigite a Porta Smtp (ex: 465): \e[0m" && read -r porta_teste
echo ""

clear
nome_testeemail
conferindo_as_info

echo -e "\e[33mEmail:\e[97m $email_teste\e[0m"
echo ""

echo -e "\e[33mUsuário:\e[97m $user_teste\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m $senha_teste\e[0m"
echo ""

echo -e "\e[33mHost:\e[97m $host_teste\e[0m"
echo ""

echo -e "\e[33mPorta:\e[97m $porta_teste\e[0m"
echo ""

read -p "As respostas estão corretas? (Y/N): " confirmacao
if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then
    clear
    nome_testando
    break
else
    clear
    nome_testeemail
    preencha_as_info
fi
done

#MENSAGEM DE INICIANDO (PASSOS)
echo -e "\e[97m• INICIANDO VERIFICAÇÃO \e[33m[1/3]\e[0m"
echo ""

sudo apt-get update > /dev/null 2>&1
sudo apt-get install swaks -y > /dev/null 2>&1

msg="Se você está lendo isso, o seu SMTP está funcionando =D.
By: OrionDesign"

if swaks --to "$email_teste" --from "$email_teste" --server "$host_teste" --port "$porta_teste" --auth LOGIN --auth-user "$user_teste" --auth-password "$senha_teste" --tls --body "$msg"; then
    sleep 2
    clear
    nome_testeemail
    echo -e "\e[32m[Resultado do Teste SMTP]\e[0m"
    echo ""
    echo -e "\e[33mOs dados informados\e[92m estão funcionando corretamente\e[33m.\e[0m"
else
    sleep 2
    clear
    nome_testeemail
    echo -e "\e[32m[Resultado do Teste SMTP]\e[0m"
    echo ""
    echo -e "\e[33mOs dados informados\e[91m NÃO estão funcionando corretamente.\e[33m Por favor, verifique os dados e tente novamente.\e[0m"
fi

creditos_msg

read -p "Deseja instalar outra aplicação? (Y/N): " choice
    if [ "$choice" = "Y" ] || [ "$choice" = "y" ]; then
        return
    else
        cd
        cd
        clear
        exit 1
    fi   
}

##   ████████╗██████╗  █████╗ ███████╗███████╗██╗██╗  ██╗    ███████╗     
##   ╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██╔════╝██║██║ ██╔╝    ██╔════╝     
##      ██║   ██████╔╝███████║█████╗  █████╗  ██║█████╔╝     █████╗       
##      ██║   ██╔══██╗██╔══██║██╔══╝  ██╔══╝  ██║██╔═██╗     ██╔══╝       
##      ██║   ██║  ██║██║  ██║███████╗██║     ██║██║  ██╗    ███████╗     
##      ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝    ╚══════╝     
##                                                                        
## ██████╗  ██████╗ ██████╗ ████████╗ █████╗ ██╗███╗   ██╗███████╗██████╗ 
## ██╔══██╗██╔═══██╗██╔══██╗╚══██╔══╝██╔══██╗██║████╗  ██║██╔════╝██╔══██╗
## ██████╔╝██║   ██║██████╔╝   ██║   ███████║██║██╔██╗ ██║█████╗  ██████╔╝
## ██╔═══╝ ██║   ██║██╔══██╗   ██║   ██╔══██║██║██║╚██╗██║██╔══╝  ██╔══██╗
## ██║     ╚██████╔╝██║  ██║   ██║   ██║  ██║██║██║ ╚████║███████╗██║  ██║
## ╚═╝      ╚═════╝ ╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝

ferramenta_traefik_e_portainer() {

## Limpa o terminal
clear

## Mostra o nome da aplicação
nome_traefik_e_portainer

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/4\e[0m"
    echo -en "\e[33mDigite o Dominio para o Portainer (ex: sinergialucrativa.com): \e[0m" && read -r url_portainer
    echo ""

    ## Pergunta o Nome do Servidor
    echo -e "\e[97mPasso$amarelo 2/4\e[0m"
    echo -e "$amarelo--> Não pode conter Espaços e/ou cartacteres especiais"
    echo -en "\e[33mEscolha um nome para o seu servidor (ex: andromeda): \e[0m" && read -r nome_servidor
    echo ""
    
    ## Pergunta o nome da Rede Interna
    echo -e "\e[97mPasso$amarelo 3/4\e[0m"
    echo -e "$amarelo--> Não pode conter Espaços e/ou cartacteres especiais."
    echo -en "\e[33mDigite um nome para sua rede interna (ex: AndromedaNet): \e[0m" && read -r nome_rede_interna
    echo ""
    
    ## Pergunta o Email para informações sobre o certificado
    echo -e "\e[97mPasso$amarelo 4/4\e[0m"
    echo -en "\e[33mDigite um endereço de Email válido (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_ssl
    echo ""

    ## Limpa o termianl
    clear

    ## Mostra o nome da aplicação
    nome_traefik_e_portainer

    ## Mostra mensagem para verificar as informações
    conferindo_as_info

    ## Informação sobre URL
    echo -e "\e[33mLink do Portainer:\e[97m $url_portainer\e[0m"
    echo ""

    ## Informação sobre Nome do Servidor
    echo -e "\e[33mNome do Servidor:\e[97m $nome_servidor\e[0m"
    echo ""

    ## Informação sobre Nome da Rede interna
    echo -e "\e[33mRede interna:\e[97m $nome_rede_interna\e[0m"
    echo ""

    ## Informação sobre Email
    echo -e "\e[33mEmail:\e[97m $email_ssl\e[0m"
    echo ""
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_traefik_e_portainer

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO TRAEFIK \e[33m[1/8]\e[0m"
echo ""
sleep 1

## Neste passo vamos estar salvando os dados preenchidos anteriormente para que o instalador possa usar posteriormente na instalação de qualquer ferramenta.

## Garante que o usuario esteja no /root/
cd
cd

## Verifica se já não existe uma pasta chamada "dados_vps", se existir ele ignora e se não existir ele cria uma
## Esta foi uma PR que veio do usuario Fabio => https://github.com/hipnologo

if [ ! -d "dados_vps" ]; then
    mkdir dados_vps
fi

## Fim da PR

## Abre a pasta dados_vps
cd dados_vps

## Cria um arquivo chamado "dados_vps" com: "nome do servidor", "nome da rede interna", "email", "link do portainer"
cat > dados_vps << EOL
[DADOS DA VPS]

Estes dados foram preenchidos na hora que você foi instalar o Traefik e Portainer e
serão utilizados para realizar as instalações no do SetupOrion v.2

Nome do Servidor: $nome_servidor

Rede interna: $nome_rede_interna

Email para SSL: $email_ssl

Link do Portainer: $url_portainer

Obrigado por utilizar nosso AutoInstalador.
Caso esse conteudo foi util, não deixe de apoiar nosso projeto.

pix@oriondesign.art.br

Bebam água!
EOL

## Volta para /root/
cd
cd

## Ativa a função dados para pegar os dados da vps
dados

## Mensagem de Passo
echo -e "\e[97m• ATUALIZANDO E CONFIGURANDO A VPS \e[33m[2/8]\e[0m"
echo ""
sleep 1

## Neste passo vamos estar Atualizando e configurando a vps para conseguir rodar nosso setup

## Todos os passo que estão com "> /dev/null 2>&1" São para não mostrar os logs.

## Fiz isso com o intuito de melhorar a visualização deixando o terminal apenas com os passos pré descritos

## Vou adicionar uma verificação com echo e o passo caso der algum problema para verificar.

sudo apt-get update > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "1/9 - [ OK ] - Update"
else
    echo "1/9 - [ OFF ] - Update"
fi
sudo apt upgrade -y > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "2/9 - [ OK ] - Upgrade"
else
    echo "2/9 - [ OFF ] - Upgrade"
fi
sudo timedatectl set-timezone America/Sao_Paulo > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "3/9 - [ OK ] - Timezone"
else
    echo "3/9 - [ OFF ] - Timezone"
fi
sudo apt-get install -y apt-utils > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "4/9 - [ OK ] - Apt-Utils"
else
    echo "4/9 - [ OFF ] - Apt-Utils"
fi
sudo apt-get update > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "5/9 - [ OK ] - Update"
else
    echo "5/9 - [ OFF ] - Update"
fi
hostnamectl set-hostname $nome_servidor > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "6/9 - [ OK ] - Set Hostname"
else
    echo "6/9 - [ OFF ] - Set Hostname"
fi
sudo sed -i "s/127.0.0.1[[:space:]]localhost/127.0.0.1 $nome_servidor/g" /etc/hosts > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "7/9 - [ OK ] - Adicionando nome do servidor em etc/hosts"
else
    echo "7/9 - [ OFF ] - Adicionando nome do servidor em etc/hosts"
fi
sudo apt-get update > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "8/9 - [ OK ] - Update"
else
    echo "8/9 - [ OFF ] - Update"
fi
sudo apt-get install -y apparmor-utils > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "9/9 - [ OK ] - Apparmor-Utils"
else
    echo "9/9 - [ OFF ] - Apparmor-Utils"
fi
echo ""

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO DOCKER SWARM \e[33m[3/8]\e[0m"
echo ""
sleep 1

## Nesse passo vamos estar instalando docker no modo swarm


#ip=$(curl -s ifconfig.me)
read -r ip _ <<<$(hostname -I)
if [ $? -eq 0 ]; then
    echo "1/3 - [ OK ] - Pegando IP $ip"
else
    echo "1/3 - [ OFF ] - Pegando IP $ip"
fi
curl -fsSL https://get.docker.com | bash > /dev/null 2>&1
systemctl enable docker > /dev/null 2>&1
systemctl start docker > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "2/3 - [ OK ] - Baixando e Instalando Docker"
else
    echo "2/3 - [ OFF ] - Baixando e Instalando Docker"
fi
sleep 5

max_attempts=3
attempt=0

while [ $attempt -le $max_attempts ]; do
    docker swarm init --advertise-addr $ip > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "3/3 - [ OK ] - Iniciando Swarm"
        break
    else
        echo "3/3 - [ OFF ] - Iniciando Swarm"
        echo "Ops não foi possivel iniciar o swarm, tentativa $attempt de $max_attempts"
        attempt=$((attempt + 1))
        sleep 5
    fi
done

if [ $attempt -gt $max_attempts ]; then
    echo "Não foi possível iniciar o Swarm após $max_attempts tentativas..."
    echo "Recomendo formatar a VPS e tentar novamente"
    echo "Lembre-se que o primeiro requisito é estar usando uma VPS Vazia."
    sleep 10
    exit 1
fi
echo ""

## Mensagem de Passo
echo -e "\e[97m• CRIANDO REDE INTERNA \e[33m[4/8]\e[0m"
echo ""
sleep 1

## Neste passo vamos criar a rede interna para utilizar nas demais aplicações

docker network create --driver=overlay $nome_rede_interna > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Rede Interna"
else
    echo "1/1 - [ OFF ] - Rede Interna"
fi
echo ""

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO TRAEFIK \e[33m[5/8]\e[0m"
echo ""
sleep 1

## Neste passo vamos estar criando a Stack yaml do traefik na pasta /root/
## Isso possibilitará que o usuario consiga edita-lo posteriormente

## Depois vamos instalar o traefik e verificar se esta tudo certo.

## Criando a stack
cat > traefik.yaml << EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  traefik:
    image: traefik:v2.11.2
    command:
      - "--api.dashboard=true"
      - "--providers.docker.swarmMode=true"
      - "--providers.docker.endpoint=unix:///var/run/docker.sock"
      - "--providers.docker.exposedbydefault=false"
      - "--providers.docker.network=$nome_rede_interna" ## Nome da rede interna
      - "--entrypoints.web.address=:80"
      - "--entrypoints.web.http.redirections.entryPoint.to=websecure"
      - "--entrypoints.web.http.redirections.entryPoint.scheme=https"
      - "--entrypoints.web.http.redirections.entrypoint.permanent=true"
      - "--entrypoints.websecure.address=:443"
      - "--entrypoints.web.transport.respondingTimeouts.idleTimeout=3600"
      - "--certificatesresolvers.letsencryptresolver.acme.httpchallenge=true"
      - "--certificatesresolvers.letsencryptresolver.acme.httpchallenge.entrypoint=web"
      - "--certificatesresolvers.letsencryptresolver.acme.storage=/etc/traefik/letsencrypt/acme.json"
      - "--certificatesresolvers.letsencryptresolver.acme.email=$email_ssl" ## Email para receber as notificações
      - "--log.level=DEBUG"
      - "--log.format=common"
      - "--log.filePath=/var/log/traefik/traefik.log"
      - "--accesslog=true"
      - "--accesslog.filepath=/var/log/traefik/access-log"
    deploy:
      placement:
        constraints:
          - node.role == manager
      labels:
        - "traefik.enable=true"
        - "traefik.http.middlewares.redirect-https.redirectscheme.scheme=https"
        - "traefik.http.middlewares.redirect-https.redirectscheme.permanent=true"
        - "traefik.http.routers.http-catchall.rule=Host(\`{host:.+}\`)"
        - "traefik.http.routers.http-catchall.entrypoints=web"
        - "traefik.http.routers.http-catchall.middlewares=redirect-https@docker"
        - "traefik.http.routers.http-catchall.priority=1"
    volumes:
      - "vol_certificates:/etc/traefik/letsencrypt"
      - "/var/run/docker.sock:/var/run/docker.sock:ro"
    ports:
      - target: 80
        published: 80
        mode: host
      - target: 443
        published: 443
        mode: host
    networks:
      - $nome_rede_interna ## Nome da rede interna

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  vol_shared:
    external: true
    name: volume_swarm_shared
  vol_certificates:
    external: true
    name: volume_swarm_certificates

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    attachable: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Criando Stack"
else
    echo "1/2 - [ OFF ] - Criando Stack"
    echo "Ops, não foi possivel criar a stack do Traefik"
fi

docker stack deploy --prune --resolve-image always -c traefik.yaml traefik > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "2/2 - [ OK ] - Deploy Stack"
else
    echo "2/2 - [ OFF ] - Deploy Stack"
    echo "Ops, não foi possivel subir o Traefik."
fi

echo ""
## Mensagem de Passo
echo -e "\e[97m• ESPERANDO O TRAEFIK ESTAR ONLINE \e[33m[6/8]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "traefik" para verificar se o serviço esta online
wait_stack "traefik"

## Espera 30 segundos
wait_30_sec

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO PORTAINER \e[33m[7/8]\e[0m"
echo ""
sleep 1

## Neste passo vamos estar criando a Stack yaml do Portainer na pasta /root/
## Isso possibilitará que o usuario consiga edita-lo posteriormente

## Depois vamos instalar o Portainer e verificar se esta tudo certo.

## Criando a stack
cat > portainer.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  agent:
    image: portainer/agent:latest ## Versão do portainer

    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - /var/lib/docker/volumes:/var/lib/docker/volumes

    networks:
      - $nome_rede_interna ## Nome da rede interna

    deploy:
      mode: global
      placement:
        constraints: [node.platform.os == linux]

## --------------------------- ANDROMEDA --------------------------- ##

  portainer:
    image: portainer/portainer-ce:latest
    command: -H tcp://tasks.agent:9001 --tlsskipverify

    volumes:
      - /var/run/docker.sock:/var/run/docker.sock
      - portainer_data:/data

    networks:
      - $nome_rede_interna ## Nome da rede interna

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints: [node.role == manager]
      labels:
        - "traefik.enable=true"
        - "traefik.http.routers.portainer.rule=Host(\`$url_portainer\`)" ## Dominio da aplicação
        - "traefik.http.services.portainer.loadbalancer.server.port=9000"
        - "traefik.http.routers.portainer.tls.certresolver=letsencryptresolver"
        - "traefik.http.routers.portainer.service=portainer"
        - "traefik.docker.network=$nome_rede_interna" ## Nome da rede interna
        - "traefik.http.routers.portainer.entrypoints=websecure"
        - "traefik.http.routers.portainer.priority=1"

## --------------------------- ANDROMEDA --------------------------- ##

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    attachable: true
    name: $nome_rede_interna ## Nome da rede interna

volumes:
  portainer_data:
    external: true
    name: portainer_data
EOL
if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Criando Stack"
else
    echo "1/2 - [ OFF ] - Criando Stack"
    echo "Ops, não foi possivel criar a stack do Portainer"
fi

docker stack deploy --prune --resolve-image always -c portainer.yaml portainer > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Deploy Stack"
else
    echo "1/2 - [ OFF ] - Deploy Stack"
    echo "Ops, não foi possivel Subir a stack do Portainer"
fi

echo ""
## Mensagem de Passo
echo -e "\e[97m• ESPERANDO O PORTAINER ESTAR ONLINE \e[33m[8/8]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_portainer para verificar se o serviço esta online
wait_stack "portainer"

## Salvando informações da instalação dentro de /dados_vps/
cd dados_vps

cat > dados_portainer <<EOL
[ PORTAINER ]

Dominio do portainer: https://$url_portainer

Usuario: Precisa criar dentro do portainer

Senha: Precisa criar dentro do portainer
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ PORTAINER ]\e[0m"
echo ""

echo -e "\e[97mDominio do portainer:\e[33m https://$url_portainer\e[0m"
echo ""

echo -e "\e[97mUsuario:\e[33m Precisa criar dentro do portainer\e[0m"
echo ""

echo -e "\e[97mSenha:\e[33m Precisa criar dentro do portainer\e[0m"
echo ""

echo -e "\e[97mObservação:\e[33m Você tem menos de 5 minutos para criar uma conta no Portainer, caso\e[0m"
echo -e "\e[33mcaso exceda esse tempo, você precisara de voltar no menu anterior (digitando: Y)\e[0m"
echo -e "\e[33me no menu de ferramentas digitar: \e[97mportainer.restart\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██████╗  ██████╗ ███████╗████████╗ ██████╗ ██████╗ ███████╗███████╗
## ██╔══██╗██╔═══██╗██╔════╝╚══██╔══╝██╔════╝ ██╔══██╗██╔════╝██╔════╝
## ██████╔╝██║   ██║███████╗   ██║   ██║  ███╗██████╔╝█████╗  ███████╗
## ██╔═══╝ ██║   ██║╚════██║   ██║   ██║   ██║██╔══██╗██╔══╝  ╚════██║
## ██║     ╚██████╔╝███████║   ██║   ╚██████╔╝██║  ██║███████╗███████║
## ╚═╝      ╚═════╝ ╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝

ferramenta_postgres() {

## Ativa a função dados para pegar os dados da vps
dados

## Gerando uma senha aleatória para o Postgres
senha_postgres=$(openssl rand -hex 16)

## Criando a stack
cat > postgres.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  postgres:
    image: postgres:14 ## Versão do postgres

    volumes:
      - postgres_data:/var/lib/postgresql/data

    networks:
      - $nome_rede_interna ## Nome da rede interna

    ## Descomente as linhas abaixo para uso externo
    #ports:
    #  - 5432:5432

    environment:
    ## Senha do postgres 
      - POSTGRES_PASSWORD=$senha_postgres
      #- PG_MAX_CONNECTIONS=500

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  postgres_data:
    external: true
    name: postgres_data

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Postgres"
fi
STACK_NAME="postgres"
stack_editavel #> /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c postgres.yaml postgres > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Ops, não foi possivel subir a stack do Postgres."
#fi

## Salvando informações da instalação dentro de /dados_vps/
cd dados_vps

cat > dados_postgres <<EOL
[ POSTGRES ]

Dominio do postgres: postgres://postgres:5432

Usuario: postgres

Senha: $senha_postgres
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

}

## ██████╗  ██████╗     ██╗   ██╗███████╗ ██████╗████████╗ ██████╗ ██████╗ 
## ██╔══██╗██╔════╝     ██║   ██║██╔════╝██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗
## ██████╔╝██║  ███╗    ██║   ██║█████╗  ██║        ██║   ██║   ██║██████╔╝
## ██╔═══╝ ██║   ██║    ╚██╗ ██╔╝██╔══╝  ██║        ██║   ██║   ██║██╔══██╗
## ██║     ╚██████╔╝     ╚████╔╝ ███████╗╚██████╗   ██║   ╚██████╔╝██║  ██║
## ╚═╝      ╚═════╝       ╚═══╝  ╚══════╝ ╚═════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝
                                                                        

ferramenta_pgvector() {

## Ativa a função dados para pegar os dados da vps
dados

## Gerando uma senha aleatória para o Postgres
senha_pgvector=$(openssl rand -hex 16)

## Criando a stack
cat > pgvector.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  pgvector:
    image: pgvector/pgvector:pg16

    ports:
      - 5433:5432

    volumes:
      - pgvector:/var/lib/postgresql/data

    networks:
      - $nome_rede_interna

    environment:
      - POSTGRES_PASSWORD=$senha_pgvector

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  pgvector:
    external: true
    name: pgvector

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do PgVector"
fi
STACK_NAME="pgvector"
stack_editavel #> /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Ops, não foi possivel subir a stack do PgVector."
#fi
#docker stack deploy --prune --resolve-image always -c pgvector.yaml pgvector > /dev/null 2>&1

## Salvando informações da instalação dentro de /dados_vps/
cd dados_vps

cat > dados_pgvector <<EOL
[ PGVECTOR ]

Dominio do pgvector: postgres://pgvector:5432

Usuario: postgres

Senha: $senha_pgvector
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

}

## ██████╗  ██████╗     ██╗   ██╗███████╗ ██████╗████████╗ ██████╗ ██████╗ 
## ██╔══██╗██╔════╝     ██║   ██║██╔════╝██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗
## ██████╔╝██║  ███╗    ██║   ██║█████╗  ██║        ██║   ██║   ██║██████╔╝
## ██╔═══╝ ██║   ██║    ╚██╗ ██╔╝██╔══╝  ██║        ██║   ██║   ██║██╔══██╗
## ██║     ╚██████╔╝     ╚████╔╝ ███████╗╚██████╗   ██║   ╚██████╔╝██║  ██║
## ╚═╝      ╚═════╝       ╚═══╝  ╚══════╝ ╚═════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝
                                                                        

ferramenta_pgvector_setup() {

## Ativa a função dados para pegar os dados da vps
dados

## Gerando uma senha aleatória para o Postgres
senha_pgvector=$(openssl rand -hex 16)

## Criando a stack
cat > pgvector.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  pgvector:
    image: pgvector/pgvector:pg16

    ports:
      - 5433:5432

    volumes:
      - pgvector:/var/lib/postgresql/data

    networks:
      - $nome_rede_interna

    environment:
      - POSTGRES_PASSWORD=$senha_pgvector

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  pgvector:
    external: true
    name: pgvector

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do PgVector"
fi
STACK_NAME="pgvector"
stack_editavel #> /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Ops, não foi possivel subir a stack do PgVector."
#fi
#docker stack deploy --prune --resolve-image always -c pgvector.yaml pgvector > /dev/null 2>&1

## Salvando informações da instalação dentro de /dados_vps/
cd dados_vps

cat > dados_pgvector <<EOL
[ PGVECTOR ]

Dominio do pgvector: postgres://pgvector:5432

Usuario: postgres

Senha: $senha_pgvector
EOL

cd
cd

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ PGVECTOR ]\e[0m"
echo ""


echo -e "\e[97mDominio do PgVector:\e[33m postgres://pgvector:5432\e[0m"
echo ""

echo -e "\e[97mUsuario:\e[33m postgres\e[0m"
echo ""

echo -e "\e[97mSenha:\e[33m $senha_pgvector\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao

cd
cd

## Espera 30 segundos
wait_30_sec

}

## ██████╗ ███████╗██████╗ ██╗███████╗
## ██╔══██╗██╔════╝██╔══██╗██║██╔════╝
## ██████╔╝█████╗  ██║  ██║██║███████╗
## ██╔══██╗██╔══╝  ██║  ██║██║╚════██║
## ██║  ██║███████╗██████╔╝██║███████║
## ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝╚══════╝

ferramenta_redis() {

## Ativa a função dados para pegar os dados da vps
dados

## Criando a stack
cat > redis.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  redis:
    image: redis:latest  ## Versão do Redis
    command: [
        "redis-server",
        "--appendonly",
        "yes",
        "--port",
        "6379"
      ]

    volumes:
      - redis_data:/data

    networks:
      - $nome_rede_interna ## Nome da rede interna
    #ports:
    #  - 6379:6379

    deploy:
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 2048M

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  redis_data:
    external: true
    name: redis_data

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Redis"
fi
STACK_NAME="redis"
stack_editavel #> /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c redis.yaml redis
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Ops, não foi possivel subir a stack do Redis."
#fi

## Salvando informações da instalação dentro de /dados_vps/
cd dados_vps

cat > dados_redis <<EOL
[ REDIS ]

Dominio do Redis: redis://redis:6379

Usuario: redis

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

}

## ██████╗ ███████╗██████╗ ██╗███████╗
## ██╔══██╗██╔════╝██╔══██╗██║██╔════╝
## ██████╔╝█████╗  ██║  ██║██║███████╗
## ██╔══██╗██╔══╝  ██║  ██║██║╚════██║
## ██║  ██║███████╗██████╔╝██║███████║
## ╚═╝  ╚═╝╚══════╝╚═════╝ ╚═╝╚══════╝

ferramenta_redis_setup() {

## Ativa a função dados para pegar os dados da vps
dados

## Criando a stack
cat > redis.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  redis:
    image: redis:latest  ## Versão do Redis
    command: [
        "redis-server",
        "--appendonly",
        "yes",
        "--port",
        "6379"
      ]

    volumes:
      - redis_data:/data

    networks:
      - $nome_rede_interna ## Nome da rede interna
    #ports:
    #  - 6379:6379

    deploy:
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 2048M

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  redis_data:
    external: true
    name: redis_data

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Ops, não foi criar a stack do Redis."
fi
sleep 1
STACK_NAME="redis"
stack_editavel
#stack_editavel > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c redis.yaml redis
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Ops, não foi possivel subir a stack do Redis."
#fi

## Salvando informações da instalação dentro de /dados_vps/
cd dados_vps

cat > dados_redis <<EOL
[ REDIS ]

Dominio do Redis: redis://redis:6379

Usuario: redis

EOL

cd
cd

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ REDIS ]\e[0m"
echo ""


echo -e "\e[97mHost:\e[33m redis\e[0m"
echo ""

echo -e "\e[97mUsuario:\e[33m redis\e[0m"
echo ""

echo -e "\e[97mPorta:\e[33m 6379\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao

cd
cd

## Espera 30 segundos
wait_30_sec

}

## ███╗   ███╗██╗   ██╗███████╗ ██████╗ ██╗     
## ████╗ ████║╚██╗ ██╔╝██╔════╝██╔═══██╗██║     
## ██╔████╔██║ ╚████╔╝ ███████╗██║   ██║██║     
## ██║╚██╔╝██║  ╚██╔╝  ╚════██║██║▄▄ ██║██║     
## ██║ ╚═╝ ██║   ██║   ███████║╚██████╔╝███████╗
## ╚═╝     ╚═╝   ╚═╝   ╚══════╝ ╚══▀▀═╝ ╚══════╝

ferramenta_mysql() {

## Ativa a função dados para pegar os dados da vps
dados

## Gerando uma senha aleatória para o Mysql
senha_mysql=$(openssl rand -hex 16)

## Criando a stack
cat > mysql.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  mysql:
    image: percona/percona-server:8.0 ## Versão do Mysql

    volumes:
      - mysql_data:/var/lib/mysql
    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
    ## Senha MYSQL
      - MYSQL_ROOT_PASSWORD=$senha_mysql

    ## TimeZone
      - TZ=America/Sao_Paulo

    deploy:
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: '1'
          memory: 1024M
    command:
      [
        "--character-set-server=utf8mb4",
        "--collation-server=utf8mb4_general_ci",
        "--sql-mode=",
        "--default-authentication-plugin=caching_sha2_password",
        "--max-allowed-packet=512MB",
      ]

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  mysql_data:
    external: true
    name: mysql_data

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do MySQL"
fi

STACK_NAME="mysql"
stack_editavel #> /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Ops, não foi possivel subir a stack do Postgres."
#fi

#docker stack deploy --prune --resolve-image always -c mysql.yaml mysql #> /dev/null 2>&1

## Salvando informações da instalação dentro de /dados_vps/
cd dados_vps

cat > dados_mysql <<EOL
[ MYSQL ]

Dominio do mysql: mysql

Usuario: mysql ou root

Senha: $senha_mysql

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

}

## ███╗   ███╗██╗   ██╗███████╗ ██████╗ ██╗     
## ████╗ ████║╚██╗ ██╔╝██╔════╝██╔═══██╗██║     
## ██╔████╔██║ ╚████╔╝ ███████╗██║   ██║██║     
## ██║╚██╔╝██║  ╚██╔╝  ╚════██║██║▄▄ ██║██║     
## ██║ ╚═╝ ██║   ██║   ███████║╚██████╔╝███████╗
## ╚═╝     ╚═╝   ╚═╝   ╚══════╝ ╚══▀▀═╝ ╚══════╝

ferramenta_mysql_setup() {

## Ativa a função dados para pegar os dados da vps
dados

## Gerando uma senha aleatória para o Mysql
senha_mysql=$(openssl rand -hex 16)

## Criando a stack
cat > mysql.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  mysql:
    image: percona/percona-server:8.0 ## Versão do Mysql

    volumes:
      - mysql_data:/var/lib/mysql
    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
    ## Senha MYSQL
      - MYSQL_ROOT_PASSWORD=$senha_mysql

    ## TimeZone
      - TZ=America/Sao_Paulo

    deploy:
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: '1'
          memory: 1024M
    command:
      [
        "--character-set-server=utf8mb4",
        "--collation-server=utf8mb4_general_ci",
        "--sql-mode=",
        "--default-authentication-plugin=caching_sha2_password",
        "--max-allowed-packet=512MB",
      ]

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  mysql_data:
    external: true
    name: mysql_data

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Ops, não foi criar a stack do Mysql."
fi

STACK_NAME="mysql"
stack_editavel
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Ops, não foi possivel subir a stack do Postgres."
#fi

#docker stack deploy --prune --resolve-image always -c mysql.yaml mysql #> /dev/null 2>&1

## Salvando informações da instalação dentro de /dados_vps/
cd dados_vps

cat > dados_mysql <<EOL
[ MYSQL ]

Dominio do mysql: mysql

Usuario: mysql ou root

Senha: $senha_mysql
EOL

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ MYSQL ]\e[0m"
echo ""

echo -e "\e[97mHost:\e[33m mysql\e[0m"
echo ""

echo -e "\e[97mUsuario:\e[33m root\e[0m"
echo ""

echo -e "\e[97mSenha:\e[33m $senha_mysql\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao

cd
cd

## Espera 30 segundos
wait_30_sec

}

##  ██████╗██╗  ██╗ █████╗ ████████╗██╗    ██╗ ██████╗  ██████╗ ████████╗
## ██╔════╝██║  ██║██╔══██╗╚══██╔══╝██║    ██║██╔═══██╗██╔═══██╗╚══██╔══╝
## ██║     ███████║███████║   ██║   ██║ █╗ ██║██║   ██║██║   ██║   ██║   
## ██║     ██╔══██║██╔══██║   ██║   ██║███╗██║██║   ██║██║   ██║   ██║   
## ╚██████╗██║  ██║██║  ██║   ██║   ╚███╔███╔╝╚██████╔╝╚██████╔╝   ██║   
##  ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚══╝╚══╝  ╚═════╝  ╚═════╝    ╚═╝   

ferramenta_chatwoot() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_chatwoot

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/6\e[0m"
    echo -en "\e[33mDigite o Dominio para o Chatwoot (ex: chatwoot.sinergialucrativa.com): \e[0m" && read -r url_chatwoot
    echo ""
    
    ## Pega o nome do dominio para ser o nome da empresa
    nome_empresa_chatwoot="$nome_servidor"
    
    ## Pergunta o email SMTP
    echo -e "\e[97mPasso$amarelo 2/6\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_admin_chatwoot
    echo ""

    ## Define o dominio SMTP com o dominio do email
    dominio_smtp_chatwoot=$(echo "$email_admin_chatwoot" | cut -d "@" -f 2)

    ##Pergunta o usuário do Email SMTP
    echo -e "\e[97mPasso$amarelo 3/6\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuário para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r user_smtp_chatwoot
    echo ""
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 4/6\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_email_chatwoot
    echo ""
    
    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 5/6\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r smtp_email_chatwoot
    echo ""
    
    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 6/6\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_chatwoot
    
    
    ## Verifica se a porta é 465, se sim deixa o ssl true, se não, deixa false 
    if [ "$porta_smtp_chatwoot" -eq 465 ]; then
     sobre_ssl=true
    else
     sobre_ssl=false
    fi
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_chatwoot
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL
    echo -e "\e[33mDominio do Chatwoot:\e[97m $url_chatwoot\e[0m"
    echo ""

    ## Informação sobre Nome da Empresa
    echo -e "\e[33mNome da Empresa:\e[97m $nome_empresa_chatwoot\e[0m"
    echo ""

    ## Informação sobre Email de SMTP
    echo -e "\e[33mEmail do SMTP:\e[97m $email_admin_chatwoot\e[0m"
    echo ""

    ## Informação sobre Usuario do SMTP
    echo -e "\e[33mUser do SMTP:\e[97m $user_smtp_chatwoot\e[0m"
    echo ""

    ## Informação sobre Senha de SMTP
    echo -e "\e[33mSenha do SMTP:\e[97m $senha_email_chatwoot\e[0m"
    echo ""

    ## Informação sobre Host SMTP
    echo -e "\e[33mHost SMTP:\e[97m $smtp_email_chatwoot\e[0m"
    echo ""

    ## Informação sobre Porta SMTP
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_chatwoot\e[0m"
    echo ""
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_chatwoot

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done


## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO CHATWOOT \e[33m[1/6]\e[0m"
echo ""
sleep 1

## Ativa a função dados para pegar os dados da vps
dados

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES E REDIS \e[33m[2/6]\e[0m"
echo ""
sleep 1

## Aqui vamos fazer uma verificação se já existe Postgres e redis instalado
## Se tiver ele vai criar um banco de dados no postgres ou perguntar se deseja apagar o que já existe e criar outro

## Verifica container postgres e cria banco no postgres
verificar_container_postgres
if [ $? -eq 0 ]; then
    pegar_senha_postgres > /dev/null 2>&1
    criar_banco_postgres_da_stack "chatwoot"
else
    ferramenta_postgres #> /dev/null 2>&1
    pegar_senha_postgres > /dev/null 2>&1
    criar_banco_postgres_da_stack "chatwoot"
fi
if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Verificando/Instalando Postgres"
else
    echo "1/2 - [ OFF ] - Verificando/Instalando Postgres"
fi

## Verifica container redis
verificar_container_redis
if [ $? -eq 0 ]; then
    echo ""
else
    ferramenta_redis > /dev/null 2>&1
fi
if [ $? -eq 0 ]; then
    echo "2/2 - [ OK ] - Verificando/Instalando Redis"
else
    echo "2/2 - [ OFF ] - Verificando/Instalando Redis"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO CHATWOOT \e[33m[3/6]\e[0m"
echo ""
sleep 1

## Neste passo vamos estar criando a Stack yaml do Chatwoot na pasta /root/
## Isso possibilitará que o usuario consiga edita-lo posteriormente

## Depois vamos instalar o Chatwoot e verificar se esta tudo certo.

## Criando key aleatória
encryption_key=$(openssl rand -hex 16)

## Criando a stack
cat > chatwoot.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  chatwoot_app:
    image: chatwoot/chatwoot:latest ## Versão do Chatwoot
    command: bundle exec rails s -p 3000 -b 0.0.0.0
    entrypoint: docker/entrypoints/rails.sh

    volumes:
      - chatwoot_storage:/app/storage ## Arquivos de conversa
      - chatwoot_public:/app/public ## Arquivos de logos
      - chatwoot_mailer:/app/app/views/devise/mailer ## Arquivos de email
      - chatwoot_mailers:/app/app/views/mailers ## Arquivos de emails

    networks:
      - $nome_rede_interna ## Nome da rede interna
    
    environment:
      ## Qualquer Url com # no final
      - CHATWOOT_HUB_URL=https://oriondesign.art.br/setup#

      ## Nome da Empresa
      - INSTALLATION_NAME=$nome_empresa_chatwoot

      ## Secret key
      - SECRET_KEY_BASE=$encryption_key

      ## Url Chatwoot
      - FRONTEND_URL=https://$url_chatwoot
      - FORCE_SSL=true

      ## Idioma/Localização padrão
      - DEFAULT_LOCALE=pt_BR
      - TZ=America/Brasil

      ## Google Cloud - Modifique de acordo com os seus dados (lembre-se de mudar no chatwoot_sidekiq)
      #- GOOGLE_OAUTH_CLIENT_ID=369777777777-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com
      #- GOOGLE_OAUTH_CLIENT_SECRET=ABCDEF-GHijklmnoPqrstuvwX-yz1234567
      #- GOOGLE_OAUTH_CALLBACK_URL=https://<your-server-domain>/omniauth/google_oauth2/callback

      ## Dados do Redis
      - REDIS_URL=redis://redis:6379

      ## Dados do Postgres
      - POSTGRES_HOST=postgres
      - POSTGRES_USERNAME=postgres
      - POSTGRES_PASSWORD=$senha_postgres ## Senha do postgres
      - POSTGRES_DATABASE=chatwoot

      ## Armazenamento
      - ACTIVE_STORAGE_SERVICE=local ## use s3_compatible para MinIO
      #- STORAGE_BUCKET_NAME=chatwoot
      #- STORAGE_ACCESS_KEY_ID=ACCESS_KEY_MINIO
      #- STORAGE_SECRET_ACCESS_KEY=SECRET_KEY_MINIO
      #- STORAGE_REGION=eu-south
      #- STORAGE_ENDPOINT=https://s3.DOMINIO.COM
      #- STORAGE_FORCE_PATH_STYLE=true

      ## Dados do SMTP
      - MAILER_SENDER_EMAIL=$email_admin_chatwoot <$email_admin_chatwoot> ## Email SMTP
      - SMTP_DOMAIN=$dominio_smtp_chatwoot ## Dominio do email
      - SMTP_ADDRESS=$smtp_email_chatwoot ## Host SMTP
      - SMTP_PORT=$porta_smtp_chatwoot ## Porta SMTP
      - SMTP_SSL=$sobre_ssl ## Se a porta for 465 = true | Se a porta for 587 = false
      - SMTP_USERNAME=$user_smtp_chatwoot ## Usuario SMTP
      - SMTP_PASSWORD=$senha_email_chatwoot ## Senha do SMTP
      - SMTP_AUTHENTICATION=login
      - SMTP_ENABLE_STARTTLS_AUTO=true
      - SMTP_OPENSSL_VERIFY_MODE=peer
      - MAILER_INBOUND_EMAIL_DOMAIN=$email_admin_chatwoot ## Email SMTP

      ## Outras configurações
      - NODE_ENV=production
      - RAILS_ENV=production
      - INSTALLATION_ENV=docker
      - RAILS_LOG_TO_STDOUT=true
      - USE_INBOX_AVATAR_FOR_BOT=true
      - ENABLE_ACCOUNT_SIGNUP=false

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.chatwoot_app.rule=Host(\`$url_chatwoot\`)
        - traefik.http.routers.chatwoot_app.entrypoints=websecure
        - traefik.http.routers.chatwoot_app.tls.certresolver=letsencryptresolver
        - traefik.http.routers.chatwoot_app.priority=1
        - traefik.http.routers.chatwoot_app.service=chatwoot_app
        - traefik.http.services.chatwoot_app.loadbalancer.server.port=3000 
        - traefik.http.services.chatwoot_app.loadbalancer.passhostheader=true 
        - traefik.http.middlewares.sslheader.headers.customrequestheaders.X-Forwarded-Proto=https
        - traefik.http.routers.chatwoot_app.middlewares=sslheader@docker

## --------------------------- ANDROMEDA --------------------------- ##

  chatwoot_sidekiq:
    image: chatwoot/chatwoot:latest ## Versão do Chatwoot
    command: bundle exec sidekiq -C config/sidekiq.yml

    volumes:
      - chatwoot_storage:/app/storage ## Arquivos de conversa
      - chatwoot_public:/app/public ## Arquivos de logos
      - chatwoot_mailer:/app/app/views/devise/mailer ## Arquivos de email
      - chatwoot_mailers:/app/app/views/mailers ## Arquivos de emails

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Qualquer Url com # no final
      - CHATWOOT_HUB_URL=https://oriondesign.art.br/setup#

      ## Nome da Empresa
      - INSTALLATION_NAME=$nome_empresa_chatwoot

      ## Secret key
      - SECRET_KEY_BASE=$encryption_key

      ## Url Chatwoot
      - FRONTEND_URL=https://$url_chatwoot
      - FORCE_SSL=true

      ## Idioma/Localização padrão
      - DEFAULT_LOCALE=pt_BR
      - TZ=America/Brasil

      ## Google Cloud - Modifique de acordo com os seus dados (lembre-se de mudar no chatwoot_sidekiq)
      #- GOOGLE_OAUTH_CLIENT_ID=369777777777-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com
      #- GOOGLE_OAUTH_CLIENT_SECRET=ABCDEF-GHijklmnoPqrstuvwX-yz1234567
      #- GOOGLE_OAUTH_CALLBACK_URL=https://<your-server-domain>/omniauth/google_oauth2/callback

      ## Dados do Redis
      - REDIS_URL=redis://redis:6379

      ## Dados do Postgres
      - POSTGRES_HOST=postgres
      - POSTGRES_USERNAME=postgres
      - POSTGRES_PASSWORD=$senha_postgres ## Senha do postgres
      - POSTGRES_DATABASE=chatwoot

      ## Armazenamento
      - ACTIVE_STORAGE_SERVICE=local ## use s3_compatible para MinIO
      #- STORAGE_BUCKET_NAME=chatwoot
      #- STORAGE_ACCESS_KEY_ID=ACCESS_KEY_MINIO
      #- STORAGE_SECRET_ACCESS_KEY=SECRET_KEY_MINIO
      #- STORAGE_REGION=eu-south
      #- STORAGE_ENDPOINT=https://s3.DOMINIO.COM
      #- STORAGE_FORCE_PATH_STYLE=true

      ## Dados do SMTP
      - MAILER_SENDER_EMAIL=$email_admin_chatwoot <$email_admin_chatwoot> ## Email SMTP
      - SMTP_DOMAIN=$dominio_smtp_chatwoot ## Dominio do email
      - SMTP_ADDRESS=$smtp_email_chatwoot ## Host SMTP
      - SMTP_PORT=$porta_smtp_chatwoot ## Porta SMTP
      - SMTP_SSL=$sobre_ssl ## Se a porta for 465 = true | Se a porta for 587 = false
      - SMTP_USERNAME=$user_smtp_chatwoot ## Usuario SMTP
      - SMTP_PASSWORD=$senha_email_chatwoot ## Senha do SMTP
      - SMTP_AUTHENTICATION=login
      - SMTP_ENABLE_STARTTLS_AUTO=true
      - SMTP_OPENSSL_VERIFY_MODE=peer
      - MAILER_INBOUND_EMAIL_DOMAIN=$email_admin_chatwoot ## Email SMTP

      ## Outras configurações
      - NODE_ENV=production
      - RAILS_ENV=production
      - INSTALLATION_ENV=docker
      - RAILS_LOG_TO_STDOUT=true
      - USE_INBOX_AVATAR_FOR_BOT=true
      - ENABLE_ACCOUNT_SIGNUP=false

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  chatwoot_storage:
    external: true
    name: chatwoot_storage
  chatwoot_public:
    external: true
    name: chatwoot_public
  chatwoot_mailer:
    external: true
    name: chatwoot_mailer
  chatwoot_mailers:
    external: true
    name: chatwoot_mailers

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Chatwoot"
fi
STACK_NAME="chatwoot"
stack_editavel #> /dev/null 2>&1

#docker stack deploy --prune --resolve-image always -c chatwoot.yaml chatwoot > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do Chatwoot"
#fi

## Mensagem de Passo
echo -e "\e[97m• ESPERANDO SERVIÇO DO CHATWOOT ESTAR PRONTO \e[33m[4/6]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_chatwoot para verificar se o serviço esta online
wait_stack "chatwoot"

## Mensagem de Passo
echo -e "\e[97m• MIGRANDO BANCO DE DADOS \e[33m[5/6]\e[0m"
echo ""
sleep 1

## Aqui vamos estar migrando o banco de dados usando o comando "bundle exec rails db:chatwoot_prepare"

## Basicamente voce poderia entrar no banco de dados do chatwoot e executar o comando por lá tambem

container_name="chatwoot_chatwoot_app"

max_wait_time=1200

wait_interval=60

elapsed_time=0

while [ $elapsed_time -lt $max_wait_time ]; do
  CONTAINER_ID=$(docker ps -q --filter "name=$container_name")
  if [ -n "$CONTAINER_ID" ]; then
    break
  fi
  sleep $wait_interval
  elapsed_time=$((elapsed_time + wait_interval))
done

if [ -z "$CONTAINER_ID" ]; then
  echo "O contêiner não foi encontrado após $max_wait_time segundos."
  exit 1
fi

docker exec -it "$CONTAINER_ID" bundle exec rails db:chatwoot_prepare
if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Executando no container: bundle exec rails db:chatwoot_prepare"
else
    echo "1/1 - [ OFF ] - Executando no container: bundle exec rails db:chatwoot_prepare"
    echo "Não foi possivel migrar o banco de dados"
fi
## Mensagem de Passo
echo -e "\e[97m• ATIVANDO FUNÇÕES DO SUPER ADMIN \e[33m[6/6]\e[0m"
echo ""
sleep 1

##  Aqui vamos alterar um dado no postgres para liberar algumas funções ocultas no painel de super admin

wait_for_postgres

docker exec -i $CONTAINER_ID psql -U postgres <<EOF
\c chatwoot;
update installation_configs set locked = false;
\q
EOF
if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Desbloqueando tabela installation_configs no postgres"
else
    echo "1/1 - [ OFF ] - Desbloqueando tabela installation_configs no postgres"
    echo "Não foi possivel liberar as funções do super_admin"
fi

## Salvando informações da instalação dentro de /dados_vps/
cd dados_vps

cat > dados_chatwoot <<EOL
[ CHATWOOT ]

Dominio do Chatwoot: https://$url_chatwoot

Usuario: Precisa criar dentro do Chatwoot

Senha: Precisa criar dentro do Chatwoot
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ Chatwoot ]\e[0m"
echo ""

echo -e "\e[97mDominio:\e[33m https://$url_chatwoot\e[0m"
echo ""

echo -e "\e[97mUsuario:\e[33m Precisa criar dentro do Chatwoot\e[0m"
echo ""

echo -e "\e[97mSenha:\e[33m Precisa criar dentro do Chatwoot\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##  ██████╗██╗  ██╗ █████╗ ████████╗██╗    ██╗ ██████╗  ██████╗ ████████╗
## ██╔════╝██║  ██║██╔══██╗╚══██╔══╝██║    ██║██╔═══██╗██╔═══██╗╚══██╔══╝
## ██║     ███████║███████║   ██║   ██║ █╗ ██║██║   ██║██║   ██║   ██║   
## ██║     ██╔══██║██╔══██║   ██║   ██║███╗██║██║   ██║██║   ██║   ██║   
## ╚██████╗██║  ██║██║  ██║   ██║   ╚███╔███╔╝╚██████╔╝╚██████╔╝   ██║   
##  ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚══╝╚══╝  ╚═════╝  ╚═════╝    ╚═╝   
##
##                       █████╗ ██████╗ ███╗   ███╗
##                      ██╔══██╗██╔══██╗████╗ ████║
##                      ███████║██████╔╝██╔████╔██║
##                      ██╔══██║██╔══██╗██║╚██╔╝██║
##                      ██║  ██║██║  ██║██║ ╚═╝ ██║
##                      ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝                         

ferramenta_chatwoot_arm() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_chatwoot

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/5\e[0m"
    echo -en "\e[33mDigite o Dominio para o Chatwoot (ex: chatwoot.sinergialucrativa.com): \e[0m" && read -r url_chatwoot
    echo ""
    
    ## Pega o nome do dominio para ser o nome da empresa
    nome_empresa_chatwoot="$nome_servidor"
    
    ## Pergunta o email SMTP
    echo -e "\e[97mPasso$amarelo 2/5\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_admin_chatwoot
    echo ""
    
    ## Define o dominio SMTP com o dominio do email
    dominio_smtp_chatwoot=$(echo "$email_admin_chatwoot" | cut -d "@" -f 2)
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 3/5\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_email_chatwoot
    echo ""
    
    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 4/5\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r smtp_email_chatwoot
    echo ""
    
    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 5/5\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_chatwoot
    
    
    ## Verifica se a porta é 465, se sim deixa o ssl true, se não, deixa false 
    if [ "$porta_smtp_chatwoot" -eq 465 ]; then
     sobre_ssl=true
    else
     sobre_ssl=false
    fi
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_chatwoot
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL
    echo -e "\e[33mDominio do Chatwoot:\e[97m $url_chatwoot\e[0m"
    echo ""

    ## Informação sobre Nome da Empresa
    echo -e "\e[33mNome da Empresa:\e[97m $nome_empresa_chatwoot\e[0m"
    echo ""

    ## Informação sobre Email de SMTP
    echo -e "\e[33mEmail do SMTP:\e[97m $email_admin_chatwoot\e[0m"
    echo ""

    ## Informação sobre Senha de SMTP
    echo -e "\e[33mSenha do SMTP:\e[97m $senha_email_chatwoot\e[0m"
    echo ""

    ## Informação sobre Host SMTP
    echo -e "\e[33mHost SMTP:\e[97m $smtp_email_chatwoot\e[0m"
    echo ""

    ## Informação sobre Porta SMTP
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_chatwoot\e[0m"
    echo ""
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_chatwoot

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done


## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO CHATWOOT ARM \e[33m[1/6]\e[0m"
echo ""
sleep 1

## Ativa a função dados para pegar os dados da vps
dados

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES E REDIS \e[33m[2/6]\e[0m"
echo ""
sleep 1

## Aqui vamos fazer uma verificação se já existe Postgres e redis instalado
## Se tiver ele vai criar um banco de dados no postgres ou perguntar se deseja apagar o que já existe e criar outro

## Verifica container postgres e cria banco no postgres
verificar_container_postgres
if [ $? -eq 0 ]; then
    pegar_senha_postgres > /dev/null 2>&1
    criar_banco_postgres_da_stack "chatwoot"
else
    ferramenta_postgres #> /dev/null 2>&1
    pegar_senha_postgres > /dev/null 2>&1
    criar_banco_postgres_da_stack "chatwoot"
fi
if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Verificando/Instalando Postgres"
else
    echo "1/2 - [ OFF ] - Verificando/Instalando Postgres"
fi

## Verifica container redis
verificar_container_redis
if [ $? -eq 0 ]; then
    echo ""
else
    ferramenta_redis > /dev/null 2>&1
fi
if [ $? -eq 0 ]; then
    echo "2/2 - [ OK ] - Verificando/Instalando Reids"
else
    echo "2/2 - [ OFF ] - Verificando/Instalando Redis"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO CHATWOOT \e[33m[3/6]\e[0m"
echo ""
sleep 1

## Neste passo vamos estar criando a Stack yaml do Chatwoot na pasta /root/
## Isso possibilitará que o usuario consiga edita-lo posteriormente

## Depois vamos instalar o Chatwoot e verificar se esta tudo certo.

## Criando key aleatória
encryption_key=$(openssl rand -hex 16)

## Criando a stack
cat > chatwoot.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  chatwoot_app:
    image: sendingtk/chatwoot-arm:latest ## Versão do Chatwoot
    command: bundle exec rails s -p 3000 -b 0.0.0.0
    entrypoint: docker/entrypoints/rails.sh

    volumes:
      - chatwoot_storage:/app/storage ## Arquivos de conversa
      - chatwoot_public:/app/public ## Arquivos de logos
      - chatwoot_mailer:/app/app/views/devise/mailer ## Arquivos de email
      - chatwoot_mailers:/app/app/views/mailers ## Arquivos de emails

    networks:
      - $nome_rede_interna ## Nome da rede interna
    
    environment:
      ## Qualquer Url com # no final
      - CHATWOOT_HUB_URL=https://oriondesign.art.br/setup#

      ## Nome da Empresa
      - INSTALLATION_NAME=$nome_empresa_chatwoot

      ## Secret key
      - SECRET_KEY_BASE=$encryption_key

      ## Url Chatwoot
      - FRONTEND_URL=https://$url_chatwoot
      - FORCE_SSL=true

      ## Idioma padrão
      - DEFAULT_LOCALE=pt_BR

      ## Google Cloud - Modifique de acordo com os seus dados (lembre-se de mudar no chatwoot_sidekiq)
      #- GOOGLE_OAUTH_CLIENT_ID=369777777777-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com
      #- GOOGLE_OAUTH_CLIENT_SECRET=ABCDEF-GHijklmnoPqrstuvwX-yz1234567
      #- GOOGLE_OAUTH_CALLBACK_URL=https://<your-server-domain>/omniauth/google_oauth2/callback

      ## Dados do Redis
      - REDIS_URL=redis://redis:6379

      ## Dados do Postgres
      - POSTGRES_HOST=postgres
      - POSTGRES_USERNAME=postgres
      - POSTGRES_PASSWORD=$senha_postgres ## Senha do postgres
      - POSTGRES_DATABASE=chatwoot

      ## Armazenamento
      - ACTIVE_STORAGE_SERVICE=local ## use s3_compatible para MinIO
      #- STORAGE_BUCKET_NAME=chatwoot
      #- STORAGE_ACCESS_KEY_ID=ACCESS_KEY_MINIO
      #- STORAGE_SECRET_ACCESS_KEY=SECRET_KEY_MINIO
      #- STORAGE_REGION=eu-south
      #- STORAGE_ENDPOINT=https://s3.DOMINIO.COM
      #- STORAGE_FORCE_PATH_STYLE=true

      ## Dados do SMTP
      - MAILER_SENDER_EMAIL=$email_admin_chatwoot <$email_admin_chatwoot> ## Email SMTP
      - SMTP_DOMAIN=$dominio_smtp_chatwoot ## Dominio do email
      - SMTP_ADDRESS=$smtp_email_chatwoot ## Host SMTP
      - SMTP_PORT=$porta_smtp_chatwoot ## Porta SMTP
      - SMTP_SSL=$sobre_ssl ## Se a porta for 465 = true | Se a porta for 587 = false
      - SMTP_USERNAME=$email_admin_chatwoot ## Email SMTP
      - SMTP_PASSWORD=$senha_email_chatwoot ## Senha do SMTP
      - SMTP_AUTHENTICATION=login
      - SMTP_ENABLE_STARTTLS_AUTO=true
      - SMTP_OPENSSL_VERIFY_MODE=peer
      - MAILER_INBOUND_EMAIL_DOMAIN=$email_admin_chatwoot ## Email SMTP

      ## Outras configurações
      - NODE_ENV=production
      - RAILS_ENV=production
      - INSTALLATION_ENV=docker
      - RAILS_LOG_TO_STDOUT=true
      - USE_INBOX_AVATAR_FOR_BOT=true
      - ENABLE_ACCOUNT_SIGNUP=false

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.chatwoot_app.rule=Host(\`$url_chatwoot\`)
        - traefik.http.routers.chatwoot_app.entrypoints=websecure
        - traefik.http.routers.chatwoot_app.tls.certresolver=letsencryptresolver
        - traefik.http.routers.chatwoot_app.priority=1
        - traefik.http.routers.chatwoot_app.service=chatwoot_app
        - traefik.http.services.chatwoot_app.loadbalancer.server.port=3000 
        - traefik.http.services.chatwoot_app.loadbalancer.passhostheader=true 
        - traefik.http.middlewares.sslheader.headers.customrequestheaders.X-Forwarded-Proto=https
        - traefik.http.routers.chatwoot_app.middlewares=sslheader@docker

## --------------------------- ANDROMEDA --------------------------- ##

  chatwoot_sidekiq:
    image: sendingtk/chatwoot-arm:latest ## Versão do Chatwoot
    command: bundle exec sidekiq -C config/sidekiq.yml

    volumes:
      - chatwoot_storage:/app/storage ## Arquivos de conversa
      - chatwoot_public:/app/public ## Arquivos de logos
      - chatwoot_mailer:/app/app/views/devise/mailer ## Arquivos de email
      - chatwoot_mailers:/app/app/views/mailers ## Arquivos de emails

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Qualquer Url com # no final
      - CHATWOOT_HUB_URL=https://oriondesign.art.br/setup#

      ## Nome da Empresa
      - INSTALLATION_NAME=$nome_empresa_chatwoot

      ## Secret key
      - SECRET_KEY_BASE=$encryption_key

      ## Url Chatwoot
      - FRONTEND_URL=https://$url_chatwoot
      - FORCE_SSL=true

      ## Idioma padrão
      - DEFAULT_LOCALE=pt_BR

      ## Google Cloud - Modifique de acordo com os seus dados (lembre-se de mudar no chatwoot_sidekiq)
      #- GOOGLE_OAUTH_CLIENT_ID=369777777777-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com
      #- GOOGLE_OAUTH_CLIENT_SECRET=ABCDEF-GHijklmnoPqrstuvwX-yz1234567
      #- GOOGLE_OAUTH_CALLBACK_URL=https://<your-server-domain>/omniauth/google_oauth2/callback

      ## Dados do Redis
      - REDIS_URL=redis://redis:6379

      ## Dados do Postgres
      - POSTGRES_HOST=postgres
      - POSTGRES_USERNAME=postgres
      - POSTGRES_PASSWORD=$senha_postgres ## Senha do postgres
      - POSTGRES_DATABASE=chatwoot

      ## Armazenamento
      - ACTIVE_STORAGE_SERVICE=local ## use s3_compatible para MinIO
      #- STORAGE_BUCKET_NAME=chatwoot
      #- STORAGE_ACCESS_KEY_ID=ACCESS_KEY_MINIO
      #- STORAGE_SECRET_ACCESS_KEY=SECRET_KEY_MINIO
      #- STORAGE_REGION=eu-south
      #- STORAGE_ENDPOINT=https://s3.DOMINIO.COM
      #- STORAGE_FORCE_PATH_STYLE=true

      ## Dados do SMTP
      - MAILER_SENDER_EMAIL=$email_admin_chatwoot <$email_admin_chatwoot> ## Email SMTP
      - SMTP_DOMAIN=$dominio_smtp_chatwoot ## Dominio do email
      - SMTP_ADDRESS=$smtp_email_chatwoot ## Host SMTP
      - SMTP_PORT=$porta_smtp_chatwoot ## Porta SMTP
      - SMTP_SSL=$sobre_ssl ## Se a porta for 465 = true | Se a porta for 587 = false
      - SMTP_USERNAME=$email_admin_chatwoot ## Email SMTP
      - SMTP_PASSWORD=$senha_email_chatwoot ## Senha do SMTP
      - SMTP_AUTHENTICATION=login
      - SMTP_ENABLE_STARTTLS_AUTO=true
      - SMTP_OPENSSL_VERIFY_MODE=peer
      - MAILER_INBOUND_EMAIL_DOMAIN=$email_admin_chatwoot ## Email SMTP

      ## Outras configurações
      - NODE_ENV=production
      - RAILS_ENV=production
      - INSTALLATION_ENV=docker
      - RAILS_LOG_TO_STDOUT=true
      - USE_INBOX_AVATAR_FOR_BOT=true
      - ENABLE_ACCOUNT_SIGNUP=false

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  chatwoot_storage:
    external: true
    name: chatwoot_storage
  chatwoot_public:
    external: true
    name: chatwoot_public
  chatwoot_mailer:
    external: true
    name: chatwoot_mailer
  chatwoot_mailers:
    external: true
    name: chatwoot_mailers

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Chatwoot"
fi
STACK_NAME="chatwoot"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c chatwoot.yaml chatwoot > /dev/null 2>&1

#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do Chatwoot"
#fi

## Mensagem de Passo
echo -e "\e[97m• ESPERANDO SERVIÇO DO CHATWOOT ESTAR PRONTO \e[33m[4/6]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_chatwoot para verificar se o serviço esta online
wait_stack "chatwoot"

## Mensagem de Passo
echo -e "\e[97m• MIGRANDO BANCO DE DADOS \e[33m[5/6]\e[0m"
echo ""
sleep 1

## Aqui vamos estar migrando o banco de dados usando o comando "bundle exec rails db:chatwoot_prepare"

## Basicamente voce poderia entrar no banco de dados do chatwoot e executar o comando por lá tambem

container_name="chatwoot_chatwoot_app"

max_wait_time=1200

wait_interval=60

elapsed_time=0

while [ $elapsed_time -lt $max_wait_time ]; do
  CONTAINER_ID=$(docker ps -q --filter "name=$container_name")
  if [ -n "$CONTAINER_ID" ]; then
    break
  fi
  sleep $wait_interval
  elapsed_time=$((elapsed_time + wait_interval))
done

if [ -z "$CONTAINER_ID" ]; then
  echo "O contêiner não foi encontrado após $max_wait_time segundos."
  exit 1
fi

docker exec -it "$CONTAINER_ID" bundle exec rails db:chatwoot_prepare
if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Executando no container: bundle exec rails db:chatwoot_prepare"
else
    echo "1/1 - [ OFF ] - Executando no container: bundle exec rails db:chatwoot_prepare"
    echo "Não foi possivel migrar o banco de dados"
fi
## Mensagem de Passo
echo -e "\e[97m• ATIVANDO FUNÇÕES DO SUPER ADMIN \e[33m[6/6]\e[0m"
echo ""
sleep 1

##  Aqui vamos alterar um dado no postgres para liberar algumas funções ocultas no painel de super admin

wait_for_postgres

docker exec -i $CONTAINER_ID psql -U postgres <<EOF
\c chatwoot;
update installation_configs set locked = false;
\q
EOF
if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Modificando tabela installation_configs no postgres"
else
    echo "1/1 - [ OFF ] - Modificando tabela installation_configs no postgres"
    echo "Não foi possivel liberar as funções do super_admin"
fi

## Salvando informações da instalação dentro de /dados_vps/
cd dados_vps

cat > dados_chatwoot_arm <<EOL
[ CHATWOOT ARM ]

Dominio do Chatwoot: https://$url_chatwoot

Usuario: Precisa criar dentro do Chatwoot

Senha: Precisa criar dentro do Chatwoot
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ CHATWOOT ARM ]\e[0m"
echo ""

echo -e "\e[97mDominio:\e[33m https://$url_chatwoot\e[0m"
echo ""

echo -e "\e[97mUsuario:\e[33m Precisa criar dentro do Chatwoot\e[0m"
echo ""

echo -e "\e[97mSenha:\e[33m Precisa criar dentro do Chatwoot\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███████╗██╗   ██╗ ██████╗ ██╗     ██╗   ██╗████████╗██╗ ██████╗ ███╗   ██╗     █████╗ ██████╗ ██╗
## ██╔════╝██║   ██║██╔═══██╗██║     ██║   ██║╚══██╔══╝██║██╔═══██╗████╗  ██║    ██╔══██╗██╔══██╗██║
## █████╗  ██║   ██║██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██╔██╗ ██║    ███████║██████╔╝██║
## ██╔══╝  ╚██╗ ██╔╝██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██║╚██╗██║    ██╔══██║██╔═══╝ ██║
## ███████╗ ╚████╔╝ ╚██████╔╝███████╗╚██████╔╝   ██║   ██║╚██████╔╝██║ ╚████║    ██║  ██║██║     ██║
## ╚══════╝  ╚═══╝   ╚═════╝ ╚══════╝ ╚═════╝    ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝    ╚═╝  ╚═╝╚═╝     ╚═╝

ferramenta_evolution() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_evolution

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o Dominio para a Evolution API (ex: api.sinergialucrativa.com): \e[0m" && read -r url_evolution
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_evolution
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info

    ## Informação sobre URL
    echo -e "\e[33mDominio da Evolution API:\e[97m $url_evolution\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_evolution

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DA EVOLUTION API \e[33m[1/5]\e[0m"
echo ""
sleep 1

## Literalmente nada, apenas um espaço vazio caso precisar de adicionar alguma coisa
## Antes..
## E claro, para aparecer a mensagem do passo..

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/5]\e[0m"
echo ""
sleep 1

## Aqui vamos fazer uma verificação se já existe Postgres Instalado
## Se tiver ele vai criar um banco de dados no postgres ou perguntar se deseja apagar o que já existe e criar outro

## Verifica container postgres e cria banco no postgres

verificar_container_postgres
if [ $? -eq 0 ]; then
    pegar_senha_postgres > /dev/null 2>&1
else
    ferramenta_postgres #> /dev/null 2>&1
    pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "evolution"

if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Verificando/Instalando Postgres"
else
    echo "1/1 - [ OFF ] - Verificando/Instalando Postgres"
fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO REDIS \e[33m[3/5]\e[0m"
echo ""
sleep 1

## Verifica container redis
verificar_container_redis
if [ $? -eq 0 ]; then
    echo ""
else
    ferramenta_redis > /dev/null 2>&1
fi
if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Verificando/Instalando Reids"
else
    echo "1/1 - [ OFF ] - Verificando/Instalando Redis"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO A EVOLUTION API \e[33m[4/5]\e[0m"
echo ""
sleep 1

## Aqui de fato vamos iniciar a instalação da Evolution API

## Criando uma Global Key Aleatória
apikeyglobal=$(openssl rand -hex 16)

## Criando a stack
cat > evolution.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  evolution:
    image: atendai/evolution-api:v2.1.0

    volumes:
      - evolution_instances:/evolution/instances

    networks:
      - $nome_rede_interna

    environment:
      ## Configurações Gerais
      - SERVER_URL=https://$url_evolution
      - AUTHENTICATION_API_KEY=$apikeyglobal
      - AUTHENTICATION_EXPOSE_IN_FETCH_INSTANCES=true
      - DEL_INSTANCE=false
      - QRCODE_LIMIT=1902
      - LANGUAGE=pt-BR
      
      ## Configuração do Cliente
      ## Pegue a versão em: https://web.whatsapp.com/check-update?version=0&platform=web
      - CONFIG_SESSION_PHONE_VERSION=2.3000.1015901307
      - CONFIG_SESSION_PHONE_CLIENT=OrionDesign
      - CONFIG_SESSION_PHONE_NAME=Chrome
      
      ## Configuração do Banco de Dados
      - DATABASE_ENABLED=true
      - DATABASE_PROVIDER=postgresql
      - DATABASE_CONNECTION_URI=postgresql://postgres:$senha_postgres@postgres:5432/evolution
      - DATABASE_CONNECTION_CLIENT_NAME=evolution
      - DATABASE_SAVE_DATA_INSTANCE=true
      - DATABASE_SAVE_DATA_NEW_MESSAGE=true
      - DATABASE_SAVE_MESSAGE_UPDATE=true
      - DATABASE_SAVE_DATA_CONTACTS=true
      - DATABASE_SAVE_DATA_CHATS=true
      - DATABASE_SAVE_DATA_LABELS=true
      - DATABASE_SAVE_DATA_HISTORIC=true
      
      ## Integração com OpenAI
      - OPENAI_ENABLED=true
      
      ## Integração com Dify
      - DIFY_ENABLED=true
      
      ## Integração com Typebot
      - TYPEBOT_ENABLED=true
      - TYPEBOT_API_VERSION=latest
      
      ## Integração com Chatwoot
      - CHATWOOT_ENABLED=true
      - CHATWOOT_MESSAGE_READ=true
      - CHATWOOT_MESSAGE_DELETE=true
      - CHATWOOT_IMPORT_DATABASE_CONNECTION_URI=postgresql://postgres:$senha_postgres@postgres:5432/chatwoot?sslmode=disable
      - CHATWOOT_IMPORT_PLACEHOLDER_MEDIA_MESSAGE=false
      
      ## Configuração do Cache
      - CACHE_REDIS_ENABLED=true
      - CACHE_REDIS_URI=redis://redis:6379/8
      - CACHE_REDIS_PREFIX_KEY=evolution
      - CACHE_REDIS_SAVE_INSTANCES=false
      - CACHE_LOCAL_ENABLED=false
      
      ## Configuração do S3
      - S3_ENABLED=false
      - S3_ACCESS_KEY=
      - S3_SECRET_KEY=
      - S3_BUCKET=evolution
      - S3_PORT=443
      - S3_ENDPOINT=
      - S3_USE_SSL=true

      ## Configuração do WhatsApp Business
      - WA_BUSINESS_TOKEN_WEBHOOK=evolution
      - WA_BUSINESS_URL=https://graph.facebook.com
      - WA_BUSINESS_VERSION=v20.0
      - WA_BUSINESS_LANGUAGE=pt_BR

      ## Telemetria
      - TELEMETRY=false
      - TELEMETRY_URL=

      ## Configuração do WebSocket
      - WEBSOCKET_ENABLED=false
      - WEBSOCKET_GLOBAL_EVENTS=false

      ## Configuração do SQS
      - SQS_ENABLED=false
      - SQS_ACCESS_KEY_ID=
      - SQS_SECRET_ACCESS_KEY=
      - SQS_ACCOUNT_ID=
      - SQS_REGION=

      ## Configuração do RabbitMQ
      - RABBITMQ_ENABLED=false
      - RABBITMQ_URI=amqp://USER:PASS@rabbitmq:5672/evolution
      - RABBITMQ_EXCHANGE_NAME=evolution
      - RABBITMQ_GLOBAL_ENABLED=false
      - RABBITMQ_EVENTS_APPLICATION_STARTUP=false
      - RABBITMQ_EVENTS_INSTANCE_CREATE=false
      - RABBITMQ_EVENTS_INSTANCE_DELETE=false
      - RABBITMQ_EVENTS_QRCODE_UPDATED=false
      - RABBITMQ_EVENTS_MESSAGES_SET=false
      - RABBITMQ_EVENTS_MESSAGES_UPSERT=true
      - RABBITMQ_EVENTS_MESSAGES_EDITED=false
      - RABBITMQ_EVENTS_MESSAGES_UPDATE=false
      - RABBITMQ_EVENTS_MESSAGES_DELETE=false
      - RABBITMQ_EVENTS_SEND_MESSAGE=false
      - RABBITMQ_EVENTS_CONTACTS_SET=false
      - RABBITMQ_EVENTS_CONTACTS_UPSERT=false
      - RABBITMQ_EVENTS_CONTACTS_UPDATE=false
      - RABBITMQ_EVENTS_PRESENCE_UPDATE=false
      - RABBITMQ_EVENTS_CHATS_SET=false
      - RABBITMQ_EVENTS_CHATS_UPSERT=false
      - RABBITMQ_EVENTS_CHATS_UPDATE=false
      - RABBITMQ_EVENTS_CHATS_DELETE=false
      - RABBITMQ_EVENTS_GROUPS_UPSERT=false
      - RABBITMQ_EVENTS_GROUP_UPDATE=false
      - RABBITMQ_EVENTS_GROUP_PARTICIPANTS_UPDATE=false
      - RABBITMQ_EVENTS_CONNECTION_UPDATE=true
      - RABBITMQ_EVENTS_CALL=false
      - RABBITMQ_EVENTS_TYPEBOT_START=false
      - RABBITMQ_EVENTS_TYPEBOT_CHANGE_STATUS=false

      ## Configuração do Webhook
      - WEBHOOK_GLOBAL_ENABLED=false
      - WEBHOOK_GLOBAL_URL=
      - WEBHOOK_GLOBAL_WEBHOOK_BY_EVENTS=false
      - WEBHOOK_EVENTS_APPLICATION_STARTUP=false
      - WEBHOOK_EVENTS_QRCODE_UPDATED=false
      - WEBHOOK_EVENTS_MESSAGES_SET=false
      - WEBHOOK_EVENTS_MESSAGES_UPSERT=false
      - WEBHOOK_EVENTS_MESSAGES_EDITED=false
      - WEBHOOK_EVENTS_MESSAGES_UPDATE=false
      - WEBHOOK_EVENTS_MESSAGES_DELETE=false
      - WEBHOOK_EVENTS_SEND_MESSAGE=false
      - WEBHOOK_EVENTS_CONTACTS_SET=false
      - WEBHOOK_EVENTS_CONTACTS_UPSERT=false
      - WEBHOOK_EVENTS_CONTACTS_UPDATE=false
      - WEBHOOK_EVENTS_PRESENCE_UPDATE=false
      - WEBHOOK_EVENTS_CHATS_SET=false
      - WEBHOOK_EVENTS_CHATS_UPSERT=false
      - WEBHOOK_EVENTS_CHATS_UPDATE=false
      - WEBHOOK_EVENTS_CHATS_DELETE=false
      - WEBHOOK_EVENTS_GROUPS_UPSERT=false
      - WEBHOOK_EVENTS_GROUPS_UPDATE=false
      - WEBHOOK_EVENTS_GROUP_PARTICIPANTS_UPDATE=false
      - WEBHOOK_EVENTS_CONNECTION_UPDATE=false
      - WEBHOOK_EVENTS_LABELS_EDIT=false
      - WEBHOOK_EVENTS_LABELS_ASSOCIATION=false
      - WEBHOOK_EVENTS_CALL=false
      - WEBHOOK_EVENTS_TYPEBOT_START=false
      - WEBHOOK_EVENTS_TYPEBOT_CHANGE_STATUS=false
      - WEBHOOK_EVENTS_ERRORS=false
      - WEBHOOK_EVENTS_ERRORS_WEBHOOK=

      ## Configuração do Provider
      - PROVIDER_ENABLED=false
      - PROVIDER_HOST=127.0.0.1
      - PROVIDER_PORT=5656
      - PROVIDER_PREFIX=evolution
      
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
        - node.role == manager
      labels:
      - traefik.enable=1
      - traefik.http.routers.evolution.rule=Host(\`$url_evolution\`) ## Url da aplicação
      - traefik.http.routers.evolution.entrypoints=websecure
      - traefik.http.routers.evolution.priority=1
      - traefik.http.routers.evolution.tls.certresolver=letsencryptresolver
      - traefik.http.routers.evolution.service=evolution
      - traefik.http.services.evolution.loadbalancer.server.port=8080
      - traefik.http.services.evolution.loadbalancer.passHostHeader=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  evolution_instances:
    external: true
    name: evolution_instances

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack da Evolution API"
fi
STACK_NAME="evolution"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c evolution.yaml evolution > /dev/null 2>&1

#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack da Evolution API"
#fi

sleep 10

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[5/5]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_evolution para verificar se o serviço esta online
wait_stack "evolution"

cd dados_vps

cat > dados_evolution <<EOL
[ EVOLUTION API ]

Manager Evolution: https://$url_evolution/manager

URL: https://$url_evolution

Global API Key: $apikeyglobal
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ EVOLUTION API ]\e[0m"
echo ""

echo -e "\e[97mLink do Manager:\e[33m https://$url_evolution/manager\e[0m"
echo ""

echo -e "\e[97mAPI URL:\e[33m https://$url_evolution\e[0m"
echo ""

echo -e "\e[97mGLOBAL API KEY:\e[33m $apikeyglobal\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}


## ███████╗██╗   ██╗ ██████╗ ██╗     ██╗   ██╗████████╗██╗ ██████╗ ███╗   ██╗    ██╗   ██╗ ██╗
## ██╔════╝██║   ██║██╔═══██╗██║     ██║   ██║╚══██╔══╝██║██╔═══██╗████╗  ██║    ██║   ██║███║
## █████╗  ██║   ██║██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██╔██╗ ██║    ██║   ██║╚██║
## ██╔══╝  ╚██╗ ██╔╝██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██║╚██╗██║    ╚██╗ ██╔╝ ██║
## ███████╗ ╚████╔╝ ╚██████╔╝███████╗╚██████╔╝   ██║   ██║╚██████╔╝██║ ╚████║     ╚████╔╝  ██║
## ╚══════╝  ╚═══╝   ╚═════╝ ╚══════╝ ╚═════╝    ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝      ╚═══╝   ╚═╝

ferramenta_evolution_v1() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_evolution

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o Dominio para a Evolution API (ex: api.suporte@sinergialucrativa.com): \e[0m" && read -r url_evolution
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_evolution
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info

    ## Informação sobre URL
    echo -e "\e[33mDominio da Evolution API:\e[97m $url_evolution\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_evolution

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DA EVOLUTION API \e[33m[1/3]\e[0m"
echo ""
sleep 1

## Literalmente nada, apenas um espaço vazio caso precisar de adicionar alguma coisa
## Antes..
## E claro, para aparecer a mensagem do passo..

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO A EVOLUTION API \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Verifica se existe postgres
verificar_container_postgres
if [ $? -eq 0 ]; then
    pegar_senha_postgres > /dev/null 2>&1
    senha_do_postgres=$senha_postgres
else
    senha_do_postgres=SENHA_DO_POSTGRES_AQUI
fi

## Aqui de fato vamos iniciar a instalação da Evolution API

## Criando uma Global Key Aleatória
apikeyglobal=$(openssl rand -hex 16)

## Criando a stack
cat > evolution_v1.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  evolution_oriondesign:
    image: atendai/evolution-api:latest ## Versão da Evolution API
    command: ["node", "./dist/src/main.js"]

    volumes:
    - evolution_oriondesign_instances:/evolution/instances
    - evolution_oriondesign_store:/evolution/store
    - evolution_oriondesign_views:/evolution/views

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
    ## Url da Evolution API
    - SERVER_URL=https://$url_evolution ## Url da aplicação

    ## Dados de Autenticação
    - AUTHENTICATION_TYPE=apikey
    - AUTHENTICATION_API_KEY=$apikeyglobal ## GLOBAL API KEY
    - AUTHENTICATION_EXPOSE_IN_FETCH_INSTANCES=true

    ## Configurações
    - CONFIG_SESSION_PHONE_CLIENT=OrionDesign ## Nome que aparece no celular
    - CONFIG_SESSION_PHONE_NAME=chrome

    ## Definir versão do Whatsapp Web
    ## pegue a versão em: https://web.whatsapp.com/check-update?version=0&platform=web
    - CONFIG_SESSION_PHONE_VERSION=2,3000,1015901307

    ## Sobre os QR-Codes
    - QRCODE_LIMIT=1902
    - QRCODE_COLOR=#000000

    # Ativer o RabbitMQ
    - RABBITMQ_ENABLED=false ## Colocar true se quiser usar | Recomendado | Necessario instalar RabbitMQ antes
    - RABBITMQ_URI=amqp://USER:PASS@rabbitmq:5672

    # Aivar Banco de Dados MongoDB
    - DATABASE_ENABLED=false ## Colocar true se quiser usar | Recomendado | Necessario instalar MongoDB antes
    - DATABASE_CONNECTION_URI=mongodb://USUARIO:SENHA@IP_VPS:27017/?authSource=admin&readPreference=primary&ssl=false&directConnection=true ## Colocar a URL do MongoDB
    - DATABASE_CONNECTION_DB_PREFIX_NAME=evolution
    - DATABASE_SAVE_DATA_INSTANCE=true
    - DATABASE_SAVE_DATA_NEW_MESSAGE=true
    - DATABASE_SAVE_MESSAGE_UPDATE=true
    - DATABASE_SAVE_DATA_CONTACTS=true
    - DATABASE_SAVE_DATA_CHATS=true

    ## Ativar o Redis
    - REDIS_ENABLED=false ## Colocar true se quiser usar | Não recomendado
    - REDIS_URI=redis://redis:6379

    ## Ativar o Cache Redis (Em testes)
    - CACHE_REDIS_ENABLED=false
    - CACHE_REDIS_URI=redis://redis:6379
    - CACHE_REDIS_PREFIX_KEY=evolution
    - CACHE_REDIS_TTL=604800
    - CACHE_REDIS_SAVE_INSTANCES=false
    - CACHE_LOCAL_ENABLED=false
    - CACHE_LOCAL_TTL=604800

    ## Novas variaveis para o Typebot
    - TYPEBOT_KEEP_OPEN=true
    - TYPEBOT_API_VERSION=latest

    ## Novas variaveis para o Chatwoot
    - CHATWOOT_MESSAGE_DELETE=true
    - CHATWOOT_MESSAGE_READ=true

    ## Importar mensagens para o Chawoot | Descomente para usar
    ## Se estiver usando Chatwoot do Nestor mude o a parte "chatwoot" para "chatwoot_nestor"
    #- CHATWOOT_IMPORT_DATABASE_CONNECTION_URI=postgresql://postgres:$senha_do_postgres@postgres:5432/chatwoot?sslmode=disable
    #- CHATWOOT_IMPORT_DATABASE_PLACEHOLDER_MEDIA_MESSAGE=false ## true = Importar midia | false = Não importar midia 

    ## Informações do Webhook
    - WEBHOOK_GLOBAL_ENABLED=false
    - WEBHOOK_GLOBAL_URL=
    - WEBHOOK_GLOBAL_WEBHOOK_BY_EVENTS=false
    - WEBHOOK_EVENTS_APPLICATION_STARTUP=false
    - WEBHOOK_EVENTS_QRCODE_UPDATED=true
    - WEBHOOK_EVENTS_MESSAGES_SET=false
    - WEBHOOK_EVENTS_MESSAGES_UPSERT=true
    - WEBHOOK_EVENTS_MESSAGES_UPDATE=true
    - WEBHOOK_EVENTS_CONTACTS_SET=true
    - WEBHOOK_EVENTS_CONTACTS_UPSERT=true
    - WEBHOOK_EVENTS_CONTACTS_UPDATE=true
    - WEBHOOK_EVENTS_PRESENCE_UPDATE=true
    - WEBHOOK_EVENTS_CHATS_SET=true
    - WEBHOOK_EVENTS_CHATS_UPSERT=true
    - WEBHOOK_EVENTS_CHATS_UPDATE=true
    - WEBHOOK_EVENTS_CHATS_DELETE=true
    - WEBHOOK_EVENTS_GROUPS_UPSERT=true
    - WEBHOOK_EVENTS_GROUPS_UPDATE=true
    - WEBHOOK_EVENTS_GROUP_PARTICIPANTS_UPDATE=true
    - WEBHOOK_EVENTS_CONNECTION_UPDATE=true

    ## Sobre as instancias
    - DEL_INSTANCE=false
    - DEL_TEMP_INSTANCES=false
    - STORE_MESSAGES=true
    - STORE_MESSAGE_UP=true
    - STORE_CONTACTS=true
    - STORE_CHATS=true
    - CLEAN_STORE_CLEANING_INTERVAL=7200 # seconds === 2h
    - CLEAN_STORE_MESSAGES=true
    - CLEAN_STORE_MESSAGE_UP=true
    - CLEAN_STORE_CONTACTS=true
    - CLEAN_STORE_CHATS=true

    ## Outros dados
    - DOCKER_ENV=true
    - LOG_LEVEL=ERROR

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
        - node.role == manager
      labels:
      - traefik.enable=1
      - traefik.http.routers.evolution_oriondesign.rule=Host(\`$url_evolution\`) ## Url da aplicação
      - traefik.http.routers.evolution_oriondesign.entrypoints=websecure
      - traefik.http.routers.evolution_oriondesign.priority=1
      - traefik.http.routers.evolution_oriondesign.tls.certresolver=letsencryptresolver
      - traefik.http.routers.evolution_oriondesign.service=evolution_oriondesign
      - traefik.http.services.evolution_oriondesign.loadbalancer.server.port=8080
      - traefik.http.services.evolution_oriondesign.loadbalancer.passHostHeader=1

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  evolution_oriondesign_instances:
    external: true
    name: evolution_oriondesign_instances
  evolution_oriondesign_store:
    external: true
    name: evolution_oriondesign_store
  evolution_oriondesign_views:
    external: true
    name: evolution_oriondesign_views
networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack da Evolution API"
fi
STACK_NAME="evolution_v1"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c evolution_v1.yaml evolution > /dev/null 2>&1

#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack da Evolution API"
#fi

sleep 10

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_evolution para verificar se o serviço esta online
wait_stack "evolution"

cd dados_vps

cat > dados_evolution_v1 <<EOL
[ EVOLUTION API ]

Manager Evolution: https://$url_evolution/manager

URL: https://$url_evolution

Global API Key: $apikeyglobal
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ Evolution API ]\e[0m"
echo ""

echo -e "\e[97mLink do Manager:\e[33m https://$url_evolution/manager\e[0m"
echo ""

echo -e "\e[97mAPI URL:\e[33m https://$url_evolution\e[0m"
echo ""

echo -e "\e[97mGLOBAL API KEY:\e[33m $apikeyglobal\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███████╗██╗   ██╗ ██████╗ ██╗     ██╗   ██╗████████╗██╗ ██████╗ ███╗   ██╗    ██╗   ██╗██████╗ 
## ██╔════╝██║   ██║██╔═══██╗██║     ██║   ██║╚══██╔══╝██║██╔═══██╗████╗  ██║    ██║   ██║╚════██╗
## █████╗  ██║   ██║██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██╔██╗ ██║    ██║   ██║ █████╔╝
## ██╔══╝  ╚██╗ ██╔╝██║   ██║██║     ██║   ██║   ██║   ██║██║   ██║██║╚██╗██║    ╚██╗ ██╔╝██╔═══╝ 
## ███████╗ ╚████╔╝ ╚██████╔╝███████╗╚██████╔╝   ██║   ██║╚██████╔╝██║ ╚████║     ╚████╔╝ ███████╗
## ╚══════╝  ╚═══╝   ╚═════╝ ╚══════╝ ╚═════╝    ╚═╝   ╚═╝ ╚═════╝ ╚═╝  ╚═══╝      ╚═══╝  ╚══════╝

ferramenta_evolution_v2() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_evolution

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o Dominio para a Evolution API (ex: api.suporte@sinergialucrativa.com): \e[0m" && read -r url_evolution
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_evolution
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info

    ## Informação sobre URL
    echo -e "\e[33mDominio da Evolution API:\e[97m $url_evolution\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_evolution

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DA EVOLUTION API \e[33m[1/5]\e[0m"
echo ""
sleep 1

## Literalmente nada, apenas um espaço vazio caso precisar de adicionar alguma coisa
## Antes..
## E claro, para aparecer a mensagem do passo..

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/5]\e[0m"
echo ""
sleep 1

## Aqui vamos fazer uma verificação se já existe Postgres Instalado
## Se tiver ele vai criar um banco de dados no postgres ou perguntar se deseja apagar o que já existe e criar outro

## Verifica container postgres e cria banco no postgres

verificar_container_postgres
if [ $? -eq 0 ]; then
    pegar_senha_postgres > /dev/null 2>&1
else
    ferramenta_postgres #> /dev/null 2>&1
    pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "evolution"

if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Verificando/Instalando Postgres"
else
    echo "1/1 - [ OFF ] - Verificando/Instalando Postgres"
fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO REDIS \e[33m[3/5]\e[0m"
echo ""
sleep 1

## Verifica container redis
verificar_container_redis
if [ $? -eq 0 ]; then
    echo ""
else
    ferramenta_redis > /dev/null 2>&1
fi
if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Verificando/Instalando Reids"
else
    echo "1/1 - [ OFF ] - Verificando/Instalando Redis"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO A EVOLUTION API \e[33m[4/5]\e[0m"
echo ""
sleep 1

## Aqui de fato vamos iniciar a instalação da Evolution API

## Criando uma Global Key Aleatória
apikeyglobal=$(openssl rand -hex 16)

## Criando a stack
cat > evolution_v2.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  evolution:
    image: atendai/evolution-api:v2.1.0

    volumes:
      - evolution_instances:/evolution/instances

    networks:
      - $nome_rede_interna

    environment:
      ## Configurações Gerais
      - SERVER_URL=https://$url_evolution
      - AUTHENTICATION_API_KEY=$apikeyglobal
      - AUTHENTICATION_EXPOSE_IN_FETCH_INSTANCES=true
      - DEL_INSTANCE=false
      - QRCODE_LIMIT=1902
      - LANGUAGE=pt-BR
      
      ## Configuração do Cliente
      ## Pegue a versão em: https://web.whatsapp.com/check-update?version=0&platform=web
      - CONFIG_SESSION_PHONE_VERSION=2.3000.1015901307
      - CONFIG_SESSION_PHONE_CLIENT=OrionDesign
      - CONFIG_SESSION_PHONE_NAME=Chrome
      
      ## Configuração do Banco de Dados
      - DATABASE_ENABLED=true
      - DATABASE_PROVIDER=postgresql
      - DATABASE_CONNECTION_URI=postgresql://postgres:$senha_postgres@postgres:5432/evolution
      - DATABASE_CONNECTION_CLIENT_NAME=evolution
      - DATABASE_SAVE_DATA_INSTANCE=true
      - DATABASE_SAVE_DATA_NEW_MESSAGE=true
      - DATABASE_SAVE_MESSAGE_UPDATE=true
      - DATABASE_SAVE_DATA_CONTACTS=true
      - DATABASE_SAVE_DATA_CHATS=true
      - DATABASE_SAVE_DATA_LABELS=true
      - DATABASE_SAVE_DATA_HISTORIC=true
      
      ## Integração com OpenAI
      - OPENAI_ENABLED=true
      
      ## Integração com Dify
      - DIFY_ENABLED=true
      
      ## Integração com Typebot
      - TYPEBOT_ENABLED=true
      - TYPEBOT_API_VERSION=latest
      
      ## Integração com Chatwoot
      - CHATWOOT_ENABLED=true
      - CHATWOOT_MESSAGE_READ=true
      - CHATWOOT_MESSAGE_DELETE=true
      - CHATWOOT_IMPORT_DATABASE_CONNECTION_URI=postgresql://postgres:$senha_postgres@postgres:5432/chatwoot?sslmode=disable
      - CHATWOOT_IMPORT_PLACEHOLDER_MEDIA_MESSAGE=false
      
      ## Configuração do Cache
      - CACHE_REDIS_ENABLED=true
      - CACHE_REDIS_URI=redis://redis:6379/8
      - CACHE_REDIS_PREFIX_KEY=evolution
      - CACHE_REDIS_SAVE_INSTANCES=false
      - CACHE_LOCAL_ENABLED=false
      
      ## Configuração do S3
      - S3_ENABLED=false
      - S3_ACCESS_KEY=
      - S3_SECRET_KEY=
      - S3_BUCKET=evolution
      - S3_PORT=443
      - S3_ENDPOINT=
      - S3_USE_SSL=true

      ## Configuração do WhatsApp Business
      - WA_BUSINESS_TOKEN_WEBHOOK=evolution
      - WA_BUSINESS_URL=https://graph.facebook.com
      - WA_BUSINESS_VERSION=v20.0
      - WA_BUSINESS_LANGUAGE=pt_BR

      ## Telemetria
      - TELEMETRY=false
      - TELEMETRY_URL=

      ## Configuração do WebSocket
      - WEBSOCKET_ENABLED=false
      - WEBSOCKET_GLOBAL_EVENTS=false

      ## Configuração do SQS
      - SQS_ENABLED=false
      - SQS_ACCESS_KEY_ID=
      - SQS_SECRET_ACCESS_KEY=
      - SQS_ACCOUNT_ID=
      - SQS_REGION=

      ## Configuração do RabbitMQ
      - RABBITMQ_ENABLED=false
      - RABBITMQ_URI=amqp://USER:PASS@rabbitmq:5672/evolution
      - RABBITMQ_EXCHANGE_NAME=evolution
      - RABBITMQ_GLOBAL_ENABLED=false
      - RABBITMQ_EVENTS_APPLICATION_STARTUP=false
      - RABBITMQ_EVENTS_INSTANCE_CREATE=false
      - RABBITMQ_EVENTS_INSTANCE_DELETE=false
      - RABBITMQ_EVENTS_QRCODE_UPDATED=false
      - RABBITMQ_EVENTS_MESSAGES_SET=false
      - RABBITMQ_EVENTS_MESSAGES_UPSERT=true
      - RABBITMQ_EVENTS_MESSAGES_EDITED=false
      - RABBITMQ_EVENTS_MESSAGES_UPDATE=false
      - RABBITMQ_EVENTS_MESSAGES_DELETE=false
      - RABBITMQ_EVENTS_SEND_MESSAGE=false
      - RABBITMQ_EVENTS_CONTACTS_SET=false
      - RABBITMQ_EVENTS_CONTACTS_UPSERT=false
      - RABBITMQ_EVENTS_CONTACTS_UPDATE=false
      - RABBITMQ_EVENTS_PRESENCE_UPDATE=false
      - RABBITMQ_EVENTS_CHATS_SET=false
      - RABBITMQ_EVENTS_CHATS_UPSERT=false
      - RABBITMQ_EVENTS_CHATS_UPDATE=false
      - RABBITMQ_EVENTS_CHATS_DELETE=false
      - RABBITMQ_EVENTS_GROUPS_UPSERT=false
      - RABBITMQ_EVENTS_GROUP_UPDATE=false
      - RABBITMQ_EVENTS_GROUP_PARTICIPANTS_UPDATE=false
      - RABBITMQ_EVENTS_CONNECTION_UPDATE=true
      - RABBITMQ_EVENTS_CALL=false
      - RABBITMQ_EVENTS_TYPEBOT_START=false
      - RABBITMQ_EVENTS_TYPEBOT_CHANGE_STATUS=false

      ## Configuração do Webhook
      - WEBHOOK_GLOBAL_ENABLED=false
      - WEBHOOK_GLOBAL_URL=
      - WEBHOOK_GLOBAL_WEBHOOK_BY_EVENTS=false
      - WEBHOOK_EVENTS_APPLICATION_STARTUP=false
      - WEBHOOK_EVENTS_QRCODE_UPDATED=false
      - WEBHOOK_EVENTS_MESSAGES_SET=false
      - WEBHOOK_EVENTS_MESSAGES_UPSERT=false
      - WEBHOOK_EVENTS_MESSAGES_EDITED=false
      - WEBHOOK_EVENTS_MESSAGES_UPDATE=false
      - WEBHOOK_EVENTS_MESSAGES_DELETE=false
      - WEBHOOK_EVENTS_SEND_MESSAGE=false
      - WEBHOOK_EVENTS_CONTACTS_SET=false
      - WEBHOOK_EVENTS_CONTACTS_UPSERT=false
      - WEBHOOK_EVENTS_CONTACTS_UPDATE=false
      - WEBHOOK_EVENTS_PRESENCE_UPDATE=false
      - WEBHOOK_EVENTS_CHATS_SET=false
      - WEBHOOK_EVENTS_CHATS_UPSERT=false
      - WEBHOOK_EVENTS_CHATS_UPDATE=false
      - WEBHOOK_EVENTS_CHATS_DELETE=false
      - WEBHOOK_EVENTS_GROUPS_UPSERT=false
      - WEBHOOK_EVENTS_GROUPS_UPDATE=false
      - WEBHOOK_EVENTS_GROUP_PARTICIPANTS_UPDATE=false
      - WEBHOOK_EVENTS_CONNECTION_UPDATE=false
      - WEBHOOK_EVENTS_LABELS_EDIT=false
      - WEBHOOK_EVENTS_LABELS_ASSOCIATION=false
      - WEBHOOK_EVENTS_CALL=false
      - WEBHOOK_EVENTS_TYPEBOT_START=false
      - WEBHOOK_EVENTS_TYPEBOT_CHANGE_STATUS=false
      - WEBHOOK_EVENTS_ERRORS=false
      - WEBHOOK_EVENTS_ERRORS_WEBHOOK=

      ## Configuração do Provider
      - PROVIDER_ENABLED=false
      - PROVIDER_HOST=127.0.0.1
      - PROVIDER_PORT=5656
      - PROVIDER_PREFIX=evolution
      
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
        - node.role == manager
      labels:
      - traefik.enable=1
      - traefik.http.routers.evolution.rule=Host(\`$url_evolution\`) ## Url da aplicação
      - traefik.http.routers.evolution.entrypoints=websecure
      - traefik.http.routers.evolution.priority=1
      - traefik.http.routers.evolution.tls.certresolver=letsencryptresolver
      - traefik.http.routers.evolution.service=evolution
      - traefik.http.services.evolution.loadbalancer.server.port=8080
      - traefik.http.services.evolution.loadbalancer.passHostHeader=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  evolution_instances:
    external: true
    name: evolution_instances

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack da Evolution API"
fi
STACK_NAME="evolution_v2"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c evolution_v2.yaml evolution > /dev/null 2>&1

#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack da Evolution API"
#fi

sleep 10

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[5/5]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_evolution para verificar se o serviço esta online
wait_stack "evolution"

cd dados_vps

cat > dados_evolution_v2 <<EOL
[ EVOLUTION API ]

Manager Evolution: https://$url_evolution/manager

URL: https://$url_evolution

Global API Key: $apikeyglobal
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ EVOLUTION API ]\e[0m"
echo ""

echo -e "\e[97mLink do Manager:\e[33m https://$url_evolution/manager\e[0m"
echo ""

echo -e "\e[97mAPI URL:\e[33m https://$url_evolution\e[0m"
echo ""

echo -e "\e[97mGLOBAL API KEY:\e[33m $apikeyglobal\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███╗   ███╗██╗███╗   ██╗██╗ ██████╗ 
## ████╗ ████║██║████╗  ██║██║██╔═══██╗
## ██╔████╔██║██║██╔██╗ ██║██║██║   ██║
## ██║╚██╔╝██║██║██║╚██╗██║██║██║   ██║
## ██║ ╚═╝ ██║██║██║ ╚████║██║╚██████╔╝
## ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝╚═╝ ╚═════╝ 

ferramenta_minio() {
## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_minio

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do
    
    ##Pergunta o Dominio do Minio
    echo -e "\e[97mPasso$amarelo 1/4\e[0m"
    echo -en "\e[33mDigite o Dominio para o MinIO (ex: minio.sinergialucrativa.com): \e[0m" && read -r url_minio
    echo ""
    
    ##Pergunta o Dominio para o S3 do Minio
    echo -e "\e[97mPasso$amarelo 2/4\e[0m"
    echo -en "\e[33mDigite o Dominio para o Minio S3 (ex: s3.sinergialucrativa.com): \e[0m" && read -r url_s3
    echo ""
    
    ##Pergunta o Usuario para o Minio
    echo -e "\e[97mPasso$amarelo 3/4\e[0m"
    echo -e "$amarelo--> Evite os caracteres especiais: \!#$ e/ou espaço"
    echo -en "\e[33mDigite um usuario para o MinIO (ex: andromeda): \e[0m" && read -r user_minio
    echo ""
    
    ##Pergunta a Senha para o Minio
    echo -e "\e[97mPasso$amarelo 4/4\e[0m"
    echo -e "$amarelo--> Minimo 8 caracteres. Use Letras MAIUSCULAS e minusculas, numero e um caractere especial @ ou _"
    echo -e "$amarelo--> Evite os caracteres especiais: \!#$"
    echo -en "\e[33mDigite uma senha para o MinIO (ex: @Senha123_): \e[0m" && read -r senha_minio
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_minio
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do Minio 
    echo -e "\e[33mDominio do MinIO:\e[97m $url_minio\e[0m"
    echo ""
    
    ## Informação sobre URL para o S# do Minio 
    echo -e "\e[33mDominio do S3:\e[97m $url_s3\e[0m"
    echo ""
    
    ## Informação sobre Usuario do Minio
    echo -e "\e[33mUsuario do MinIO:\e[97m $user_minio\e[0m"
    echo ""    
    
    ## Informação sobre Senha do Minio
    echo -e "\e[33mSenha do MinIO:\e[97m $senha_minio\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_minio

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO MINIO \e[33m[1/3]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO MINIO \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > minio.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  minio:
    image: quay.io/minio/minio:RELEASE.2024-01-13T07-53-03Z-cpuv1 ## Versão do Minio
    command: server /data --console-address ":9001"

    volumes:
      - minio_data:/data

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados de acesso
      - MINIO_ROOT_USER=$user_minio
      - MINIO_ROOT_PASSWORD=$senha_minio

      ## Url do minio
      - MINIO_BROWSER_REDIRECT_URL=https://$url_minio ## Url do minio
      - MINIO_SERVER_URL=https://$url_s3 ## Url do s3 | Comente esta linha caso tiver erro ao fazer login

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.minio_public.rule=Host(\`$url_s3\`) ## Url do s3
        - traefik.http.routers.minio_public.entrypoints=websecure
        - traefik.http.routers.minio_public.tls.certresolver=letsencryptresolver
        - traefik.http.services.minio_public.loadbalancer.server.port=9000
        - traefik.http.services.minio_public.loadbalancer.passHostHeader=true
        - traefik.http.routers.minio_public.service=minio_public
        - traefik.http.routers.minio_console.rule=Host(\`$url_minio\`) ## Url do minio
        - traefik.http.routers.minio_console.entrypoints=websecure
        - traefik.http.routers.minio_console.tls.certresolver=letsencryptresolver
        - traefik.http.services.minio_console.loadbalancer.server.port=9001
        - traefik.http.services.minio_console.loadbalancer.passHostHeader=true
        - traefik.http.routers.minio_console.service=minio_console

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  minio_data:
    external: true
    name: minio_data

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do MinIO"
fi
sleep 1
STACK_NAME="minio"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c minio.yaml minio

#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do Minio"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_minio para verificar se o serviço esta online
wait_stack "minio"

cd dados_vps

cat > dados_minio <<EOL
[ MINIO ]

Dominio do Minio: https://$url_minio

Dominio do S3: https://$url_s3

Usuario: $user_minio

Senha: $senha_minio

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ MinIO ]\e[0m"
echo ""

echo -e "\e[33mDominio MinIO:\e[97m https://$url_minio\e[0m"
echo ""

echo -e "\e[33mDominio S3:\e[97m https://$url_s3\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m $user_minio\e[0m"
echo ""  

echo -e "\e[33mSenha:\e[97m $senha_minio\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}


## ████████╗██╗   ██╗██████╗ ███████╗██████╗  ██████╗ ████████╗
## ╚══██╔══╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗██╔═══██╗╚══██╔══╝
##    ██║    ╚████╔╝ ██████╔╝█████╗  ██████╔╝██║   ██║   ██║   
##    ██║     ╚██╔╝  ██╔═══╝ ██╔══╝  ██╔══██╗██║   ██║   ██║   
##    ██║      ██║   ██║     ███████╗██████╔╝╚██████╔╝   ██║   
##    ╚═╝      ╚═╝   ╚═╝     ╚══════╝╚═════╝  ╚═════╝    ╚═╝   

ferramenta_typebot() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_typebot

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio do Builder
    echo -e "\e[97mPasso$amarelo 1/10\e[0m"
    echo -en "\e[33mDigite o Dominio para o Builder do Typebot (ex: typebot.sinergialucrativa.com): \e[0m" && read -r url_typebot
    echo ""

    ##Pergunta o Dominio do Viewer
    echo -e "\e[97mPasso$amarelo 2/10\e[0m"
    echo -en "\e[33mDigite o Dominio para o Viewer do Typebot (ex: bot.sinergialucrativa.com): \e[0m" && read -r url_viewer
    echo ""

    ##Pergunta a versão da ferramenta
    echo -e "\e[97mPasso$amarelo 3/10\e[0m"
    echo -en "\e[33mDigite a versão que deseja do Typebot (ex: 2.21.3 ou latest): \e[0m" && read -r versao_typebot
    echo ""

    ##Pergunta o Email SMTP
    echo -e "\e[97mPasso$amarelo 4/10\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_typebot
    echo ""

    ##Pergunta o usuário do Email SMTP
    echo -e "\e[97mPasso$amarelo 5/10\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuário para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r usuario_email_typebot
    echo ""
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 6/10\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_email_typebot
    echo ""

    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 7/10\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r smtp_email_typebot
    echo ""

    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 8/10\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_typebot
    echo ""

    ## Verifica se a porta é 465, se sim deixa o ssl true, se não, deixa false 
    if [ "$porta_smtp_typebot" -eq 465 ]; then
    smtp_secure_typebot=true
    else
    smtp_secure_typebot=false
    fi

    ## Pergunta qual é o Access Key do minio
    echo -e "\e[97mPasso$amarelo 9/10\e[0m"
    echo -en "\e[33mAccess Key Minio: \e[0m" && read -r S3_ACCESS_KEY
    echo ""

    ## Pergunta qual é a Secret Key do minio
    echo -e "\e[97mPasso$amarelo 10/10\e[0m"
    echo -en "\e[33mSecret Key Minio: \e[0m" && read -r S3_SECRET_KEY
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_typebot
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do Builder
    echo -e "\e[33mDominio do Typebot Builder:\e[97m $url_typebot\e[0m"
    echo ""

    ## Informação sobre URL do Viewer
    echo -e "\e[33mDominio do Typebot Viewer:\e[97m $url_viewer\e[0m"
    echo ""

    ## Informação sobre a versão da ferramenta
    echo -e "\e[33mVersão do Typebot:\e[97m $versao_typebot\e[0m"
    echo ""    

    ## Informação sobre Email
    echo -e "\e[33mEmail do SMTP:\e[97m $email_typebot\e[0m"
    echo ""

    ## Informação sobre Email
    echo -e "\e[33mUsuário do SMTP:\e[97m $usuario_email_typebot\e[0m"
    echo ""

    ## Informação sobre Senha do Email
    echo -e "\e[33mSenha do Email:\e[97m $senha_email_typebot\e[0m"
    echo ""

    ## Informação sobre Host SMTP
    echo -e "\e[33mHost SMTP do Email:\e[97m $smtp_email_typebot\e[0m"
    echo ""

    ## Informação sobre Porta SMTP
    echo -e "\e[33mPorta SMTP do Email:\e[97m $porta_smtp_typebot\e[0m"
    echo ""

    ## Informação sobre Secure SMTP
    echo -e "\e[33mSecure SMTP do Email:\e[97m $smtp_secure_typebot\e[0m"
    echo ""

    ## Informação sobre Access Key
    echo -e "\e[33mAccess Key Minio:\e[97m $S3_ACCESS_KEY\e[0m"
    echo ""

    ## Informação sobre Secret Key
    echo -e "\e[33mSecret Key Minio:\e[97m $S3_SECRET_KEY\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_typebot

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done


## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO TYPEBOT \e[33m[1/5]\e[0m"
echo ""
sleep 1

## Nada nada nada.. só para aparecer a mensagem de passo..

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/5]\e[0m"
echo ""
sleep 1

## Aqui vamos fazer uma verificação se já existe Postgres e redis instalado
## Se tiver ele vai criar um banco de dados no postgres ou perguntar se deseja apagar o que já existe e criar outro

## Verifica container postgres e cria banco no postgres
verificar_container_postgres
if [ $? -eq 0 ]; then
        pegar_senha_postgres > /dev/null 2>&1
    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "typebot"

## Mensagem de Passo
echo -e "\e[97m• PEGANDO DADOS DO MINIO \e[33m[3/5]\e[0m"
echo ""
sleep 1

pegar_senha_minio
if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Pegando Senha do MinIO"
else
    echo "1/2 - [ OFF ] - Pegando Senha do MinIO"
    echo "Não foi possivel pegar a senha do minio"
fi
pegar_link_s3
if [ $? -eq 0 ]; then
    echo "2/2 - [ OK ] - Pegando URL do S3"
else
    echo "2/2 - [ OFF ] - Pegando URL do S3"
    echo "Não foi possivel pegar o link do S3"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO TYPEBOT \e[33m[4/5]\e[0m"
echo ""
sleep 1

## Criando key Aleatória
key_typebot=$(openssl rand -hex 16)

## Criando a stack
cat > typebot.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  typebot_builder:
    image: baptistearno/typebot-builder:$versao_typebot ## Versão do Typebot

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados do Postgres
      - DATABASE_URL=postgresql://postgres:$senha_postgres@postgres:5432/typebot

      ## Encryption key
      - ENCRYPTION_SECRET=$key_typebot

      ## Plano Padrão (das novas contas)
      - DEFAULT_WORKSPACE_PLAN=UNLIMITED

      ## Urls do typebot
      - NEXTAUTH_URL=https://$url_typebot ## URL Builder
      - NEXT_PUBLIC_VIEWER_URL=https://$url_viewer ## URL Viewer
      - NEXTAUTH_URL_INTERNAL=http://localhost:3000

      ## Desativer/ativar novos cadastros
      - DISABLE_SIGNUP=false

      ## Dados do SMTP
      - ADMIN_EMAIL=$email_typebot ## Email SMTP
      - NEXT_PUBLIC_SMTP_FROM='Suporte' <$email_typebot>
      - SMTP_AUTH_DISABLED=false
      - SMTP_USERNAME=$usuario_email_typebot
      - SMTP_PASSWORD=$senha_email_typebot
      - SMTP_HOST=$smtp_email_typebot
      - SMTP_PORT=$porta_smtp_typebot
      - SMTP_SECURE=$smtp_secure_typebot

      ## Dados Google Cloud
      #- GOOGLE_CLIENT_ID=
      #- GOOGLE_CLIENT_SECRET=
      #- NEXT_PUBLIC_GOOGLE_API_KEY=

      ## Dados do Minio/S3
      - S3_ACCESS_KEY=$S3_ACCESS_KEY
      - S3_SECRET_KEY=$S3_SECRET_KEY
      - S3_BUCKET=typebot
      - S3_ENDPOINT=$url_s3

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - io.portainer.accesscontrol.users=admin
        - traefik.enable=true
        - traefik.http.routers.typebot_builder.rule=Host(\`$url_typebot\`)
        - traefik.http.routers.typebot_builder.entrypoints=websecure
        - traefik.http.routers.typebot_builder.tls.certresolver=letsencryptresolver
        - traefik.http.services.typebot_builder.loadbalancer.server.port=3000
        - traefik.http.services.typebot_builder.loadbalancer.passHostHeader=true
        - traefik.http.routers.typebot_builder.service=typebot_builder

## --------------------------- ANDROMEDA --------------------------- ##

  typebot_viewer:
    image: baptistearno/typebot-viewer:$versao_typebot ## Versão do Typebot

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados do Postgres
      - DATABASE_URL=postgresql://postgres:$senha_postgres@postgres:5432/typebot

      ## Encryption key
      - ENCRYPTION_SECRET=$key_typebot

      ## Plano Padrão (das novas contas)
      - DEFAULT_WORKSPACE_PLAN=UNLIMITED

      ## Urls do typebot
      - NEXTAUTH_URL=https://$url_typebot ## URL Builder
      - NEXT_PUBLIC_VIEWER_URL=https://$url_viewer ## URL Viewer
      - NEXTAUTH_URL_INTERNAL=http://localhost:3000

      ## Desativer/ativar novos cadastros
      - DISABLE_SIGNUP=false

      ## Dados do SMTP
      - ADMIN_EMAIL=$email_typebot ## Email SMTP
      - NEXT_PUBLIC_SMTP_FROM='Suporte' <$email_typebot>
      - SMTP_AUTH_DISABLED=false
      - SMTP_USERNAME=$usuario_email_typebot
      - SMTP_PASSWORD=$senha_email_typebot
      - SMTP_HOST=$smtp_email_typebot
      - SMTP_PORT=$porta_smtp_typebot
      - SMTP_SECURE=$smtp_secure_typebot

      ## Dados Google Cloud
      #- GOOGLE_CLIENT_ID=
      #- GOOGLE_CLIENT_SECRET=
      #- NEXT_PUBLIC_GOOGLE_API_KEY=

      ## Dados do Minio/S3
      - S3_ACCESS_KEY=$S3_ACCESS_KEY
      - S3_SECRET_KEY=$S3_SECRET_KEY
      - S3_BUCKET=typebot
      - S3_ENDPOINT=$url_s3

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - io.portainer.accesscontrol.users=admin
        - traefik.enable=true
        - traefik.http.routers.typebot_viewer.rule=Host(\`$url_viewer\`)
        - traefik.http.routers.typebot_viewer.entrypoints=websecure
        - traefik.http.routers.typebot_viewer.tls.certresolver=letsencryptresolver
        - traefik.http.services.typebot_viewer.loadbalancer.server.port=3000
        - traefik.http.services.typebot_viewer.loadbalancer.passHostHeader=true
        - traefik.http.routers.typebot_viewer.service=typebot_viewer

## --------------------------- ANDROMEDA --------------------------- ##

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Typebot"
fi
STACK_NAME="typebot"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c typebot.yaml typebot > /dev/null 2>&1

#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do Typebot"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[5/5]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_typebot para verificar se o serviço esta online
wait_stack "typebot"

cd dados_vps

cat > dados_typebot <<EOL
[ TYPEBOT ]

Dominio do Typebot: https://$url_typebot

Email: Qualquer um (cada email é um workspace)

Senha: Não tem senha, chega no seu email o link magico de acesso
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ TYPEBOT ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_typebot\e[0m"
echo ""

echo -e "\e[33mEmail:\e[97m Qualquer um (não precisa ser o mesmo que usou na instalação)\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Não tem senha, chega no seu email um link magico de acesso.\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███╗   ██╗ █████╗ ███╗   ██╗
## ████╗  ██║██╔══██╗████╗  ██║
## ██╔██╗ ██║╚█████╔╝██╔██╗ ██║
## ██║╚██╗██║██╔══██╗██║╚██╗██║
## ██║ ╚████║╚█████╔╝██║ ╚████║
## ╚═╝  ╚═══╝ ╚════╝ ╚═╝  ╚═══╝

ferramenta_n8n() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_n8n

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio do N8N
    echo -e "\e[97mPasso$amarelo 1/7\e[0m"
    echo -en "\e[33mDigite o dominio para o N8N (ex: n8n.sinergialucrativa.com): \e[0m" && read -r url_editorn8n
    echo ""
    
    ##Pergunta o Dominio do Webhook
    echo -e "\e[97mPasso$amarelo 2/7\e[0m"
    echo -en "\e[33mDigite o dominio para o Webhook do N8N (ex: webhook.sinergialucrativa.com): \e[0m" && read -r url_webhookn8n
    echo ""

    ##Pergunta o Email SMTP
    echo -e "\e[97mPasso$amarelo 3/7\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_smtp_n8n
    echo ""

    ##Pergunta o usuário do Email SMTP
    echo -e "\e[97mPasso$amarelo 4/7\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuário para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r usuario_smtp_n8n
    echo ""
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 5/7\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_smtp_n8n
    echo ""

    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 6/7\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r host_smtp_n8n
    echo ""

    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 7/7\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_n8n
    echo ""

    ## Verifica se a porta é 465, se sim deixa o ssl true, se não, deixa false 
    if [ "$porta_smtp_typebot" -eq 465 ]; then
    smtp_secure_smtp_n8n=true
    else
    smtp_secure_smtp_n8n=false
    fi
        
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_n8n
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do N8N
    echo -e "\e[33mDominio do N8N:\e[97m $url_editorn8n\e[0m"
    echo ""
    
    ## Informação sobre URL do Webhook
    echo -e "\e[33mDominio para o Webhook:\e[97m $url_webhookn8n\e[0m"
    echo ""

    ## Informação sobre Email
    echo -e "\e[33mEmail do SMTP:\e[97m $email_smtp_n8n\e[0m"
    echo ""

    ## Informação sobre Email
    echo -e "\e[33mUsuário do SMTP:\e[97m $usuario_smtp_n8n\e[0m"
    echo ""

    ## Informação sobre Senha do Email
    echo -e "\e[33mSenha do Email:\e[97m $senha_smtp_n8n\e[0m"
    echo ""

    ## Informação sobre Host SMTP
    echo -e "\e[33mHost SMTP do Email:\e[97m $host_smtp_n8n\e[0m"
    echo ""

    ## Informação sobre Porta SMTP
    echo -e "\e[33mPorta SMTP do Email:\e[97m $porta_smtp_n8n\e[0m"
    echo ""

    ## Informação sobre Secure SMTP
    echo -e "\e[33mSecure SMTP do Email:\e[97m $smtp_secure_smtp_n8n\e[0m"
    echo ""
    
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_n8n

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO N8N \e[33m[1/4]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES E REDIS \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Verifica se tem postgres, se sim pega a senha e cria um banco nele, se não instala, pega a senha e cria o banco
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1
    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "n8n_queue"

## Verifica se tem redis, se tiver, continua, se não tiver instala
verificar_container_redis
    if [ $? -eq 0 ]; then
        sleep 1
    else
        ferramenta_redis > /dev/null 2>&1
    fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO N8N \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando key Aleatória
encryption_key=$(openssl rand -hex 16)

## Criando a stack
cat > n8n.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  n8n_editor:
    image: n8nio/n8n:latest ## Versão do N8N
    command: start

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados do postgres
      - DB_TYPE=postgresdb
      - DB_POSTGRESDB_DATABASE=n8n_queue
      - DB_POSTGRESDB_HOST=postgres
      - DB_POSTGRESDB_PORT=5432
      - DB_POSTGRESDB_USER=postgres
      - DB_POSTGRESDB_PASSWORD=$senha_postgres

      ## Encryption Key
      - N8N_ENCRYPTION_KEY=$encryption_key

      ## Url do N8N
      - N8N_HOST=$url_editorn8n
      - N8N_EDITOR_BASE_URL=https://$url_editorn8n/
      - WEBHOOK_URL=https://$url_webhookn8n/
      - N8N_PROTOCOL=https

      ## Modo do Node
      - NODE_ENV=production

      ## Modo de execução (deletar caso deseje em modo regular)
      - EXECUTIONS_MODE=queue

      ## Community Nodes
      - N8N_REINSTALL_MISSING_PACKAGES=true
      - N8N_COMMUNITY_PACKAGES_ENABLED=true
      - N8N_NODE_PATH=/home/note/.n8n/nodes

      ## Dados SMTP
      - N8N_SMTP_SENDER=$email_smtp_n8n
      - N8N_SMTP_USER=$usuario_smtp_n8n
      - N8N_SMTP_PASS=$senha_smtp_n8n
      - N8N_SMTP_HOST=$host_smtp_n8n
      - N8N_SMTP_PORT=$porta_smtp_n8n
      - N8N_SMTP_SSL=$smtp_secure_smtp_n8n

      ## Dados do Redis
      - QUEUE_BULL_REDIS_HOST=redis
      - QUEUE_BULL_REDIS_PORT=6379
      - QUEUE_BULL_REDIS_DB=2
      - NODE_FUNCTION_ALLOW_EXTERNAL=moment,lodash,moment-with-locales
      - EXECUTIONS_DATA_PRUNE=true
      - EXECUTIONS_DATA_MAX_AGE=336

      ## Timezone
      - GENERIC_TIMEZONE=America/Sao_Paulo
      - TZ=America/Sao_Paulo

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.n8n_editor.rule=Host(\`$url_editorn8n\`)
        - traefik.http.routers.n8n_editor.entrypoints=websecure
        - traefik.http.routers.n8n_editor.priority=1
        - traefik.http.routers.n8n_editor.tls.certresolver=letsencryptresolver
        - traefik.http.routers.n8n_editor.service=n8n_editor
        - traefik.http.services.n8n_editor.loadbalancer.server.port=5678
        - traefik.http.services.n8n_editor.loadbalancer.passHostHeader=1

## --------------------------- ANDROMEDA --------------------------- ##

  n8n_webhook:
    image: n8nio/n8n:latest ## Versão do N8N
    command: webhook

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:

      ## Dados do postgres
      - DB_TYPE=postgresdb
      - DB_POSTGRESDB_DATABASE=n8n_queue
      - DB_POSTGRESDB_HOST=postgres
      - DB_POSTGRESDB_PORT=5432
      - DB_POSTGRESDB_USER=postgres
      - DB_POSTGRESDB_PASSWORD=$senha_postgres

      ## Encryption Key
      - N8N_ENCRYPTION_KEY=$encryption_key

      ## Url do N8N
      - N8N_HOST=$url_editorn8n
      - N8N_EDITOR_BASE_URL=https://$url_editorn8n/
      - WEBHOOK_URL=https://$url_webhookn8n/
      - N8N_PROTOCOL=https

      ## Modo do Node
      - NODE_ENV=production

      ## Modo de execução (deletar caso deseje em modo regular)
      - EXECUTIONS_MODE=queue

      ## Community Nodes
      - N8N_REINSTALL_MISSING_PACKAGES=true
      - N8N_COMMUNITY_PACKAGES_ENABLED=true
      - N8N_NODE_PATH=/home/note/.n8n/nodes

      ## Dados SMTP
      - N8N_SMTP_SENDER=$email_smtp_n8n
      - N8N_SMTP_USER=$usuario_smtp_n8n
      - N8N_SMTP_PASS=$senha_smtp_n8n
      - N8N_SMTP_HOST=$host_smtp_n8n
      - N8N_SMTP_PORT=$porta_smtp_n8n
      - N8N_SMTP_SSL=$smtp_secure_smtp_n8n

      ## Dados do Redis
      - QUEUE_BULL_REDIS_HOST=redis
      - QUEUE_BULL_REDIS_PORT=6379
      - QUEUE_BULL_REDIS_DB=2
      - NODE_FUNCTION_ALLOW_EXTERNAL=moment,lodash,moment-with-locales
      - EXECUTIONS_DATA_PRUNE=true
      - EXECUTIONS_DATA_MAX_AGE=336

      ## Timezone
      - GENERIC_TIMEZONE=America/Sao_Paulo
      - TZ=America/Sao_Paulo
      
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.n8n_webhook.rule=(Host(\`$url_webhookn8n\`))
        - traefik.http.routers.n8n_webhook.entrypoints=websecure
        - traefik.http.routers.n8n_webhook.priority=1
        - traefik.http.routers.n8n_webhook.tls.certresolver=letsencryptresolver
        - traefik.http.routers.n8n_webhook.service=n8n_webhook
        - traefik.http.services.n8n_webhook.loadbalancer.server.port=5678
        - traefik.http.services.n8n_webhook.loadbalancer.passHostHeader=1

## --------------------------- ANDROMEDA --------------------------- ##

  n8n_worker:
    image: n8nio/n8n:latest ## Versão do N8N
    command: worker --concurrency=10

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:

      ## Dados do postgres
      - DB_TYPE=postgresdb
      - DB_POSTGRESDB_DATABASE=n8n_queue
      - DB_POSTGRESDB_HOST=postgres
      - DB_POSTGRESDB_PORT=5432
      - DB_POSTGRESDB_USER=postgres
      - DB_POSTGRESDB_PASSWORD=$senha_postgres

      ## Encryption Key
      - N8N_ENCRYPTION_KEY=$encryption_key

      ## Url do N8N
      - N8N_HOST=$url_editorn8n
      - N8N_EDITOR_BASE_URL=https://$url_editorn8n/
      - WEBHOOK_URL=https://$url_webhookn8n/
      - N8N_PROTOCOL=https

      ## Modo do Node
      - NODE_ENV=production

      ## Modo de execução (deletar caso deseje em modo regular)
      - EXECUTIONS_MODE=queue

      ## Community Nodes
      - N8N_REINSTALL_MISSING_PACKAGES=true
      - N8N_COMMUNITY_PACKAGES_ENABLED=true
      - N8N_NODE_PATH=/home/note/.n8n/nodes

      ## Dados SMTP
      - N8N_SMTP_SENDER=$email_smtp_n8n
      - N8N_SMTP_USER=$usuario_smtp_n8n
      - N8N_SMTP_PASS=$senha_smtp_n8n
      - N8N_SMTP_HOST=$host_smtp_n8n
      - N8N_SMTP_PORT=$porta_smtp_n8n
      - N8N_SMTP_SSL=$smtp_secure_smtp_n8n

      ## Dados do Redis
      - QUEUE_BULL_REDIS_HOST=redis
      - QUEUE_BULL_REDIS_PORT=6379
      - QUEUE_BULL_REDIS_DB=2
      - NODE_FUNCTION_ALLOW_EXTERNAL=moment,lodash,moment-with-locales
      - EXECUTIONS_DATA_PRUNE=true
      - EXECUTIONS_DATA_MAX_AGE=336

      ## Timezone
      - GENERIC_TIMEZONE=America/Sao_Paulo
      - TZ=America/Sao_Paulo
      
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

networks:
  $nome_rede_interna:
    name: $nome_rede_interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do N8N"
fi
STACK_NAME="n8n"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c n8n.yaml n8n > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do N8N"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_n8n para verificar se o serviço esta online
wait_stack "n8n"

cd dados_vps

cat > dados_n8n <<EOL
[ N8N ]

Dominio do N8N: https://$url_editorn8n

Dominio do N8N: https://$url_webhookn8n

Email: Precisa criar no primeiro acesso do N8N

Senha: Precisa criar no primeiro acesso do N8N

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ N8N ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_editorn8n\e[0m"
echo ""

echo -e "\e[33mEmail:\e[97m Precisa criar no primeiro acesso do N8N\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do N8N\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███████╗██╗      ██████╗ ██╗    ██╗██╗███████╗███████╗
## ██╔════╝██║     ██╔═══██╗██║    ██║██║██╔════╝██╔════╝
## █████╗  ██║     ██║   ██║██║ █╗ ██║██║███████╗█████╗  
## ██╔══╝  ██║     ██║   ██║██║███╗██║██║╚════██║██╔══╝  
## ██║     ███████╗╚██████╔╝╚███╔███╔╝██║███████║███████╗
## ╚═╝     ╚══════╝ ╚═════╝  ╚══╝╚══╝ ╚═╝╚══════╝╚══════╝

ferramenta_flowise() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_flowise

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/3\e[0m"
    echo -en "\e[33mDigite o dominio para o Flowise (ex: flowise.sinergialucrativa.com): \e[0m" && read -r url_flowise
    echo ""
    
    ##Pergunta o Usuario para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/3\e[0m"
    echo -e "$amarelo--> Minimo 5 caracteres. Evite os caracteres especiais: \!#$ e/ou espaço"
    echo -en "\e[33mDigite um usuario para o Flowise (ex: admin): \e[0m" && read -r user_flowise
    echo ""
    
    ##Pergunta a Senha para a ferramenta
    echo -e "\e[97mPasso$amarelo 3/3\e[0m"
    echo -e "$amarelo--> Minimo 8 caracteres. Use Letras MAIUSCULAS e minusculas, numero e um caractere especial @ ou _"
    echo -e "$amarelo--> Evite os caracteres especiais: \!#$"
    echo -en "\e[33mDigite uma senha para o usuario (ex: @Senha123_): \e[0m" && read -r pass_flowise
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_flowise
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do Flowise
    echo -e "\e[33mDominio do Flowise\e[97m $url_flowise\e[0m"
    echo ""
    
    ## Informação sobre Usuario do Flowise
    echo -e "\e[33mUsuario:\e[97m $user_flowise\e[0m"
    echo ""
    
    ## Informação sobre a Senha do Usuario do Flowise
    echo -e "\e[33mSenha:\e[97m $pass_flowise\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_flowise

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO FLOWISE \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Já sabe né ksk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1

    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "flowise"

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO FLOWISE \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando uma Encryption Key Aleatória
encryption_key=$(openssl rand -hex 16)

## Criando a stack
cat > flowise.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  flowise:
    image: flowiseai/flowise:latest ## Versão do Flowise
    #command: flowise start

    volumes:
     - flowise_data:/root/.flowise

    networks:
     - $nome_rede_interna ## Nome da rede interna

    environment:
     ## Dados de acesso
     - FLOWISE_USERNAME=$user_flowise
     - FLOWISE_PASSWORD=$pass_flowise

     ## Dados do Postgres
     - DATABASE_TYPE=postgres
     - DATABASE_HOST=postgres
     - DATABASE_PORT=5432
     - DATABASE_USER=postgres
     - DATABASE_PASSWORD=$senha_postgres
     - DATABASE_NAME=flowise

     ## Encryption Key
     - FLOWISE_SECRETKEY_OVERWRITE=$encryption_key

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.flowise.rule=Host(\`$url_flowise\`) ## Url da aplicação
        - traefik.http.services.flowise.loadBalancer.server.port=3000
        - traefik.http.routers.flowise.service=flowise
        - traefik.http.routers.flowise.entrypoints=websecure
        - traefik.http.routers.flowise.tls.certresolver=letsencryptresolver

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  flowise_data:
    external: true

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Flowise"
fi
STACK_NAME="flowise"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c flowise.yaml flowise  > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Flowise"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_flowise para verificar se o serviço esta online
wait_stack "flowise"

cd dados_vps

cat > dados_flowise <<EOL
[ FLOWISE ]

Dominio do Flowise: https://$url_flowise

Usuario: $user_flowise

Senha: $pass_flowise
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ Flowise ]\e[0m"
echo ""
echo -e "\e[33mDominio:\e[97m https://$url_flowise\e[0m"
echo ""
echo -e "\e[33mUsuario:\e[97m $user_flowise\e[0m"
echo ""
echo -e "\e[33mSenha:\e[97m $pass_flowise\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██████╗  ██████╗      █████╗ ██████╗ ███╗   ███╗██╗███╗   ██╗    ██╗  ██╗
## ██╔══██╗██╔════╝     ██╔══██╗██╔══██╗████╗ ████║██║████╗  ██║    ██║  ██║
## ██████╔╝██║  ███╗    ███████║██║  ██║██╔████╔██║██║██╔██╗ ██║    ███████║
## ██╔═══╝ ██║   ██║    ██╔══██║██║  ██║██║╚██╔╝██║██║██║╚██╗██║    ╚════██║
## ██║     ╚██████╔╝    ██║  ██║██████╔╝██║ ╚═╝ ██║██║██║ ╚████║         ██║
## ╚═╝      ╚═════╝     ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝         ╚═╝

ferramenta_pgAdmin_4() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_pgAdmin_4

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/3\e[0m"
    echo -en "\e[33mDigite o dominio para o PgAdmin 4 (ex: pgadmin.sinergialucrativa.com): \e[0m" && read -r url_PgAdmin_4
    echo ""
    
    ##Pergunta o Email para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/3\e[0m"
    echo -en "\e[33mDigite um email para o PgAdmin 4 (ex: suporte@sinergialucrativa.com): \e[0m" && read -r user_PgAdmin_4
    echo ""
    
    ##Pergunta a Senha para a ferramenta
    echo -e "\e[97mPasso$amarelo 3/3\e[0m"
    echo -e "$amarelo--> Minimo 8 caracteres. Use Letras MAIUSCULAS e minusculas, numero e um caractere especial @ ou _"
    echo -e "$amarelo--> Evite os caracteres especiais: \!#$"
    echo -en "\e[33mDigite uma senha para o usuario (ex: @Senha123_): \e[0m" && read -r pass_PgAdmin_4
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_pgAdmin_4
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do PgAdmin
    echo -e "\e[33mDominio do PgAdmin 4\e[97m $url_PgAdmin_4\e[0m"
    echo ""
    
    ## Informação sobre email do PgAdmin
    echo -e "\e[33mEmail:\e[97m $user_PgAdmin_4\e[0m"
    echo ""
    
    ## Informação sobre a senha do PgAdmin
    echo -e "\e[33mSenha:\e[97m $pass_PgAdmin_4\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_minio

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO PGADMIN4 \e[33m[1/3]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO PGADMIN4 \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > pgadmin.yaml <<EOL
version: "3.7"
services:  

## --------------------------- ANDROMEDA --------------------------- ##

  pgadmin:
    image: dpage/pgadmin4:latest ## Versão do PgAdmin 4

    volumes:
      - pgadmin_data:/var/lib/pgadmin

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados de Acesso
      - PGADMIN_DEFAULT_EMAIL=$user_PgAdmin_4
      - PGADMIN_DEFAULT_PASSWORD=$pass_PgAdmin_4

      ## Dados de SMTP (testando)
      #- MAIL_USERNAME=
      #- MAIL_PASSWORD=
      #- MAIL_SERVER=
      #- MAIL_PORT=587
      #- MAIL_USE_SSL=False
      #- MAIL_USE_TLS=False
      #- MAIL_DEBUG=False

    deploy:
      mode: replicated
      replicas: 1
      placement:
          constraints:
            - node.role == manager
      resources:
          limits:
            cpus: '0.4'
            memory: 256M
      labels:
          - traefik.enable=true
          - traefik.http.routers.pgadmin.rule=Host(\`$url_PgAdmin_4\`) ## Url da Ferramenta
          - traefik.http.services.pgadmin.loadbalancer.server.port=80
          - traefik.http.routers.pgadmin.service=pgadmin
          - traefik.http.routers.pgadmin.tls.certresolver=letsencryptresolver
          - traefik.http.routers.pgadmin.entrypoints=websecure
          - traefik.http.routers.pgadmin.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true

volumes:
  pgadmin_data:
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do PgAdmin 4"
fi
STACK_NAME="pgadmin"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c pgadmin.yaml pgadmin  > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do PgAdmin 4"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_pgadmin_4 para verificar se o serviço esta online
wait_stack "pgadmin"

cd dados_vps

cat > dados_pgadmin <<EOL
[ PgAdmin 4 ]

Dominio do pgadmin: https://$url_PgAdmin_4

Usuario: $user_PgAdmin_4

Senha: $pass_PgAdmin_4
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ PgAdmin 4 ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_PgAdmin_4\e[0m"
echo ""

echo -e "\e[33mEmail:\e[97m $user_PgAdmin_4\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m $pass_PgAdmin_4\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███╗   ██╗ ██████╗  ██████╗ ██████╗ ██████╗  █████╗ ███████╗███████╗
## ████╗  ██║██╔═══██╗██╔════╝██╔═══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝
## ██╔██╗ ██║██║   ██║██║     ██║   ██║██████╔╝███████║███████╗█████╗  
## ██║╚██╗██║██║   ██║██║     ██║   ██║██╔══██╗██╔══██║╚════██║██╔══╝  
## ██║ ╚████║╚██████╔╝╚██████╗╚██████╔╝██████╔╝██║  ██║███████║███████╗
## ╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝

ferramenta_nocobase() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_nocobase
## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/4\e[0m"
    echo -en "\e[33mDigite o dominio para o Nocobase (ex: nocobase.sinergialucrativa.com): \e[0m" && read -r url_nocobase
    echo ""
    
    ##Pergunta o Email para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/4\e[0m"
    echo -en "\e[33mDigite um email para o Nocobase (ex: suporte@sinergialucrativa.com): \e[0m" && read -r mail_nocobase
    echo ""
    
    ##Pergunta um Usuario para a ferramenta
    echo -e "\e[97mPasso$amarelo 3/4\e[0m"
    echo -en "\e[33mDigite um nome de usuario para o Nocobase (ex: AndromedaNet): \e[0m" && read -r user_nocobase
    echo ""
    
    ##Pergunta a Senha para a ferramenta
    echo -e "\e[97mPasso$amarelo 4/4\e[0m"
    echo -e "$amarelo--> Minimo 8 caracteres. Use Letras MAIUSCULAS e minusculas, numero e um caractere especial @ ou _"
    echo -e "$amarelo--> Evite os caracteres especiais: \!#$"
    echo -en "\e[33mDigite uma senha para o usuario (ex: @Senha123_): \e[0m" && read -r pass_nocobase
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_nocobase
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do Nocobase
    echo -e "\e[33mDominio do Nocobase:\e[97m $url_nocobase\e[0m"
    echo ""
    
    ## Informação sobre Email do Nocobase
    echo -e "\e[33mEmail:\e[97m $mail_nocobase\e[0m"
    echo ""
    
    ## Informação sobre Usuario do Nocobase
    echo -e "\e[33mUsuario:\e[97m $user_nocobase\e[0m"
    echo ""
    
    ## Informação sobre Senha do Nocobase
    echo -e "\e[33mSenha:\e[97m $pass_nocobase\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_minio

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO NOCOBASE \e[33m[1/4]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1
        criar_banco_postgres_da_stack "nocobase"

    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
        criar_banco_postgres_da_stack "nocobase"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO NOCOBASE \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando uma Encryption Key Aleatória
nocobase_key=$(openssl rand -hex 16)

## Criando a stack
cat > nocobase.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  nocobase:
    image: nocobase/nocobase:0.19.0-alpha.7 ## Versão do Nocobase

    volumes:
      - nocobase_storage:/app/nocobase/storage

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Url da ferramenta
      - API_BASE_URL=$url_nocobase
      - PROXY_TARGET_URL=$url_nocobase

      ## Dados de acesso
      - INIT_ROOT_EMAIL=$mail_nocobase
      - INIT_ROOT_PASSWORD=$pass_nocobase
      - INIT_ROOT_NICKNAME=$user_nocobase
      - INIT_ROOT_USERNAME=$user_nocobase

      ## Dados do Postgres
      - DB_DIALECT=postgres
      - DB_HOST=postgres
      - DB_DATABASE=nocobase
      - DB_USER=postgres
      - DB_PASSWORD=$senha_postgres

      ## Paths de URL
      - LOCAL_STORAGE_BASE_URL=/storage/uploads
      - API_BASE_PATH=/api/

      ## Encryption Key
      - APP_KEY=$nocobase_key

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.nocobase.rule=Host(\`$url_nocobase\`) ## Url da aplicação
        - traefik.http.services.nocobase.loadbalancer.server.port=80
        - traefik.http.routers.nocobase.service=nocobase
        - traefik.http.routers.nocobase.tls.certresolver=letsencryptresolver
        - traefik.http.routers.nocobase.entrypoints=websecure
        - traefik.http.routers.nocobase.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  nocobase_storage:
    external: true

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Nocobase"
fi
STACK_NAME="nocobase"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c nocobase.yaml nocobase > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Nocobase"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "nocobase" para verificar se o serviço esta online
wait_stack "nocobase"

cd dados_vps

cat > dados_nocobase<<EOL
[ NOCOBASE ]

Dominio do Nocobase: https://$url_nocobase

Email: $mail_nocobase

Usuario: $user_nocobase

Senha: $pass_nocobase
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ Nocobase ]\e[0m"
echo ""
echo -e "\e[33mDominio:\e[97m https://$url_nocobase\e[0m"
echo ""
echo -e "\e[33mEmail:\e[97m $mail_nocobase\e[0m"
echo ""
echo -e "\e[33mUsuario:\e[97m $user_nocobase\e[0m"
echo ""
echo -e "\e[33mSenha:\e[97m $pass_nocobase\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██████╗  ██████╗ ████████╗██████╗ ██████╗ ███████╗███████╗███████╗
## ██╔══██╗██╔═══██╗╚══██╔══╝██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝
## ██████╔╝██║   ██║   ██║   ██████╔╝██████╔╝█████╗  ███████╗███████╗
## ██╔══██╗██║   ██║   ██║   ██╔═══╝ ██╔══██╗██╔══╝  ╚════██║╚════██║
## ██████╔╝╚██████╔╝   ██║   ██║     ██║  ██║███████╗███████║███████║
## ╚═════╝  ╚═════╝    ╚═╝   ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝
                                                                  
ferramenta_botpress() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_botpress

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o Botpress (ex: botpress.sinergialucrativa.com): \e[0m" && read -r url_botpress
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_botpress
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do Botpress
    echo -e "\e[33mDominio do Botpress:\e[97m $url_botpress\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_botpress

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO BOTPRESS \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES E REDIS \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1
    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "botpress"

verificar_container_redis
    if [ $? -eq 0 ]; then
        sleep 1
    else
        ferramenta_redis  > /dev/null 2>&1
    fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO BOTPRESS \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > botpress.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  botpress:
    image: botpress/server:latest

    volumes:
      - botpress_data:/botpress/data

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Url Botpress
      - EXTERNAL_URL=https://$url_botpress

      ## Modo
      - BP_PRODUCTION=true

      ## Dados Postgres
      - DATABASE_URL=postgresql://postgres:$senha_postgres@postgres:5432/botpress

      ## Dados Redis
      - REDIS_URL=redis://redis:6379

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.botpress.rule=Host(\`$url_botpress\`)
        - traefik.http.services.botpress.loadbalancer.server.port=3000
        - traefik.http.routers.botpress.service=botpress
        - traefik.http.routers.botpress.tls.certresolver=letsencryptresolver
        - traefik.http.routers.botpress.entrypoints=websecure
        - traefik.http.routers.botpress.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  botpress_data:
    external: true
    name: botpress_data

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Botpress"
fi
STACK_NAME="botpress"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c botpress.yaml botpress > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Botpress"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_botpress para verificar se o serviço esta online
wait_stack "botpress"

cd dados_vps

cat > dados_botpress <<EOL
[ BOTPRESS ]

Dominio do Botpress: https://$url_botpress

Usuario: Precisa criar no primeiro acesso do Botpress

Senha: Precisa criar no primeiro acesso do Botpress

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ Botpress ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_botpress\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do Botpress\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do Botpress\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}


## ██╗    ██╗ ██████╗ ██████╗ ██████╗ ██████╗ ██████╗ ███████╗███████╗███████╗
## ██║    ██║██╔═══██╗██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝██╔════╝
## ██║ █╗ ██║██║   ██║██████╔╝██║  ██║██████╔╝██████╔╝█████╗  ███████╗███████╗
## ██║███╗██║██║   ██║██╔══██╗██║  ██║██╔═══╝ ██╔══██╗██╔══╝  ╚════██║╚════██║
## ╚███╔███╔╝╚██████╔╝██║  ██║██████╔╝██║     ██║  ██║███████╗███████║███████║
##  ╚══╝╚══╝  ╚═════╝ ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝  ╚═╝╚══════╝╚══════╝╚══════╝

ferramenta_wordpress() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_wordpress

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/2\e[0m"
    echo -en "\e[33mDigite o dominio para o Wordpress (ex: sinergialucrativa.com ou loja.sinergialucrativa.com): \e[0m" && read -r url_wordpress
    echo ""
    
    ##Pergunta o nome do site
    echo -e "\e[97mPasso$amarelo 2/2\e[0m"
    echo -e "$amarelo--> Use apenas letras minusculas, sem espaço ou caracteres especiais"
    echo -en "\e[33mDigite o nome do Site (ex: lojaorion): \e[0m" && read -r nome_site_wordpress
    echo ""
    
    ##Trata informações
    nome_da_stack_mysql="${nome_site_wordpress}_mysql.yaml"
    nome_da_stack_mysql_subir="${nome_site_wordpress}_mysql"
    
    nome_da_stack_wordpress="${nome_site_wordpress}_wordpress.yaml"
    nome_da_stack_wordpress_subir="${nome_site_wordpress}_wordpress"
    
    nome_do_servico_mysql="${nome_site_wordpress}_mysql"
    nome_da_date_mysql="${nome_site_wordpress}_mysql_data"
    
    nome_do_servico_wordpress="${nome_site_wordpress}_wordpress"
    nome_da_date_wordpress="${nome_site_wordpress}_data"
    nome_da_date_wordpress_php="${nome_site_wordpress}_php"

    STACK_NAME="$nome_da_stack_wordpress_subir"
    

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_wordpress
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do Wordpress
    echo -e "\e[33mDominio do Wordpress:\e[97m $url_wordpress\e[0m"
    echo ""
    
    ## Informação sobre Nome do site
    echo -e "\e[33mNome do Site:\e[97m $nome_site_wordpress\e[0m"
    echo ""
    

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_minio

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO WORDPRESS \e[33m[1/7]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO REDIS \e[33m[2/7]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_redis
    if [ $? -eq 0 ]; then
        sleep 1
    else
        ferramenta_redis > /dev/null 2>&1
    fi

sleep 3

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO MYSQL \e[33m[3/7]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_mysql
    if [ $? -eq 0 ]; then
        pegar_senha_mysql > /dev/null 2>&1
    else
        ferramenta_mysql > /dev/null 2>&1
        pegar_senha_mysql > /dev/null 2>&1
    fi

## Espera 30 segundos
wait_30_sec

## Cria banco de dados do site no mysql
dados
criar_banco_mysql_da_stack "$nome_site_wordpress"

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO WORDPRESS \e[33m[4/7]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > $nome_da_stack_wordpress <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  $nome_do_servico_wordpress:
    image: wordpress:latest ## Versão do Wordpress

    volumes:
      - $nome_da_date_wordpress:/var/www/html
      - $nome_da_date_wordpress_php:/usr/local/etc/php

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados do Mysql
      - WORDPRESS_DB_NAME=$nome_site_wordpress
      - WORDPRESS_DB_HOST=mysql
      - WORDPRESS_DB_PORT=3306
      - WORDPRESS_DB_USER=root
      - WORDPRESS_DB_PASSWORD=$senha_mysql

      ## Redis
      - WP_REDIS_HOST=redis
      - WP_REDIS_DATABASE=6

      ## Url do Wordpress
      - VIRTUAL_HOST=$url_wordpress

      ## Localização
      - WP_LOCALE=pt_BR

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.$nome_do_servico_wordpress.rule=Host(\`$url_wordpress\`)
        - traefik.http.routers.$nome_do_servico_wordpress.entrypoints=websecure
        - traefik.http.routers.$nome_do_servico_wordpress.tls.certresolver=letsencryptresolver
        - traefik.http.routers.$nome_do_servico_wordpress.service=$nome_do_servico_wordpress
        - traefik.http.services.$nome_do_servico_wordpress.loadbalancer.server.port=80
        - traefik.http.services.$nome_do_servico_wordpress.loadbalancer.passHostHeader=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  $nome_da_date_wordpress:
    external: true
    name: $nome_da_date_wordpress
  $nome_da_date_wordpress_php:
    external: true
    name: $nome_da_date_wordpress_php

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Wordpress"
fi
STACK_NAME="$nome_da_stack_wordpress_subir"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c $nome_da_stack_wordpress $nome_da_stack_wordpress_subir #> /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Wordpress"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[5/7]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_wordpress para verificar se o serviço esta online
wait_stack "$nome_do_servico_wordpress"

## Mensagem de Passo
echo -e "\e[97m• EDITANDO PHP.INI \e[33m[6/7]\e[0m"
echo ""
sleep 1

## Editando o PHP.INI
cp /var/lib/docker/volumes/$nome_da_date_wordpress_php/_data/php.ini-production /var/lib/docker/volumes/$nome_da_date_wordpress_php/_data/php.ini
#
caminho_php_ini="/var/lib/docker/volumes/$nome_da_date_wordpress_php/_data/php.ini"
caminho_arquivos_site="/var/lib/docker/volumes/$nome_da_date_wordpress_php/_data/php.ini"
#
sed -i "s/^upload_max_filesize =.*/upload_max_filesize = 1024M/" "$caminho_php_ini"
sed -i "s/^max_execution_time =.*/max_execution_time = 450/" "$caminho_php_ini"
sed -i "s/^memory_limit =.*/memory_limit = 1024M/" "$caminho_php_ini"

cd

docker service update --force ${nome_do_servico_wordpress}_${nome_do_servico_wordpress} 
STACK_NAME="$nome_da_stack_wordpress_subir"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c $nome_da_stack_wordpress $nome_da_stack_wordpress_subir

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[7/7]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_wordpress para verificar se o serviço esta online
wait_stack "wordpress"

cd dados_vps

cat > $nome_do_servico_wordpress <<EOL
[ WORDPRESS ]

Dominio do Wordpress: https://$url_wordpress

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[Wordpress]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_wordpress\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██████╗  █████╗ ███████╗███████╗██████╗  ██████╗ ██╗    ██╗
## ██╔══██╗██╔══██╗██╔════╝██╔════╝██╔══██╗██╔═══██╗██║    ██║
## ██████╔╝███████║███████╗█████╗  ██████╔╝██║   ██║██║ █╗ ██║
## ██╔══██╗██╔══██║╚════██║██╔══╝  ██╔══██╗██║   ██║██║███╗██║
## ██████╔╝██║  ██║███████║███████╗██║  ██║╚██████╔╝╚███╔███╔╝
## ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝  ╚═╝ ╚═════╝  ╚══╝╚══╝ 
                                                           
ferramenta_baserow() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_baserow

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/6\e[0m"
    echo -en "\e[33mDigite o dominio para o Baserow (ex: baserow.sinergialucrativa.com): \e[0m" && read -r url_baserow
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/6\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r mail_baserow
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 3/6\e[0m"
    echo -en "\e[33mDigite o Usuário para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r user_baserow
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 4/6\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r pass_baserow
    echo ""


    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 5/6\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r host_baserow
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 6/6\e[0m"
    echo -en "\e[33mDigite a Porta SMTP do Email (ex: 465): \e[0m" && read -r porta_baserow
    echo ""


    ## Verifica se a porta é 465, se sim deixa o ssl true, se não, deixa false 
    if [ "$porta_baserow" -eq 465 ]; then
    ssl_baserow_environments="- EMAIL_SMTP_USE_SSL=true"
    else
    ssl_baserow_environments="- EMAIL_SMTP_USE_TLS=true"

    fi

    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_baserow
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ##Informação do Dominio
    echo -e "\e[33mDominio para o Baserow:\e[97m $url_baserow\e[0m"
    echo ""

    ##Informação do Dominio
    echo -e "\e[33mEmail do SMTP:\e[97m $mail_baserow\e[0m"
    echo ""

    ##Informação do Dominio
    echo -e "\e[33mUsuário do SMTP:\e[97m $user_baserow\e[0m"
    echo ""

    ##Informação do Dominio
    echo -e "\e[33mSenha do SMTP:\e[97m $pass_baserow\e[0m"
    echo ""

    ##Informação do Dominio
    echo -e "\e[33mHost do SMTP:\e[97m $host_baserow\e[0m"
    echo ""

    ##Informação do Dominio
    echo -e "\e[33mPorta do SMTP:\e[97m $porta_baserow\e[0m"
    echo ""
    
     ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_baserow

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO BASEROW \e[33m[1/4]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES E REDIS \e[33m[2/4]\e[0m"
echo ""
sleep 1

verificar_container_postgres
if [ $? -eq 0 ]; then
    pegar_senha_postgres > /dev/null 2>&1
else
    ferramenta_postgres #> /dev/null 2>&1
    pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "baserow"

if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Verificando/Instalando Postgres"
else
    echo "1/2 - [ OFF ] - Verificando/Instalando Postgres"
fi

## Verifica container redis
verificar_container_redis
if [ $? -eq 0 ]; then
    echo ""
else
    ferramenta_redis > /dev/null 2>&1
fi
if [ $? -eq 0 ]; then
    echo "2/2 - [ OK ] - Verificando/Instalando Redis"
else
    echo "2/2 - [ OFF ] - Verificando/Instalando Redis"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO BASEROW \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > baserow.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  baserow:
    image: baserow/baserow:latest ## Versão do Baserow

    volumes:
      - baserow_data:/baserow/data

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Url do baserow
      - BASEROW_PUBLIC_URL=https://$url_baserow

      ## Porta do baserow
      - BASEROW_CADDY_ADDRESSES=:80

      ## Dados SMTP
      - EMAIL_SMTP=true ## Ativar/Desativar SMTP
      - FROM_EMAIL=$mail_baserow ## Email
      - EMAIL_SMTP_USER=$user_baserow ## Email (ou usuario)
      - EMAIL_SMTP_PASSWORD=$pass_baserow ## Senha do SMTP
      - EMAIL_SMTP_HOST=$host_baserow ## Host SMTP
      - EMAIL_SMTP_PORT=$porta_baserow ## Porta SMTP
      $ssl_baserow_environments

      ## Dados Redis
      - REDIS_URL=redis://redis:6379/4

      ## Dados postgres:
      - DATABASE_URL=postgresql://postgres:$senha_postgres@postgres:5432/baserow

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      #resources:
      #  limits:
      #    cpus: "1"
      #    memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.baserow.rule=Host(\`$url_baserow\`)
        - traefik.http.services.baserow.loadbalancer.server.port=80
        - traefik.http.routers.baserow.service=baserow
        - traefik.http.routers.baserow.tls.certresolver=letsencryptresolver
        - traefik.http.routers.baserow.entrypoints=websecure
        - traefik.http.routers.baserow.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true

volumes:
  baserow_data:
    external: true
    name: baserow_data
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Baserow"
fi

STACK_NAME="baserow"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c baserow.yaml baserow #> /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Baserow"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_baserow para verificar se o serviço esta online
wait_stack "baserow"

cd dados_vps

cat > dados_baserow <<EOL
[ BASEROW ]

Dominio do Baserow: https://$url_baserow

Usuario: Precisa criar no primeiro acesso do Baserow

Senha: Precisa criar no primeiro acesso do Baserow

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ BASEROW ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_baserow\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do Baserow\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do Baserow\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███╗   ███╗ ██████╗ ███╗   ██╗ ██████╗  ██████╗ ██████╗ ██████╗ 
## ████╗ ████║██╔═══██╗████╗  ██║██╔════╝ ██╔═══██╗██╔══██╗██╔══██╗
## ██╔████╔██║██║   ██║██╔██╗ ██║██║  ███╗██║   ██║██║  ██║██████╔╝
## ██║╚██╔╝██║██║   ██║██║╚██╗██║██║   ██║██║   ██║██║  ██║██╔══██╗
## ██║ ╚═╝ ██║╚██████╔╝██║ ╚████║╚██████╔╝╚██████╔╝██████╔╝██████╔╝
## ╚═╝     ╚═╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚═════╝ 
                                                                
ferramenta_mongodb() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_mongodb

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ## Pergunta o nome de usuario
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -e "$amarelo--> Evite os caracteres especiais: @\!#$ e/ou espaço"
    echo -en "\e[33mDigite o nome de usuario (ex: andromeda): \e[0m" && read -r user_mongo
    echo ""
    
    ## Gera a senha aleatória
    pass_mongo=$(openssl rand -hex 16)
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_mongodb
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação do Usuario
    echo -e "\e[33mUsuario:\e[97m $user_mongo\e[0m"
    echo ""
    
    ## Informação da Senha gerada
    echo -e "\e[33mSenha gerada:\e[97m $pass_mongo\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_mongodb

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO MONGO DB \e[33m[1/3]\e[0m"
echo ""
sleep 1

## NADA NADA NADA

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO MONGO DB \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > mongodb.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  mongodb:
    image: mongo:latest
    command: mongod --port 27017

    volumes:
      - mongodb_data:/data/db
      - mongodb_dump:/dump
      - mongodb_configdb_data:/data/configdb

    networks:
      - $nome_rede_interna
    ports:
      - 27017:27017

    environment:
      ## Dados de acesso
      - MONGO_INITDB_ROOT_USERNAME=$user_mongo
      - MONGO_INITDB_ROOT_PASSWORD=$pass_mongo
      - PUID=1000
      - PGID=1000

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: '1'
          memory: 2048M

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  mongodb_data:
    external: true
    name: mongodb_data
  mongodb_dump:
    external: true
    name: mongodb_dump
  mongodb_configdb_data:
    external: true
    name: mongodb_configdb_data

networks:
  $nome_rede_interna:
    name: $nome_rede_interna
    external: true

EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do MongoDB"
fi
STACK_NAME="mongodb"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c mongodb.yaml mongodb > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do MongoDB"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "mongodb" para verificar se o serviço esta online
wait_stack "mongodb"

cd dados_vps

read -r ip _ <<<$(hostname -I)
ip_vps=$ip

cat > dados_mongodb <<EOL
[ MONGODB ]

Dominio do MongoDB: MongoDB://$user_mongo:$pass_mongo@$ip_vps:27017/?authSource=admin&readPreference=primary&ssl=false&directConnection=true

Usuario: $user_mongo

Senha: $pass_mongo

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[MongoDB]\e[0m"
echo ""
echo -e "\e[33mUsuario:\e[97m $user_mongo\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m $pass_mongo\e[0m"
echo ""

echo -e "\e[33mUrl Database:\e[97m mongodb://$user_mongo:$pass_mongo@$ip_vps:27017/?authSource=admin&readPreference=primary&ssl=false&directConnection=true\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██████╗  █████╗ ██████╗ ██████╗ ██╗████████╗███╗   ███╗ ██████╗ 
## ██╔══██╗██╔══██╗██╔══██╗██╔══██╗██║╚══██╔══╝████╗ ████║██╔═══██╗
## ██████╔╝███████║██████╔╝██████╔╝██║   ██║   ██╔████╔██║██║   ██║
## ██╔══██╗██╔══██║██╔══██╗██╔══██╗██║   ██║   ██║╚██╔╝██║██║▄▄ ██║
## ██║  ██║██║  ██║██████╔╝██████╔╝██║   ██║   ██║ ╚═╝ ██║╚██████╔╝
## ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚═════╝ ╚═╝   ╚═╝   ╚═╝     ╚═╝ ╚══▀▀═╝ 
                                                                
ferramenta_rabbitmq() {

# Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_rabbitmq

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ## Pergunta o Dominio do RabbitMq
    echo -e "\e[97mPasso$amarelo 1/2\e[0m"
    echo -en "\e[33mDigite o dominio para o RabbitMQ (ex: rabbitmq.sinergialucrativa.com): \e[0m" && read -r url_rabbitmq
    echo ""
    
    echo -e "\e[97mPasso$amarelo 2/2\e[0m"
    echo -e "$amarelo--> Evite os caracteres especiais: @\!#$ e/ou espaço"
    echo -en "\e[33mDigite o nome de usuario (ex: AndromedaNet): \e[0m" && read -r user_rabbitmq
    echo ""
    
    ## Gera a senha aleatória
    pass_rabbitmq=$(openssl rand -hex 16)
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_rabbitmq
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação do Dominio do RabbitMQ
    echo -e "\e[33mDominio do RabbitMQ:\e[97m $url_rabbitmq\e[0m"
    echo ""
    
    ## Informação do Usuario do RabbitMQ
    echo -e "\e[33mUsario:\e[97m $user_rabbitmq\e[0m"
    echo ""
    
    ## Informação da Senha do RabbitMQ
    echo -e "\e[33mSenha:\e[97m $pass_rabbitmq\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_rabbitmq

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done
## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO RABBITMQ \e[33m[1/3]\e[0m"
echo ""
sleep 1

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO RABBITMQ \e[33m[2/3]\e[0m"
echo ""
sleep 1

#Key aleatória cookie
key_cookie=$(openssl rand -hex 16)

## Criando a stack
cat > rabbitmq.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  rabbitmq:
    image: rabbitmq:management
    command: rabbitmq-server

    hostname: rabbitmq

    volumes:
      - rabbitmq_data:/var/lib/rabbitmq

    networks:
      - $nome_rede_interna
    ports:
      - 5672:5672
      - 15672:15672

    environment:
      ## Dados de acesso
      RABBITMQ_DEFAULT_USER: $user_rabbitmq
      RABBITMQ_DEFAULT_PASS: $pass_rabbitmq
      RABBITMQ_ERLANG_COOKIE: $key_cookie
      RABBITMQ_DEFAULT_VHOST: "/"

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 512M
      labels:
        - traefik.enable=true
        - traefik.http.routers.rabbitmq.rule=Host(\`$url_rabbitmq\`)
        - traefik.http.routers.rabbitmq.entrypoints=websecure
        - traefik.http.routers.rabbitmq.tls.certresolver=letsencryptresolver
        - traefik.http.routers.rabbitmq.service=rabbitmq
        - traefik.http.services.rabbitmq.loadbalancer.server.port=15672

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  rabbitmq_data:
    external: true

networks:
  $nome_rede_interna:
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do RabbitMQ"
fi
STACK_NAME="rabbitmq"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c rabbitmq.yaml rabbitmq > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do RabbitMQ"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "pgadmin_4" para verificar se o serviço esta online
wait_stack "rabbit"

cd dados_vps

ip_vps=$(curl -s ifconfig.me)

cat > dados_rabbitmq <<EOL
[ RABBITMQ ]

Dominio do RabbitMq: $url_rabbitmq

Usuario: $user_rabbitmq

Senha: $pass_rabbitmq

URL: amqp://$user_rabbitmq:$pass_rabbitmq@rabbitmq:5672
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[RabbitMQ]\e[0m"
echo ""
echo -e "\e[33mDominio:\e[97m https://$url_rabbitmq\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m $user_rabbitmq\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m $pass_rabbitmq\e[0m"
echo ""

echo -e "\e[33mURL:\e[97m amqp://$user_rabbitmq:$pass_rabbitmq@rabbitmq:5672\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██╗   ██╗██████╗ ████████╗██╗███╗   ███╗███████╗    ██╗  ██╗██╗   ██╗███╗   ███╗ █████╗ 
## ██║   ██║██╔══██╗╚══██╔══╝██║████╗ ████║██╔════╝    ██║ ██╔╝██║   ██║████╗ ████║██╔══██╗
## ██║   ██║██████╔╝   ██║   ██║██╔████╔██║█████╗      █████╔╝ ██║   ██║██╔████╔██║███████║
## ██║   ██║██╔═══╝    ██║   ██║██║╚██╔╝██║██╔══╝      ██╔═██╗ ██║   ██║██║╚██╔╝██║██╔══██║
## ╚██████╔╝██║        ██║   ██║██║ ╚═╝ ██║███████╗    ██║  ██╗╚██████╔╝██║ ╚═╝ ██║██║  ██║
##  ╚═════╝ ╚═╝        ╚═╝   ╚═╝╚═╝     ╚═╝╚══════╝    ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝
                                                                                        
ferramenta_uptimekuma() {

# Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_uptimekuma

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ## Pergunta o Dominio do uptime kuma
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o Uptime Kuma (ex: uptimekuma.sinergialucrativa.com): \e[0m" && read -r url_uptimekuma
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_uptimekuma
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação do Dominio do uptimekuma
    echo -e "\e[33mDominio do Uptime Kuma:\e[97m $url_uptimekuma\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_mongodb

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO UPTIME KUMA \e[33m[1/3]\e[0m"
echo ""
sleep 1

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO UPTIME KUMA \e[33m[2/3]\e[0m"
echo ""
sleep 1

cat > uptimekuma.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  uptimekuma:
    image: louislam/uptime-kuma:latest

    volumes:
      - uptimekuma:/app/data

    networks:
      - $nome_rede_interna
    ports:
      - "3001:3001"

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.uptimekuma.rule=Host(\`$url_uptimekuma\`)
        - traefik.http.routers.uptimekuma.entrypoints=websecure
        - traefik.http.routers.uptimekuma.tls.certresolver=letsencryptresolver
        - traefik.http.services.uptimekuma.loadBalancer.server.port=3001
        - traefik.http.routers.uptimekuma.service=uptimekuma

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  uptimekuma:
    external: true
    name: uptimekuma

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Uptime Kuma"
fi
STACK_NAME="uptimekuma"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c uptimekuma.yaml uptimekuma #> /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Uptime Kuma"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "uptimekuma" para verificar se o serviço esta online
wait_stack "uptime"

cd dados_vps

ip_vps=$(curl -s ifconfig.me)

cat > dados_uptimekuma <<EOL
[ UPTIME KUMA ]

Dominio do Uptime Kuma: $url_uptimekuma

Usuario: Precisa criar dentro do Uptime Kuma

Senha: Precisa criar dentro do Uptime Kuma

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ UPTIME KUMA ] \e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_uptimekuma\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar dentro do Uptime Kuma\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar dentro do Uptime Kuma\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##  ██████╗ █████╗ ██╗      ██████╗ ██████╗ ███╗   ███╗
## ██╔════╝██╔══██╗██║     ██╔════╝██╔═══██╗████╗ ████║
## ██║     ███████║██║     ██║     ██║   ██║██╔████╔██║
## ██║     ██╔══██║██║     ██║     ██║   ██║██║╚██╔╝██║
## ╚██████╗██║  ██║███████╗╚██████╗╚██████╔╝██║ ╚═╝ ██║
##  ╚═════╝╚═╝  ╚═╝╚══════╝ ╚═════╝ ╚═════╝ ╚═╝     ╚═╝
                                                    
ferramenta_calcom() {

# Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_calcom

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ## Pergunta o Dominio da ferramenta
    echo -e "\e[97mPasso$amarelo 1/6\e[0m"
    echo -en "\e[33mDigite o dominio para o Cal (ex: calcom.sinergialucrativa.com): \e[0m" && read -r url_calcom
    echo ""
    
    ## Pergunta o email SMTP
    echo -e "\e[97mPasso$amarelo 2/6\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_calcom
    echo ""

    ## Pergunta o Ususario SMTP
    echo -e "\e[97mPasso$amarelo 3/6\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuario para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r user_calcom
    echo ""
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 4/6\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_email_calcom
    echo ""
    
    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 5/6\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r smtp_email_calcom
    echo ""
    
    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 6/6\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_calcom
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_calcom
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL
    echo -e "\e[33mDominio do Cal.com\e[97m $url_calcom\e[0m"
    echo ""
    
    ## Informação sobre Email SMTP
    echo -e "\e[33mEmail SMTP:\e[97m $email_calcom\e[0m"
    echo ""

    ## Informação sobre Email SMTP
    echo -e "\e[33mUser SMTP:\e[97m $user_calcom\e[0m"
    echo ""    
    
    ## Informação sobre Senha SMTP
    echo -e "\e[33mSenha SMTP:\e[97m $senha_email_calcom\e[0m"
    echo ""
    
    ## Informação sobre Host SMTP
    echo -e "\e[33mHost SMTP:\e[97m $smtp_email_calcom\e[0m"
    echo ""
    
    ## Informação sobre Porta SMTP
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_calcom\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_calcom

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO CALCOM \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/4]\e[0m"
echo ""
sleep 1

verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1

    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "calcom"

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO CAL.COM \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando key aleatória
secret=$(openssl rand -hex 16)

## Criando a stack
cat > calcom.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  calcom:
    image: calcom/cal.com:v3.7.11

    networks:
      - $nome_rede_interna

    environment:
    ## Licenças
      - NEXT_PUBLIC_LICENSE_CONSENT=agree
      - LICENSE=agree
      #- CALCOM_LICENSE_KEY= ## Descomente este campo caso tenha licença do mesmo

    ## URLs
      - NEXT_PUBLIC_WEBAPP_URL=https://$url_calcom
      - BASE_URL=https://$url_calcom
      - NEXTAUTH_URL=https://$url_calcom
      - NEXT_PUBLIC_CONSOLE_URL=https://$url_calcom
      - NEXT_PUBLIC_APP_URL=https://$url_calcom
      - NEXT_PUBLIC_WEBSITE_URL=https://$url_calcom
      - WEB_APP=https://$url_calcom

    ## Encrypition
      - NEXTAUTH_SECRET=$secret 
      - CALENDSO_ENCRYPTION_KEY=$secret

    ## Dados Postgress
      - DATABASE_URL=postgresql://postgres:$senha_postgres@postgres:5432/calcom

    ## Configurações de Email e SMTP
      - EMAIL_FROM=$email_calcom
      - EMAIL_SERVER_HOST=$smtp_email_calcom
      - EMAIL_SERVER_PORT=$porta_smtp_calcom
      - EMAIL_SERVER_USER=$user_calcom
      - EMAIL_SERVER_PASSWORD=$senha_email_calcom

    ## Nodes
      - NODE_ENV=production
      #- NODE_TLS_REJECT_UNAUTHORIZED=0

    ## Brand
      #- NEXT_PUBLIC_APP_NAME="Cal.com"
      #- NEXT_PUBLIC_SUPPORT_MAIL_ADDRESS="help@cal.com"
      #- NEXT_PUBLIC_COMPANY_NAME="Cal.com, Inc."
      #- NEXT_PUBLIC_DISABLE_SIGNUP=false ## false = novas inscrições permitidas | true = novas incrições fechadas

    ## Integração com Microsoft 365
      #- MS_GRAPH_CLIENT_ID=
      #- MS_GRAPH_CLIENT_SECRET=

    ## Integração com Zoom
      #- ZOOM_CLIENT_ID=
      #- ZOOM_CLIENT_SECRET=

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
        - node.role == manager
      labels:
      - traefik.enable=true
      - traefik.http.routers.calcom.rule=Host(\`$url_calcom\`)
      - traefik.http.routers.calcom.entrypoints=websecure
      - traefik.http.routers.calcom.priority=1
      - traefik.http.routers.calcom.tls.certresolver=letsencryptresolver
      - traefik.http.routers.calcom.service=calcom
      - traefik.http.services.calcom.loadbalancer.server.port=3000
      - traefik.http.services.calcom.loadbalancer.passHostHeader=1

## --------------------------- ANDROMEDA --------------------------- ##

networks:
  $nome_rede_interna:
    name: $nome_rede_interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do CalCom"
fi
STACK_NAME="calcom"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c calcom.yaml calcom  > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do CalCom"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "calcom" para verificar se o serviço esta online
wait_stack "calcom"

cd dados_vps

cat > dados_calcom <<EOL
[ CAL.COM ]

Dominio do CalCom: $url_calcom

Usuario: Precisa criar dentro do Calcom

Senha: Precisa criar dentro do Calcom

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ CAL.COM ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_calcom\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar dentro do Calcom\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar dentro do Calcom\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███╗   ███╗ █████╗ ██╗   ██╗████████╗██╗ ██████╗
## ████╗ ████║██╔══██╗██║   ██║╚══██╔══╝██║██╔════╝
## ██╔████╔██║███████║██║   ██║   ██║   ██║██║     
## ██║╚██╔╝██║██╔══██║██║   ██║   ██║   ██║██║     
## ██║ ╚═╝ ██║██║  ██║╚██████╔╝   ██║   ██║╚██████╗
## ╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝    ╚═╝   ╚═╝ ╚═════╝
                                                
ferramenta_mautic() {

# Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_mautic

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ## Pergunta o Dominio da ferramenta
    echo -e "\e[97mPasso$amarelo 1/4\e[0m"
    echo -en "\e[33mDigite o Dominio para o Mautic (ex: mautic.sinergialucrativa.com): \e[0m" && read -r url_mautic
    echo ""

    ## Pergunta o usuario da ferramenta
    echo -e "\e[97mPasso$amarelo 2/4\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ e/ou espaços"
    echo -en "\e[33mDigite um usuario (ex: andromeda): \e[0m" && read -r user_mautic
    echo ""

    ## Pergunta o email da ferramenta
    echo -e "\e[97mPasso$amarelo 3/4\e[0m"
    echo -en "\e[33mDigite o Email de admin: (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_mautic
    echo ""
    
    ## Pergunta o senha da ferramenta
    echo -e "\e[97mPasso$amarelo 4/4\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$"
    echo -en "\e[33mDigite uma Senha (ex: @Senha123_): \e[0m" && read -r senha_email_mautic
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_mautic
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL
    echo -e "\e[33mDominio do Mautic:\e[97m $url_mautic\e[0m"
    echo ""

    ## Informação sobre Usuario Admin
    echo -e "\e[33mUsuario admin:\e[97m $user_mautic\e[0m"
    echo ""

    ## Informação sobre Email Admin
    echo -e "\e[33mEmail do admin:\e[97m $email_mautic\e[0m"
    echo ""    

    ## Informação sobre Senha Admin
    echo -e "\e[33mSenha do Admin:\e[97m $senha_email_mautic\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_mautic

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO MAUTIC \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO MYSQL \e[33m[2/4]\e[0m"
echo ""
sleep 1

dados

verificar_container_mysql
    if [ $? -eq 0 ]; then
        pegar_senha_mysql > /dev/null 2>&1
    else
        ferramenta_mysql
        pegar_senha_mysql > /dev/null 2>&1
    fi

criar_banco_mysql_da_stack "mautic"

## Espera 30 segundos
wait_30_sec

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO MAUTIC \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > mautic.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  mautic_web:
    image: mautic/mautic:5.0.4-apache ## Versão do Mautic

    volumes:
      - mautic_config:/var/www/html/config
      - mautic_docroot:/var/www/html/docroot
      - mautic_media:/var/www/html/docroot/media
      - mautic_logs:/var/www/html/var/logs
      - mautic_cron:/opt/mautic/cron

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados MySQL
      - MAUTIC_DB_NAME=mautic
      - MAUTIC_DB_HOST=mysql
      - MAUTIC_DB_PORT=3306
      - MAUTIC_DB_USER=root
      - MAUTIC_DB_PASSWORD=$senha_mysql
      
      ## Dados de acesso
      - MAUTIC_ADMIN_EMAIL=$email_mautic
      - MAUTIC_ADMIN_USERNAME=$user_mautic
      - MAUTIC_ADMIN_PASSWORD=$senha_email_mautic
      - MAUTIC_URL=https://$url_mautic

      ## Configurações
      - MAUTIC_TRUSTED_PROXIES=["0.0.0.0/0"]
      - DOCKER_MAUTIC_ROLE=mautic_web
      - DOCKER_MAUTIC_WORKERS_CONSUME_EMAIL=2
      - DOCKER_MAUTIC_WORKERS_CONSUME_HIT=2
      - DOCKER_MAUTIC_WORKERS_CONSUME_FAILED=2

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "2"
          memory: 2048M
      labels:
        - traefik.enable=true
        - traefik.http.routers.mautic.rule=Host(\`$url_mautic\`) # substitua SeuDominio.com.br pelo seu domínio
        - traefik.http.services.mautic.loadbalancer.server.port=80
        - traefik.http.routers.mautic.entrypoints=websecure
        - traefik.http.routers.mautic.service=mautic
        - traefik.http.routers.mautic.tls.certresolver=letsencryptresolver
        - traefik.http.services.mautic.loadbalancer.passHostHeader=true

## --------------------------- ANDROMEDA --------------------------- ##

  mautic_worker:
    image: mautic/mautic:5.0.4-apache ## Versão do Mautic

    networks:
      - $nome_rede_interna ## Nome da rede interna

    volumes:
      - mautic_config:/var/www/html/config
      - mautic_docroot:/var/www/html/docroot
      - mautic_media:/var/www/html/docroot/media
      - mautic_logs:/var/www/html/var/logs
      - mautic_cron:/opt/mautic/cron
    environment:
      ## Dados MySQL
      - MAUTIC_DB_NAME=mautic
      - MAUTIC_DB_HOST=mysql
      - MAUTIC_DB_PORT=3306
      - MAUTIC_DB_USER=root
      - MAUTIC_DB_PASSWORD=$senha_mysql
      
      ## Dados de acesso
      - MAUTIC_ADMIN_EMAIL=$email_mautic
      - MAUTIC_ADMIN_USERNAME=$user_mautic
      - MAUTIC_ADMIN_PASSWORD=$senha_email_mautic
      - MAUTIC_URL=https://$url_mautic

      ## Configurações
      - MAUTIC_TRUSTED_PROXIES=["0.0.0.0/0"]
      - DOCKER_MAUTIC_ROLE=mautic_worker
      - DOCKER_MAUTIC_WORKERS_CONSUME_EMAIL=2
      - DOCKER_MAUTIC_WORKERS_CONSUME_HIT=2
      - DOCKER_MAUTIC_WORKERS_CONSUME_FAILED=2

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "2"
          memory: 2048M

## --------------------------- ANDROMEDA --------------------------- ##

  mautic_cron:
    image: mautic/mautic:5.0.4-apache ## Versão do Mautic

    networks:
      - $nome_rede_interna ## Nome da rede interna

    volumes:
      - mautic_config:/var/www/html/config
      - mautic_docroot:/var/www/html/docroot
      - mautic_media:/var/www/html/docroot/media
      - mautic_logs:/var/www/html/var/logs
      - mautic_cron:/opt/mautic/cron
    environment:
      ## Dados MySQL
      - MAUTIC_DB_NAME=mautic
      - MAUTIC_DB_HOST=mysql
      - MAUTIC_DB_PORT=3306
      - MAUTIC_DB_USER=root
      - MAUTIC_DB_PASSWORD=$senha_mysql
      
      ## Dados de acesso
      - MAUTIC_ADMIN_EMAIL=$email_mautic
      - MAUTIC_ADMIN_USERNAME=$user_mautic
      - MAUTIC_ADMIN_PASSWORD=$senha_email_mautic
      - MAUTIC_URL=https://$url_mautic

      ## Configurações
      - MAUTIC_TRUSTED_PROXIES=["0.0.0.0/0"]
      - DOCKER_MAUTIC_ROLE=mautic_cron
      - DOCKER_MAUTIC_WORKERS_CONSUME_EMAIL=2
      - DOCKER_MAUTIC_WORKERS_CONSUME_HIT=2
      - DOCKER_MAUTIC_WORKERS_CONSUME_FAILED=2

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 512M

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  mautic_config:
    name: mautic_config
    external: true
  mautic_docroot:
    name: mautic_docroot
    external: true
  mautic_media:
    name: mautic_media
    external: true
  mautic_logs:
    name: mautic_logs
    external: true
  mautic_cron:
    name: mautic_cron
    external: true

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Mautic"
fi
STACK_NAME="mautic"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c mautic.yaml mautic > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do Mautic"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "mautic" para verificar se o serviço esta online
wait_stack "mautic"

cd dados_vps

cat > dados_mautic <<EOL
[ MAUTIC ]

Dominio do Mautic: $url_mautic

Usuario: $user_mautic

Email: $email_mautic

Senha: $senha_email_mautic

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ MAUTIC ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_mautic\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m $user_mautic\e[0m"
echo ""

echo -e "\e[33mEmail:\e[97m $email_mautic\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m $senha_email_mautic\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##  █████╗ ██████╗ ██████╗ ███████╗███╗   ███╗██╗████████╗██╗  ██╗
## ██╔══██╗██╔══██╗██╔══██╗██╔════╝████╗ ████║██║╚══██╔══╝██║  ██║
## ███████║██████╔╝██████╔╝███████╗██╔████╔██║██║   ██║   ███████║
## ██╔══██║██╔═══╝ ██╔═══╝ ╚════██║██║╚██╔╝██║██║   ██║   ██╔══██║
## ██║  ██║██║     ██║     ███████║██║ ╚═╝ ██║██║   ██║   ██║  ██║
## ╚═╝  ╚═╝╚═╝     ╚═╝     ╚══════╝╚═╝     ╚═╝╚═╝   ╚═╝   ╚═╝  ╚═╝
                                                               
ferramenta_appsmith() {

# Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_appsmith

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ## Pergunta o Dominio da ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o Appsmith (ex: appsmith.sinergialucrativa.com): \e[0m" && read -r url_appsmith
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_appsmith
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL
    echo -e "\e[33mDominio do Appsmith\e[97m $url_appsmith\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_appsmith

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO APPSMITH \e[33m[1/3]\e[0m"
echo ""
sleep 1


## Mensagem de Passo
echo -e "\e[97m• INSTALANDO APPSMITH \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando uma Encryption Key Aleatória
secret=$(openssl rand -hex 16)

## Criando a stack
cat > appsmith.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  appsmith:
    image: appsmith/appsmith-ee:latest

    volumes:
      - appsmith_data:/appsmith-stacks

    networks:
      - $nome_rede_interna

    environment:
      ## Url Appsmith
      - APPSMITH_CUSTOM_DOMAIN=https://$url_appsmith

      ## Ativar/Desativar Novas Inscrições
      - APPSMITH_SIGNUP_DISABLED=false

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "2"
          memory: 2048M
      labels:
        - traefik.enable=true
        - traefik.http.routers.appsmith.rule=Host(\`$url_appsmith\`)
        - traefik.http.routers.appsmith.entrypoints=websecure
        - traefik.http.routers.appsmith.tls.certresolver=letsencryptresolver
        - traefik.http.routers.appsmith.service=appsmith
        - traefik.http.services.appsmith.loadbalancer.server.port=80
        - traefik.http.services.appsmith.loadbalancer.passHostHeader=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  appsmith_data:
    external: true
    name: appsmith_data

networks:
  $nome_rede_interna:
    name: $nome_rede_interna
    external: true

EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Appsmith"
fi
STACK_NAME="appsmith"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c appsmith.yaml appsmith  > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Appsmith"
#fi


## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "nocobase" para verificar se o serviço esta online
wait_stack "appsmith"

cd dados_vps

cat > dados_appsmith <<EOL
[ APPSMITH ]

Dominio do Appsmith: https://$url_nocobase

Usuario: Precisa criar no primeiro acesso do Appsmith

Senha: Precisa criar no primeiro acesso do Appsmith
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[Appsmith]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_appsmith\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do Appsmith\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do Appsmith\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##  ██████╗ ██████╗ ██████╗  █████╗ ███╗   ██╗████████╗
## ██╔═══██╗██╔══██╗██╔══██╗██╔══██╗████╗  ██║╚══██╔══╝
## ██║   ██║██║  ██║██████╔╝███████║██╔██╗ ██║   ██║   
## ██║▄▄ ██║██║  ██║██╔══██╗██╔══██║██║╚██╗██║   ██║   
## ╚██████╔╝██████╔╝██║  ██║██║  ██║██║ ╚████║   ██║   
##  ╚══▀▀═╝ ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝   
                                                    
ferramenta_qdrant() {

# Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_qdrant

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ## Pergunta o Dominio da ferramenta
    read -r ip _ <<<$(hostname -I)
    echo -e "\e[97mPasso$amarelo 1/2\e[0m"
    echo -en "\e[33mDigite o ip da vps (seu ip: $ip) ou dominio para Qdrant (ex: qdrant.sinergialucrativa.com): \e[0m" && read -r ip_vps
    echo ""
    
    ## Pergunta quandos nodes deseja
    echo -e "\e[97mPasso$amarelo 2/2\e[0m"
    echo -en "\e[33mDigite quantos Nodes você deseja (recomendado: 5): \e[0m" && read -r nodes_qdrant
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_qdrant
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL
    echo -e "\e[33mIp da VPS ou Dominio:\e[97m $ip_vps\e[0m"
    echo ""
    
    ## Informação sobre quantidade de nodes
    echo -e "\e[33mQuantidade de Nodes:\e[97m $nodes_qdrant\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_qdrant

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO QDRANT \e[33m[1/3]\e[0m"
echo ""
sleep 1

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO QDRANT \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando a stack
cat <<EOL > qdrant.yaml
version: "3.7"
services:
EOL

for ((i=0; i< $nodes_qdrant; i++)); do
  node_name="qdrant_node_$i"
  volume_name="qdrant_data_$i"

  cat <<EOL >> qdrant.yaml

  ## --------------------------- ANDROMEDA --------------------------- ##

  $node_name:
    image: qdrant/qdrant:latest

    volumes:
      - $volume_name:/qdrant

    networks:
      - $nome_rede_interna

    ports:
      - "$((6333 + i * 10)):6333"
      - "$((6334 + i * 10)):6334"

    environment:
      - QDRANT__SERVICE__GRPC_PORT=6334
      - QDRANT__CLUSTER__ENABLED=true
      - QDRANT__CLUSTER__P2P__PORT=6335
      - QDRANT__CLUSTER__CONSENSUS__MAX_MESSAGE_QUEUE_SIZE=5000
      - QDRANT__LOG_LEVEL=debug,raft=info

    deploy:
      resources:
        limits:
          cpus: "0.3"
EOL

  if ((i == 0)); then
    echo "    command: ./qdrant --uri 'http://qdrant_node_0:6335'" >> qdrant.yaml
  else
    echo "    command: bash -c \"sleep $((10 + i * 3)) && ./qdrant --bootstrap 'http://qdrant_node_0:6335' --uri 'http://qdrant_node_$i:6335'\"" >> qdrant.yaml
  fi

  echo "" >> qdrant.yaml
done

cat <<EOL >> qdrant.yaml
## --------------------------- ANDROMEDA --------------------------- ##

volumes:
EOL

for ((i=0; i< $nodes_qdrant; i++)); do
  volume_name="qdrant_data_$i"
  echo "  $volume_name:" >> qdrant.yaml
done

cat <<EOL >> qdrant.yaml
networks:
  $nome_rede_interna:
EOL

if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Qdrant"
fi
STACK_NAME="qdrant"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c qdrant.yaml qdrant  > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Qdrant"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "qdrant" para verificar se o serviço esta online
wait_stack "qdrant"

cd dados_vps

cat > dados_qdrant <<EOL
[ QDRANT ]

Dominio do Qdrant: https://$ip_vps:6333/dashboard

Usuario: Não Tem

Senha: Não Tem
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[QDrant]\e[0m"
echo ""

echo -e "\e[33mDashboard:\e[97m http://$ip_vps:6333/dashboard\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Não Tem\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Não Tem\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██╗    ██╗ ██████╗  ██████╗ ███████╗███████╗██████╗      ██████╗██████╗ ███╗   ███╗
## ██║    ██║██╔═══██╗██╔═══██╗██╔════╝██╔════╝██╔══██╗    ██╔════╝██╔══██╗████╗ ████║
## ██║ █╗ ██║██║   ██║██║   ██║█████╗  █████╗  ██║  ██║    ██║     ██████╔╝██╔████╔██║
## ██║███╗██║██║   ██║██║   ██║██╔══╝  ██╔══╝  ██║  ██║    ██║     ██╔══██╗██║╚██╔╝██║
## ╚███╔███╔╝╚██████╔╝╚██████╔╝██║     ███████╗██████╔╝    ╚██████╗██║  ██║██║ ╚═╝ ██║
##  ╚══╝╚══╝  ╚═════╝  ╚═════╝ ╚═╝     ╚══════╝╚═════╝      ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝
                                                                                   
ferramenta_woofed() {

# Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_woofedcrm

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos    
while true; do

    ## Pergunta o Dominio da ferramenta
    echo -e "\e[97mPasso$amarelo 1/3\e[0m"
    echo -en "\e[33mDigite o Dominio para o WoofedCRM (ex: woofedcrm.sinergialucrativa.com): \e[0m" && read -r url_woofed
    echo ""

    ## Pergunta o nome do Usuario do Motor
    echo -e "\e[97mPasso$amarelo 2/3\e[0m"
    echo -e "$amarelo--> Evite os caracteres especiais: @\!#$ e/ou espaço"
    echo -en "\e[33mDigite o User do MOTOR (ex: andromeda): \e[0m" && read -r email_admin_woofed
    echo ""

    ## Pergunta o nome do Senha do Motor
    echo -e "\e[97mPasso$amarelo 3/3\e[0m"
    echo -e "$amarelo--> Evite os caracteres especiais: \!#$ e/ou espaço"
    echo -en "\e[33mDigite a Senha do MOTOR (ex: @Senha123_): \e[0m" && read -r senha_email_woofed
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_woofedcrm
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info

    ## Informação sobre o dominio
    echo -e "\e[33mDominio:\e[97m $url_woofed\e[0m"
    echo ""

    ## Informação sobre o usuario
    echo -e "\e[33mUser MOTOR:\e[97m $email_admin_woofed\e[0m"
    echo ""

    ## Informação sobre a senha
    echo -e "\e[33mSenha MOTOR:\e[97m $senha_email_woofed\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_woofedcrm

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO WOOFED CRM \e[33m[1/7]\e[0m"
echo ""
sleep 1

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES VECTOR \e[33m[2/7]\e[0m"
echo ""
sleep 1

dados
verificar_container_pgvector
if [ $? -eq 0 ]; then
    echo ""
    pegar_senha_pgvector > /dev/null 2>&1
    criar_banco_pgvector_da_stack "woofedcrm" #> /dev/null 2>&1
else
    ferramenta_pgvector #> /dev/null 2>&1
    pegar_senha_pgvector > /dev/null 2>&1
    criar_banco_pgvector_da_stack "woofedcrm" #> /dev/null 2>&1
fi

sleep 5

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO REDIS \e[33m[3/7]\e[0m"
echo ""

    verificar_container_redis
    if [ $? -eq 0 ]; then
        echo ""
    else
        ferramenta_redis
    fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO WOOFED CRM \e[33m[4/7]\e[0m"
echo ""
sleep 1

## Criando uma Encryption Key Aleatória
encryption_key_woofed=$(openssl rand -hex 16)

# Verifica se o arquivo evolution.yaml existe
if [ -f "/root/evolution.yaml" ]; then
    # Extrai os valores do arquivo evolution.yaml e formata no estilo desejado
    EVOLUTION_API_ENDPOINT="- EVOLUTION_API_ENDPOINT=$(grep -oP '(?<=- SERVER_URL=)[^#]*' /root/evolution.yaml | sed 's/ //g')"
    EVOLUTION_API_ENDPOINT_TOKEN="- EVOLUTION_API_ENDPOINT_TOKEN=$(grep -oP '(?<=- AUTHENTICATION_API_KEY=)[^#]*' /root/evolution.yaml | sed 's/ //g')"
else
    # Define os valores padrão se o arquivo não existir
    EVOLUTION_API_ENDPOINT="#- EVOLUTION_API_ENDPOINT="
    EVOLUTION_API_ENDPOINT_TOKEN="#- EVOLUTION_API_ENDPOINT_TOKEN="
fi

## Criando a stack
cat > woofedcrm.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  woofedcrm_web_orion:
    image: douglara/woofedcrm:latest
    command: bundle exec rails s -p 3000 -b 0.0.0.0

    volumes:
      - woofedcrm_data:/app/public/assets

    networks:
      - $nome_rede_interna

    environment:
      ## Url WoofedCRM
      - FRONTEND_URL=https://$url_woofed
      - SECRET_KEY_BASE=$encryption_key_woofed

      ## Idioma
      - LANGUAGE=pt-BR

      ## Permitir/Bloquear novas Inscrições
      - ENABLE_USER_SIGNUP=true

      ## Credenciais Motor
      - MOTOR_AUTH_USERNAME=$email_admin_woofed
      - MOTOR_AUTH_PASSWORD=$senha_email_woofed

      ## Endpoints Evolution API
      $EVOLUTION_API_ENDPOINT ## BaseUrl
      $EVOLUTION_API_ENDPOINT_TOKEN ## Global Api Key

      ## Timezone
      - DEFAULT_TIMEZONE=Brasilia

      ## Dados OpenAI
      #- OPENAI_API_KEY=

      ## Dados PgVector
      - DATABASE_URL=postgres://postgres:$senha_pgvector@pgvector:5432/woofedcrm

      ## Dados Redis
      - REDIS_URL=redis://redis:6379/0

      ## Dados Storage
      - ACTIVE_STORAGE_SERVICE=local

      ## Modo de Produção
      - RAILS_ENV=production
      - RACK_ENV=production
      - NODE_ENV=production
      - RAILS_LOG_LEVEL=debug

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.woofedcrm.rule=Host(\`$url_woofed\`)
        - traefik.http.routers.woofedcrm.entrypoints=websecure
        - traefik.http.routers.woofedcrm.tls.certresolver=letsencryptresolver
        - traefik.http.routers.woofedcrm.priority=1
        - traefik.http.routers.woofedcrm.service=woofedcrm
        - traefik.http.services.woofedcrm.loadbalancer.server.port=3000 
        - traefik.http.services.woofedcrm.loadbalancer.passhostheader=true 
        - traefik.http.middlewares.sslheader.headers.customrequestheaders.X-Forwarded-Proto=https
        - traefik.http.routers.woofedcrm.middlewares=sslheader@docker

## --------------------------- ANDROMEDA --------------------------- ##

  woofedcrm_sidekiq_orion:
    image: douglara/woofedcrm:latest
    command: bundle exec sidekiq -C config/sidekiq.yml

    volumes:
      - woofedcrm_data:/app/public/assets

    networks:
      - $nome_rede_interna

    environment:
      ## Url WoofedCRM
      - FRONTEND_URL=https://$url_woofed
      - SECRET_KEY_BASE=$encryption_key_woofed

      ## Idioma
      - LANGUAGE=pt-BR

      ## Permitir/Bloquear novas Inscrições
      - ENABLE_USER_SIGNUP=true

      ## Credenciais Motor
      - MOTOR_AUTH_USERNAME=$email_admin_woofed
      - MOTOR_AUTH_PASSWORD=$senha_email_woofed

      ## Endpoints Evolution API
      $EVOLUTION_API_ENDPOINT ## BaseUrl
      $EVOLUTION_API_ENDPOINT_TOKEN ## Global Api Key

      ## Timezone
      - DEFAULT_TIMEZONE=Brasilia

      ## Dados OpenAI
      #- OPENAI_API_KEY=

      ## Dados PgVector
      - DATABASE_URL=postgres://postgres:$senha_pgvector@pgvector:5432/woofedcrm

      ## Dados Redis
      - REDIS_URL=redis://redis:6379/0

      ## Dados Storage
      - ACTIVE_STORAGE_SERVICE=local

      ## Modo de Produção
      - RAILS_ENV=production
      - RACK_ENV=production
      - NODE_ENV=production
      - RAILS_LOG_LEVEL=debug
      
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

  woofedcrm_job_orion:
    image: douglara/woofedcrm:latest
    command: bundle exec good_job

    volumes:
      - woofedcrm_data:/app/public/assets

    networks:
      - $nome_rede_interna

    environment:
      ## Url WoofedCRM
      - FRONTEND_URL=https://$url_woofed
      - SECRET_KEY_BASE=$encryption_key_woofed

      ## Idioma
      - LANGUAGE=pt-BR

      ## Permitir/Bloquear novas Inscrições
      - ENABLE_USER_SIGNUP=true

      ## Credenciais Motor
      - MOTOR_AUTH_USERNAME=$email_admin_woofed
      - MOTOR_AUTH_PASSWORD=$senha_email_woofed

      ## Endpoints Evolution API
      $EVOLUTION_API_ENDPOINT ## BaseUrl
      $EVOLUTION_API_ENDPOINT_TOKEN ## Global Api Key

      ## Timezone
      - DEFAULT_TIMEZONE=Brasilia

      ## Dados OpenAI
      #- OPENAI_API_KEY=

      ## Dados PgVector
      - DATABASE_URL=postgres://postgres:$senha_pgvector@pgvector:5432/woofedcrm

      ## Dados Redis
      - REDIS_URL=redis://redis:6379/0

      ## Dados Storage
      - ACTIVE_STORAGE_SERVICE=local

      ## Modo de Produção
      - RAILS_ENV=production
      - RACK_ENV=production
      - NODE_ENV=production
      - RAILS_LOG_LEVEL=debug

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  woofedcrm_data:
    external: true
    name: woofedcrm_data

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do WoofedCRM"
fi
STACK_NAME="woofedcrm"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c woofedcrm.yaml woofedcrm #> /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do WoofedCRM"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[5/7]\e[0m"
wait_30_sec
echo ""
sleep 1
## Usa o serviço wait_stack "woofedcrm" para verificar se o serviço esta online
wait_stack "woofedcrm"

## Mensagem de Passo
echo -e "\e[97m• CONFIGURANDO E MIGRANDO BANCO DE DADOS \e[33m[6/7]\e[0m"
echo ""
sleep 1

#MIGRANDO BANCO DE DADOS DO WOOFED CRM
container_name="woofedcrm_web_orion"

max_wait_time=1200

wait_interval=60

elapsed_time=0

while [ $elapsed_time -lt $max_wait_time ]; do
  CONTAINER_ID=$(docker ps -q --filter "name=$container_name")
  if [ -n "$CONTAINER_ID" ]; then
    break
  fi
  sleep $wait_interval
  elapsed_time=$((elapsed_time + wait_interval))
done

if [ -z "$CONTAINER_ID" ]; then
  echo "O contêiner não foi encontrado após $max_wait_time segundos."
  exit 1
fi

docker exec -it "$CONTAINER_ID" bundle exec rails db:create
docker exec -it "$CONTAINER_ID" bundle exec rails db:migrate

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[7/7]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "woofedcrm" para verificar se o serviço esta online
wait_stack "woofedcrm"

cd dados_vps

cat > dados_woofedcrm <<EOL
[ WOOFED CRM ]

Dominio do WoofedCRM: https://$url_woofed

Email: Precisa criar dentro do WoofedCRM

Senha: Precisa criar dentro do WoofedCRM

Acesso ao Motor: https://$url_woofed/motor_admin

Usuario do Motor: $email_admin_woofed

Senha do Motor: $senha_email_woofed
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ WOOFED CRM ]\e[0m"
echo ""

echo -e "\e[97mDominio:\e[33m https://$url_woofed\e[0m"
echo ""

echo -e "\e[97mEmail:\e[33m Precisa criar dentro do WoofedCRM\e[0m"
echo ""

echo -e "\e[97mSenha:\e[33m Precisa criar dentro do WoofedCRM\e[0m"
echo ""

echo -e "\e[97mURL MOTOR:\e[33m https://$url_woofed/motor_admin\e[0m"
echo ""

echo -e "\e[97mUser MOTOR:\e[33m $email_admin_woofed\e[0m"
echo ""

echo -e "\e[97mSenha MOTOR:\e[33m $senha_email_woofed\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███████╗ ██████╗ ██████╗ ███╗   ███╗██████╗ ██████╗ ██╗ ██████╗██╗  ██╗███████╗
## ██╔════╝██╔═══██╗██╔══██╗████╗ ████║██╔══██╗██╔══██╗██║██╔════╝██║ ██╔╝██╔════╝
## █████╗  ██║   ██║██████╔╝██╔████╔██║██████╔╝██████╔╝██║██║     █████╔╝ ███████╗
## ██╔══╝  ██║   ██║██╔══██╗██║╚██╔╝██║██╔══██╗██╔══██╗██║██║     ██╔═██╗ ╚════██║
## ██║     ╚██████╔╝██║  ██║██║ ╚═╝ ██║██████╔╝██║  ██║██║╚██████╗██║  ██╗███████║
## ╚═╝      ╚═════╝ ╚═╝  ╚═╝╚═╝     ╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝
                                                                               
ferramenta_formbricks() {

# Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_formbricks

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ## Pergunta o Dominio da ferramenta
    echo -e "\e[97mPasso$amarelo 1/6\e[0m"
    echo -en "\e[33mDigite o Dominio para o Formbricks (ex: formbricks.sinergialucrativa.com): \e[0m" && read -r url_formbricks
    echo ""
    
    ## Pergunta o Email SMTP
    echo -e "\e[97mPasso$amarelo 2/6\e[0m"
    echo -en "\e[33mDigite um Email para o SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_formbricks
    echo ""

    ## Pergunta o User SMTP
    echo -e "\e[97mPasso$amarelo 3/6\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuario do SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r user_smtp_formbricks
    echo ""
    
    ## Pergunta a Senha SMTP
    echo -e "\e[97mPasso$amarelo 4/6\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do email (ex: @Senha123_): \e[0m" && read -r senha_formbricks
    echo ""
    
    ## Pergunta o Host SMTP
    echo -e "\e[97mPasso$amarelo 5/6\e[0m"
    echo -en "\e[33mDigite o Host SMTP do email (ex: smtp.hostinger.com): \e[0m" && read -r host_formbricks
    echo ""
    
    ## Pergunta a Porta SMTP 
    echo -e "\e[97mPasso$amarelo 6/6\e[0m"
    echo -en "\e[33mDigite a Porta SMTP do email (ex: 465): \e[0m" && read -r porta_formbricks
    echo ""
    
    if [ "$porta_formbricks" -eq 465 ] || [ "$porta_formbricks" -eq 25 ]; then
        ssl_formbricks=1
    else
        ssl_formbricks=0
    fi
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_formbricks
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL
    echo -e "\e[33mDominio:\e[97m $url_formbricks\e[0m"
    echo ""
    
    ## Informação sobre Email
    echo -e "\e[33mEmail SMTP:\e[97m $email_formbricks\e[0m"
    echo ""

    ## Informação sobre UserSMTP
    echo -e "\e[33mUser SMTP:\e[97m $user_smtp_formbricks\e[0m"
    echo ""
    
    ## Informação sobre Senha
    echo -e "\e[33mSenha SMTP:\e[97m $senha_formbricks\e[0m"
    echo ""
    
    ## Informação sobre Host
    echo -e "\e[33mHost SMTP:\e[97m $host_formbricks\e[0m"
    echo ""
    
    ## Informação sobre Porta
    echo -e "\e[33mPorta SMTP:\e[97m $porta_formbricks\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_formbricks

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO FORMBRICKS \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Nada nada nada.. só para aparecer a mensagem de passo..

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/4]\e[0m"
echo ""
sleep 1

verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1

    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "formbricks"

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO FORMBRICKS \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Gera keys aleatórias
encryption_key_form=$(openssl rand -hex 16)
next_key_form=$(openssl rand -hex 16)
cron_key_form=$(openssl rand -hex 16)

## Criando a stack
cat > formbricks.yaml <<-EOF
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  formbricks:
    image: formbricks/formbricks:latest

    volumes:
      - formbricks_data:/home/nextjs/apps/web/uploads/

    networks:
      - $nome_rede_interna

    environment:
      ## Url da aplicação
      - WEBAPP_URL=https://$url_formbricks
      - NEXTAUTH_URL=https://$url_formbricks

      ## Banco de dados Postgres
      - DATABASE_URL=postgresql://postgres:$senha_postgres@postgres:5432/formbricks

      ## Licença Enterprise ou Self-hosting
      ## Solicitar licenta Self-hosting --> https://oriondesign.art.br/formbricks_licence/ <-- ##
      - ENTERPRISE_LICENSE_KEY=

      ## Keys aleatórias 32 caracteres
      - ENCRYPTION_KEY=$encryption_key_form
      - NEXTAUTH_SECRET=$next_key_form
      - CRON_SECRET=$cron_key_form

      ## Dados do SMTP
      - MAIL_FROM=$email_formbricks
      - SMTP_HOST=$host_formbricks
      - SMTP_PORT=$porta_formbricks
      - SMTP_SECURE_ENABLED=$ssl_formbricks #(0= false | 1= true)
      - SMTP_USER=$user_smtp_formbricks
      - SMTP_PASSWORD=$senha_formbricks

      ## Ativar/Desativar registros e convites (0= false | 1= true)
      - SIGNUP_DISABLED=0
      - INVITE_DISABLED=0
      - EMAIL_VERIFICATION_DISABLED=0
      - PASSWORD_RESET_DISABLED=0

      ## Dados do Formbricks (para pesquisa)
      - NEXT_PUBLIC_FORMBRICKS_API_HOST=
      - NEXT_PUBLIC_FORMBRICKS_ENVIRONMENT_ID=
      - NEXT_PUBLIC_FORMBRICKS_ONBOARDING_SURVEY_ID=

      ## Login Google Cloud
      - GOOGLE_AUTH_ENABLED=0
      - GOOGLE_CLIENT_ID=
      - GOOGLE_CLIENT_SECRET=

      ## Google Sheets
      - GOOGLE_SHEETS_CLIENT_ID=
      - GOOGLE_SHEETS_CLIENT_SECRET=
      - GOOGLE_SHEETS_REDIRECT_URL=

      ## Login Github
      - GITHUB_AUTH_ENABLED=0
      - GITHUB_ID=
      - GITHUB_SECRET=

      ## Login Github
      - NOTION_OAUTH_CLIENT_ID=
      - NOTION_OAUTH_CLIENT_SECRET=   
      
      ## Login Airtable
      - AIRTABLE_CLIENT_ID=

      ## Termos e politica de privacidade
      #- PRIVACY_URL=
      #- TERMS_URL=
      #- IMPRINT_URL=

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.formbricks.rule=Host(\`$url_formbricks\`)
        - traefik.http.services.formbricks.loadbalancer.server.port=3000
        - traefik.http.routers.formbricks.service=formbricks
        - traefik.http.routers.formbricks.tls.certresolver=letsencryptresolver
        - traefik.http.routers.formbricks.entrypoints=websecure
        - traefik.http.routers.formbricks.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

networks:
  $nome_rede_interna:
    name: $nome_rede_interna
    external: true

volumes:
  formbricks_data:
    external: true
EOF
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Formbricks"
fi
STACK_NAME="formbricks"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c formbricks.yaml formbricks > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do Formbricks"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "formbricks" para verificar se o serviço esta online
wait_stack "formbricks"

cd dados_vps

cat > dados_formbricks <<EOL
[ FORMBRICKS ]

Dominio do Formbricks: https://$url_formbricks

Email: Precisa de criar dentro do Formbricks

Senha: Precisa de criar dentro do Formbricks
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ FORMBRICKS ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_formbricks\e[0m"
echo ""

echo -e "\e[33mEmail:\e[97m Precisa de criar dentro do Formbricks\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa de criar dentro do Formbricks\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███╗   ██╗ ██████╗  ██████╗ ██████╗ ██████╗ ██████╗ 
## ████╗  ██║██╔═══██╗██╔════╝██╔═══██╗██╔══██╗██╔══██╗
## ██╔██╗ ██║██║   ██║██║     ██║   ██║██║  ██║██████╔╝
## ██║╚██╗██║██║   ██║██║     ██║   ██║██║  ██║██╔══██╗
## ██║ ╚████║╚██████╔╝╚██████╗╚██████╔╝██████╔╝██████╔╝
## ╚═╝  ╚═══╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚═════╝ ╚═════╝ 

ferramenta_nocodb() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_nocodb

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o NocoDB (ex: nocodb.sinergialucrativa.com): \e[0m" && read -r url_nocodb
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_nocodb
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ##Informação do Dominio
    echo -e "\e[33mDominio para o NocoDB:\e[97m $url_nocodb\e[0m"
    echo ""
    
     ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_nocodb

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO NOCODB \e[33m[1/4]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Já sabe né ksk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1

    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "nocodb"

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO NOCODB \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > nocodb.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  nocodb: 
    image: nocodb/nocodb:latest

    volumes: 
      - nocodb-data:/usr/app/data

    networks:
      - $nome_rede_interna

    environment: 
      ## Url do Nocobase
      - NC_PUBLIC_URL=https://$url_nocodb

      ## Dados Postgres
      - NC_DB=pg://postgres:5432?u=postgres&p=$senha_postgres&d=nocodb

      ## Desativar Telemetria
      - NC_DISABLE_TELE=true  

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.nocodb.rule=Host(\`$url_nocodb\`)
        - traefik.http.routers.nocodb.entrypoints=websecure
        - traefik.http.services.nocodb.loadbalancer.server.port=8080
        - traefik.http.routers.nocodb.service=nocodb
        - traefik.http.routers.nocodb.tls.certresolver=letsencryptresolver
        - com.centurylinklabs.watchtower.enable=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  nocodb-data:
    external: true
    name: nocodb-data

networks:
  $nome_rede_interna:
    name: $nome_rede_interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do NocoDB"
fi
STACK_NAME="nocodb"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c nocodb.yaml nocodb > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do NocoDB"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_nocodb para verificar se o serviço esta online
wait_stack "nocobase"

cd dados_vps

cat > dados_nocodb <<EOL
[ NOCODB ]

Dominio do NocoDB: https://$url_nocodb

Usuario: Precisa criar no primeiro acesso do NocoDB

Senha: Precisa criar no primeiro acesso do NocoDB

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ NocoDB ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_nocodb\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do NocoDB\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do NocoDB\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██╗      █████╗ ███╗   ██╗ ██████╗ ███████╗██╗   ██╗███████╗███████╗
## ██║     ██╔══██╗████╗  ██║██╔════╝ ██╔════╝██║   ██║██╔════╝██╔════╝
## ██║     ███████║██╔██╗ ██║██║  ███╗█████╗  ██║   ██║███████╗█████╗  
## ██║     ██╔══██║██║╚██╗██║██║   ██║██╔══╝  ██║   ██║╚════██║██╔══╝  
## ███████╗██║  ██║██║ ╚████║╚██████╔╝██║     ╚██████╔╝███████║███████╗
## ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝      ╚═════╝ ╚══════╝╚══════╝

ferramenta_langfuse() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_langfuse

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o Langfuse (ex: langfuse.sinergialucrativa.com): \e[0m" && read -r url_langfuse
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_langfuse
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ##Informação do Dominio
    echo -e "\e[33mDominio para o langfuse:\e[97m $url_langfuse\e[0m"
    echo ""
    
     ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_langfuse

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO LANGFUSE \e[33m[1/4]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Já sabe né ksk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1
    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "langfuse"

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO LANGFUSE \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando key Aleatória 64caracteres
key_secret=$(openssl rand -hex 32)

## Criando key Aleatória 32caracteres
key_salt=$(openssl rand -hex 16)

## Criando a stack
cat > langfuse.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  langfuse:
    image: ghcr.io/langfuse/langfuse:latest

    networks:
     - $nome_rede_interna

    environment:
      ## Url do Langfuse
      - NEXTAUTH_URL=https://$url_langfuse

      ## Desativar novas incrições
      - NEXT_PUBLIC_SIGN_UP_DISABLED=false

      ## Dados Postgres
      - DATABASE_URL=postgresql://postgres:$senha_postgres@postgres:5432/langfuse

      ## Secrets Key
      - NEXTAUTH_SECRET=$key_secret
      - SALT=$key_salt

      ## Desativar Telemetria
      - TELEMETRY_ENABLED=true

      ## Features experimentais
      - LANGFUSE_ENABLE_EXPERIMENTAL_FEATURES=false

      ## Node
      - NODE_ENV=production

    deploy:
      mode: replicated
      replicas: 1
      placement:
          constraints:
            - node.role == manager
      resources:
          limits:
            cpus: '0.5'
            memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.langfuse.rule=Host(\`$url_langfuse\`)
        - traefik.http.routers.langfuse.entrypoints=websecure
        - traefik.http.routers.langfuse.tls.certresolver=letsencryptresolver
        - traefik.http.routers.langfuse.service=langfuse
        - traefik.http.services.langfuse.loadbalancer.passHostHeader=true
        - traefik.http.services.langfuse.loadbalancer.server.port=3000

## --------------------------- ANDROMEDA --------------------------- ##

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do langfuse"
fi
STACK_NAME="langfuse"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c langfuse.yaml langfuse > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do langfuse"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_langfuse para verificar se o serviço esta online
wait_stack "langfuse"

cd dados_vps

cat > dados_langfuse <<EOL
[ LANGFUSE ]

Dominio do Langfuse: https://$url_langfuse

Usuario: Precisa criar no primeiro acesso do langfuse

Senha: Precisa criar no primeiro acesso do langfuse

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ LANGFUSE ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_langfuse\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do Langfuse\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do Langfuse\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███╗   ███╗███████╗████████╗ █████╗ ██████╗  █████╗ ███████╗███████╗
## ████╗ ████║██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝
## ██╔████╔██║█████╗     ██║   ███████║██████╔╝███████║███████╗█████╗  
## ██║╚██╔╝██║██╔══╝     ██║   ██╔══██║██╔══██╗██╔══██║╚════██║██╔══╝  
## ██║ ╚═╝ ██║███████╗   ██║   ██║  ██║██████╔╝██║  ██║███████║███████╗
## ╚═╝     ╚═╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝

ferramenta_metabase() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_metabase

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o Metabase (ex: metabase.sinergialucrativa.com): \e[0m" && read -r url_metabase
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_metabase
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ##Informação do Dominio
    echo -e "\e[33mDominio para o metabase:\e[97m $url_metabase\e[0m"
    echo ""
    
     ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_metabase

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO METABASE \e[33m[1/4]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Já sabe né ksk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1
    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "metabase"

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO METABASE \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando key Aleatória 64caracteres
key_secret=$(openssl rand -hex 32)

## Criando key Aleatória 32caracteres
key_salt=$(openssl rand -hex 16)

## Criando a stack
cat > metabase.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  metabase:
    image: metabase/metabase:latest

    volumes:
      - metabase_data:/metabase3-data

    networks:
      - $nome_rede_interna

    environment:
      ## Url MetaBase
      - MB_SITE_URL=https://$url_metabase
      - MB_REDIRECT_ALL_REQUESTS_TO_HTTPS=true
      - MB_JETTY_PORT=3000
      - MB_JETTY_HOST=0.0.0.0

      ## Dados postgres
      - MB_DB_MIGRATION_LOCATION=none
      - MB_DB_TYPE=postgres
      - MB_DB_DBNAME=metabase
      - MB_DB_PORT=5432
      - MB_DB_USER=postgres
      - MB_DB_PASS=$senha_postgres
      - MB_DB_HOST=postgres
      - MB_AUTOMIGRATE=false

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.metabase.rule=Host(\`$url_metabase\`)
        - traefik.http.services.metabase.loadbalancer.server.port=3000
        - traefik.http.routers.metabase.service=metabase
        - traefik.http.routers.metabase.entrypoints=websecure
        - traefik.http.routers.metabase.tls=true
        - traefik.http.routers.metabase.tls.certresolver=letsencryptresolver

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  metabase_data:
    external: true
    name: metabase_data

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do metabase"
fi
STACK_NAME="metabase"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c metabase.yaml metabase > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do metabase"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "metabase" para verificar se o serviço esta online
wait_stack "metabase"

cd dados_vps

cat > dados_metabase <<EOL
[ METABASE ]

Dominio do metabase: https://$url_metabase

Usuario: Precisa criar no primeiro acesso do metabase

Senha: Precisa criar no primeiro acesso do metabase

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ METABASE ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_metabase\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do metabase\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do metabase\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##  ██████╗ ██████╗  ██████╗  ██████╗ 
## ██╔═══██╗██╔══██╗██╔═══██╗██╔═══██╗
## ██║   ██║██║  ██║██║   ██║██║   ██║
## ██║   ██║██║  ██║██║   ██║██║   ██║
## ╚██████╔╝██████╔╝╚██████╔╝╚██████╔╝
##  ╚═════╝ ╚═════╝  ╚═════╝  ╚═════╝ 
                                   
ferramenta_odoo() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_odoo

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o Odoo (ex: odoo.sinergialucrativa.com): \e[0m" && read -r url_odoo
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_odoo
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ##Informação do Dominio
    echo -e "\e[33mDominio para o Odoo:\e[97m $url_odoo\e[0m"
    echo ""
    
     ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_odoo

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO ODOO \e[33m[1/3]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO ODOO \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando senha do postgres
senha_postgres_odoo=$(openssl rand -hex 16)

## Criando a stack
cat > odoo.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  odoo_app:
    image: odoo:16.0

    volumes:
      - odoo_web_data1:/var/lib/odoo
      - odoo_web_data2:/config:/etc/odoo
      - odoo_web_data3:/addons:/mnt/extra-addons

    networks:
      - $nome_rede_interna

    environment:
      ## Dados postgres do Odoo
      - HOST=odoo_db
      - USER=odoo
      - PASSWORD=$senha_postgres_odoo

    deploy:
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.odoo.rule=Host(\`$url_odoo\`)
        - traefik.http.routers.odoo.entrypoints=websecure
        - traefik.http.routers.odoo.tls=true
        - traefik.http.routers.odoo.tls.certresolver=letsencryptresolver
        - traefik.http.services.odoo.loadbalancer.server.port=8069

## --------------------------- ANDROMEDA --------------------------- ##

  odoo_db:
    image: postgres:15

    volumes:
      - odoo_db_data:/var/lib/postgresql/data/pgdata

    networks:
      - $nome_rede_interna
    ports:
      - 543:45432

    environment:
      ## Dados Postgres
      - POSTGRES_DB=postgres
      - POSTGRES_PASSWORD=$senha_postgres_odoo
      - POSTGRES_USER=odoo
      - PGDATA=/var/lib/postgresql/data/pgdata
    deploy:
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  odoo_web_data1:
    external: true
    name: odoo_web_data1
  odoo_web_data2:
    external: true
    name: odoo_web_data2
  odoo_web_data3:
    external: true
    name: odoo_web_data3
  odoo_db_data:
    external: true
    name: odoo_db_data

networks:
  $nome_rede_interna:
    external: true
    attachable: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do odoo"
fi
STACK_NAME="odoo"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c odoo.yaml odoo > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Odoo"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_odoo para verificar se o serviço esta online
wait_stack "odoo"

cd dados_vps

cat > dados_odoo <<EOL
[ ODOO ]

Dominio do odoo: https://$url_odoo

Usuario: Precisa criar no primeiro acesso do Odoo

Senha: Precisa criar no primeiro acesso do Odoo

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ ODOO ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_odoo\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do Odoo\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do Odoo\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##  ██████╗██╗  ██╗ █████╗ ████████╗██╗    ██╗ ██████╗  ██████╗ ████████╗
## ██╔════╝██║  ██║██╔══██╗╚══██╔══╝██║    ██║██╔═══██╗██╔═══██╗╚══██╔══╝
## ██║     ███████║███████║   ██║   ██║ █╗ ██║██║   ██║██║   ██║   ██║   
## ██║     ██╔══██║██╔══██║   ██║   ██║███╗██║██║   ██║██║   ██║   ██║   
## ╚██████╗██║  ██║██║  ██║   ██║   ╚███╔███╔╝╚██████╔╝╚██████╔╝   ██║   
##  ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚══╝╚══╝  ╚═════╝  ╚═════╝    ╚═╝   
##
##    ██████╗██╗      █████╗ ██╗██████╗ ████████╗ ██████╗ ███╗   ██╗
##   ██╔════╝██║     ██╔══██╗██║██╔══██╗╚══██╔══╝██╔═══██╗████╗  ██║
##   ██║     ██║     ███████║██║██████╔╝   ██║   ██║   ██║██╔██╗ ██║
##   ██║     ██║     ██╔══██║██║██╔══██╗   ██║   ██║   ██║██║╚██╗██║
##   ╚██████╗███████╗██║  ██║██║██║  ██║   ██║   ╚██████╔╝██║ ╚████║
##    ╚═════╝╚══════╝╚═╝  ╚═╝╚═╝╚═╝  ╚═╝   ╚═╝    ╚═════╝ ╚═╝  ╚═══╝
                                                               
ferramenta_chatwoot_clairton() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_chatwoot

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/5\e[0m"
    echo -en "\e[33mDigite o Dominio para o Chatwoot (ex: chatwoot.sinergialucrativa.com): \e[0m" && read -r url_chatwoot
    echo ""
    
    ## Pega o nome do dominio para ser o nome da empresa
    nome_empresa_chatwoot="$nome_servidor"
    
    ## Pergunta o email SMTP
    echo -e "\e[97mPasso$amarelo 2/5\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_admin_chatwoot
    echo ""
    
    ## Define o dominio SMTP com o dominio do email
    dominio_smtp_chatwoot=$(echo "$email_admin_chatwoot" | cut -d "@" -f 2)
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 3/5\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_email_chatwoot
    echo ""
    
    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 4/5\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r smtp_email_chatwoot
    echo ""
    
    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 5/5\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_chatwoot
    
    
    ## Verifica se a porta é 465, se sim deixa o ssl true, se não, deixa false 
    if [ "$porta_smtp_chatwoot" -eq 465 ]; then
     sobre_ssl=true
    else
     sobre_ssl=false
    fi
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_chatwoot
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL
    echo -e "\e[33mDominio do Chatwoot:\e[97m $url_chatwoot\e[0m"
    echo ""

    ## Informação sobre Nome da Empresa
    echo -e "\e[33mNome da Empresa:\e[97m $nome_empresa_chatwoot\e[0m"
    echo ""

    ## Informação sobre Email de SMTP
    echo -e "\e[33mEmail do SMTP:\e[97m $email_admin_chatwoot\e[0m"
    echo ""

    ## Informação sobre Senha de SMTP
    echo -e "\e[33mSenha do SMTP:\e[97m $senha_email_chatwoot\e[0m"
    echo ""

    ## Informação sobre Host SMTP
    echo -e "\e[33mHost SMTP:\e[97m $smtp_email_chatwoot\e[0m"
    echo ""

    ## Informação sobre Porta SMTP
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_chatwoot\e[0m"
    echo ""
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_chatwoot

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done


## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO CHATWOOT CLAIRTON \e[33m[1/6]\e[0m"
echo ""
sleep 1

## Ativa a função dados para pegar os dados da vps
dados

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES E REDIS \e[33m[2/6]\e[0m"
echo ""
sleep 1

## Aqui vamos fazer uma verificação se já existe Postgres e redis instalado
## Se tiver ele vai criar um banco de dados no postgres ou perguntar se deseja apagar o que já existe e criar outro

## Verifica container postgres e cria banco no postgres
verificar_container_postgres
if [ $? -eq 0 ]; then
    pegar_senha_postgres > /dev/null 2>&1
else
    ferramenta_postgres #> /dev/null 2>&1
    pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "chatwoot_uno"

if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Verificando/Instalando Postgres"
else
    echo "1/2 - [ OFF ] - Verificando/Instalando Postgres"
fi

## Verifica container redis
verificar_container_redis
if [ $? -eq 0 ]; then
    echo ""
else
    ferramenta_redis > /dev/null 2>&1
fi
if [ $? -eq 0 ]; then
    echo "2/2 - [ OK ] - Verificando/Instalando Redis"
else
    echo "2/2 - [ OFF ] - Verificando/Instalando Redis"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO CHATWOOT CLAIRTON \e[33m[3/6]\e[0m"
echo ""
sleep 1

## Neste passo vamos estar criando a Stack yaml do Chatwoot na pasta /root/
## Isso possibilitará que o usuario consiga edita-lo posteriormente

## Depois vamos instalar o Chatwoot e verificar se esta tudo certo.

## Criando key aleatória
encryption_key=$(openssl rand -hex 16)

## Criando a stack
cat > chatwoot_uno.yaml <<EOL
version: "3.7"
services:
  chatwoot_uno_app:
    image: clairton/chatwoot:v3.6.1-uno ## Versão do Chatwoot CLAIRTON
    command: bundle exec rails s -p 3000 -b 0.0.0.0
    entrypoint: docker/entrypoints/rails.sh
    volumes:
      - chatwoot_uno_data:/app/storage ## Diretório dos arquivos de conversa
      - chatwoot_uno_public_orion:/app ## Diretório de todos os arquivos do chatwoot
    networks:
      - $nome_rede_interna ## Nome da rede interna
    environment:
      - CHATWOOT_HUB_URL=https://oriondesign.art.br/setup#
      - INSTALLATION_NAME=$nome_empresa_chatwoot ## Nome da empresa
      - NODE_ENV=production
      - RAILS_ENV=production
      - INSTALLATION_ENV=docker
      - SECRET_KEY_BASE=$encryption_key ## Key aleatória gerada aleatóriamente
      - FRONTEND_URL=https://$url_chatwoot ## Url do Chatwoot
      - DEFAULT_LOCALE=pt_BR
      - FORCE_SSL=true
      - ENABLE_ACCOUNT_SIGNUP=false ## false = Desativar novas inscrições no inicio | true = Ativar novas inscrições no inicio
      - REDIS_URL=redis://redis:6379
      - POSTGRES_HOST=postgres
      - POSTGRES_USERNAME=postgres
      - POSTGRES_PASSWORD=$senha_postgres ## Senha do postgres
      - POSTGRES_DATABASE=chatwoot_uno
      - ACTIVE_STORAGE_SERVICE=local
      - RAILS_LOG_TO_STDOUT=true
      - USE_INBOX_AVATAR_FOR_BOT=true
      - MAILER_SENDER_EMAIL=$email_admin_chatwoot <$email_admin_chatwoot> ## Email SMTP
      - SMTP_DOMAIN=$dominio_smtp_chatwoot ## Dominio do email
      - SMTP_ADDRESS=$smtp_email_chatwoot ## Host SMTP
      - SMTP_PORT=$porta_smtp_chatwoot ## Porta SMTP
      - SMTP_SSL=$sobre_ssl ## Se a porta for 465 = true | Se a porta for 587 = false
      - SMTP_USERNAME=$email_admin_chatwoot ## Email SMTP
      - SMTP_PASSWORD=$senha_email_chatwoot ## Senha do SMTP
      - SMTP_AUTHENTICATION=login
      - SMTP_ENABLE_STARTTLS_AUTO=true
      - SMTP_OPENSSL_VERIFY_MODE=peer
      - MAILER_INBOUND_EMAIL_DOMAIN=$email_admin_chatwoot ## Email SMTP
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.chatwoot_uno_app.rule=Host(\`$url_chatwoot\`)
        - traefik.http.routers.chatwoot_uno_app.entrypoints=websecure
        - traefik.http.routers.chatwoot_uno_app.tls.certresolver=letsencryptresolver
        - traefik.http.routers.chatwoot_uno_app.priority=1
        - traefik.http.routers.chatwoot_uno_app.service=chatwoot_uno_app
        - traefik.http.services.chatwoot_uno_app.loadbalancer.server.port=3000 
        - traefik.http.services.chatwoot_uno_app.loadbalancer.passhostheader=true 
        - traefik.http.middlewares.sslheader.headers.customrequestheaders.X-Forwarded-Proto=https
        - traefik.http.routers.chatwoot_uno_app.middlewares=sslheader@docker

  chatwoot_uno_sidekiq:
    image: clairton/chatwoot:v3.6.1-uno
    command: bundle exec sidekiq -C config/sidekiq.yml
    volumes:
      - chatwoot_uno_data:/app/storage ## Diretório dos arquivos de conversa
      - chatwoot_uno_public_orion:/app ## Diretório de todos os arquivos do chatwoot
    networks:
      - $nome_rede_interna ## Nome da rede interna
    environment:
      - CHATWOOT_HUB_URL=https://oriondesign.art.br/setup#
      - INSTALLATION_NAME=$nome_empresa_chatwoot ## Nome da empresa
      - NODE_ENV=production
      - RAILS_ENV=production
      - INSTALLATION_ENV=docker
      - SECRET_KEY_BASE=$encryption_key ## Key aleatória gerada aleatóriamente
      - FRONTEND_URL=https://$url_chatwoot ## Url do Chatwoot
      - DEFAULT_LOCALE=pt_BR
      - FORCE_SSL=true
      - ENABLE_ACCOUNT_SIGNUP=false ## false = Desativar novas inscrições no inicio | true = Ativar novas inscrições no inicio
      - REDIS_URL=redis://redis:6379
      - POSTGRES_HOST=postgres
      - POSTGRES_USERNAME=postgres
      - POSTGRES_PASSWORD=$senha_postgres ## Senha do postgres
      - POSTGRES_DATABASE=chatwoot_uno
      - ACTIVE_STORAGE_SERVICE=local
      - RAILS_LOG_TO_STDOUT=true
      - USE_INBOX_AVATAR_FOR_BOT=true
      - MAILER_SENDER_EMAIL=$email_admin_chatwoot <$email_admin_chatwoot> ## Email SMTP
      - SMTP_DOMAIN=$dominio_smtp_chatwoot ## Dominio do email
      - SMTP_ADDRESS=$smtp_email_chatwoot ## Host SMTP
      - SMTP_PORT=$porta_smtp_chatwoot ## Porta SMTP
      - SMTP_SSL=$sobre_ssl ## Se a porta for 465 = true | Se a porta for 587 = false
      - SMTP_USERNAME=$email_admin_chatwoot ## Email SMTP
      - SMTP_PASSWORD=$senha_email_chatwoot ## Senha do SMTP
      - SMTP_AUTHENTICATION=login
      - SMTP_ENABLE_STARTTLS_AUTO=true
      - SMTP_OPENSSL_VERIFY_MODE=peer
      - MAILER_INBOUND_EMAIL_DOMAIN=$email_admin_chatwoot ## Email SMTP
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

volumes:
  chatwoot_uno_data:
    external: true
    name: chatwoot_uno_data
  chatwoot_uno_public_orion:
    external: true
    name: chatwoot_uno_public_orion

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Chatwoot"
fi
STACK_NAME="chatwoot_uno"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c chatwoot_uno.yaml chatwoot_uno > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do Chatwoot"
#fi

## Mensagem de Passo
echo -e "\e[97m• ESPERANDO SERVIÇO DO CHATWOOT ESTAR PRONTO \e[33m[4/6]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_chatwoot para verificar se o serviço esta online
wait_stack "chatwoot_uno"

## Mensagem de Passo
echo -e "\e[97m• REINICIANDO CHATWOOT \e[33m[5/6]\e[0m"
echo ""
sleep 1

## Aqui vamos estar migrando o banco de dados usando o comando "bundle exec rails db:chatwoot_prepare"

## Basicamente voce poderia entrar no banco de dados do chatwoot e executar o comando por lá tambem

container_name="chatwoot_uno_chatwoot_uno_app"

max_wait_time=1200

wait_interval=60

elapsed_time=0

while [ $elapsed_time -lt $max_wait_time ]; do
  CONTAINER_ID=$(docker ps -q --filter "name=$container_name")
  if [ -n "$CONTAINER_ID" ]; then
    break
  fi
  sleep $wait_interval
  elapsed_time=$((elapsed_time + wait_interval))
done

if [ -z "$CONTAINER_ID" ]; then
  echo "O contêiner não foi encontrado após $max_wait_time segundos."
  exit 1
fi

docker exec -it "$CONTAINER_ID" bundle exec rails db:chatwoot_prepare
if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Executando no container: bundle exec rails db:chatwoot_prepare"
else
    echo "1/1 - [ OFF ] - Executando no container: bundle exec rails db:chatwoot_prepare"
    echo "Não foi possivel migrar o banco de dados"
fi
## Mensagem de Passo
echo -e "\e[97m• ATIVANDO FUNÇÕES DO SUPER ADMIN \e[33m[6/6]\e[0m"
echo ""
sleep 1

##  Aqui vamos alterar um dado no postgres para liberar algumas funções ocultas no painel de super admin

wait_for_postgres

docker exec -i $CONTAINER_ID psql -U postgres <<EOF
\c chatwoot_uno;
update installation_configs set locked = false;
\q
EOF
if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Modificando tabela installation_configs no postgres"
else
    echo "1/1 - [ OFF ] - Modificando tabela installation_configs no postgres"
    echo "Não foi possivel liberar as funções do super_admin"
fi

## Salvando informações da instalação dentro de /dados_vps/
cd dados_vps

cat > dados_chatwoot_uno <<EOL
[ CHATWOOT CLAIRTON ]

Dominio do Chatwoot: https://$url_chatwoot

Usuario: Precisa criar dentro do Chatwoot

Senha: Precisa criar dentro do Chatwoot
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ CHATWOOT CLAIRTON ]\e[0m"
echo ""

echo -e "\e[97mDominio:\e[33m https://$url_chatwoot\e[0m"
echo ""

echo -e "\e[97mUsuario:\e[33m Precisa criar dentro do Chatwoot\e[0m"
echo ""

echo -e "\e[97mSenha:\e[33m Precisa criar dentro do Chatwoot\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##  ██████╗██╗  ██╗ █████╗ ████████╗██╗    ██╗ ██████╗  ██████╗ ████████╗
## ██╔════╝██║  ██║██╔══██╗╚══██╔══╝██║    ██║██╔═══██╗██╔═══██╗╚══██╔══╝
## ██║     ███████║███████║   ██║   ██║ █╗ ██║██║   ██║██║   ██║   ██║   
## ██║     ██╔══██║██╔══██║   ██║   ██║███╗██║██║   ██║██║   ██║   ██║   
## ╚██████╗██║  ██║██║  ██║   ██║   ╚███╔███╔╝╚██████╔╝╚██████╔╝   ██║   
##  ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝    ╚══╝╚══╝  ╚═════╝  ╚═════╝    ╚═╝   
##
##         ███╗   ██╗███████╗███████╗████████╗ ██████╗ ██████╗ 
##         ████╗  ██║██╔════╝██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗
##         ██╔██╗ ██║█████╗  ███████╗   ██║   ██║   ██║██████╔╝
##         ██║╚██╗██║██╔══╝  ╚════██║   ██║   ██║   ██║██╔══██╗
##         ██║ ╚████║███████╗███████║   ██║   ╚██████╔╝██║  ██║
##         ╚═╝  ╚═══╝╚══════╝╚══════╝   ╚═╝    ╚═════╝ ╚═╝  ╚═╝
                                                    
                                                               
ferramenta_chatwoot_nestor() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_chatwoot

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/6\e[0m"
    echo -en "\e[33mDigite o Dominio para o Chatwoot (ex: chatwoot.sinergialucrativa.com): \e[0m" && read -r url_chatwoot
    echo ""
    
    ## Pega o nome do dominio para ser o nome da empresa
    nome_empresa_chatwoot="$nome_servidor"
    
    ## Pergunta o email SMTP
    echo -e "\e[97mPasso$amarelo 2/6\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_admin_chatwoot
    echo ""
    
    ## Define o dominio SMTP com o dominio do email
    dominio_smtp_chatwoot=$(echo "$email_admin_chatwoot" | cut -d "@" -f 2)

    ##Pergunta o usuário do Email SMTP
    echo -e "\e[97mPasso$amarelo 3/6\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuário para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r user_smtp_chatwoot
    echo ""
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 4/6\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_email_chatwoot
    echo ""
    
    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 5/6\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r smtp_email_chatwoot
    echo ""
    
    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 6/6\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_chatwoot
    
    
    ## Verifica se a porta é 465, se sim deixa o ssl true, se não, deixa false 
    if [ "$porta_smtp_chatwoot" -eq 465 ]; then
     sobre_ssl=true
    else
     sobre_ssl=false
    fi
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_chatwoot
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL
    echo -e "\e[33mDominio do Chatwoot:\e[97m $url_chatwoot\e[0m"
    echo ""

    ## Informação sobre Nome da Empresa
    echo -e "\e[33mNome da Empresa:\e[97m $nome_empresa_chatwoot\e[0m"
    echo ""

    ## Informação sobre Email de SMTP
    echo -e "\e[33mEmail do SMTP:\e[97m $email_admin_chatwoot\e[0m"
    echo ""

    ## Informação sobre Email de SMTP
    echo -e "\e[33mUser do SMTP:\e[97m $user_smtp_chatwoot\e[0m"
    echo ""

    ## Informação sobre Senha de SMTP
    echo -e "\e[33mSenha do SMTP:\e[97m $senha_email_chatwoot\e[0m"
    echo ""

    ## Informação sobre Host SMTP
    echo -e "\e[33mHost SMTP:\e[97m $smtp_email_chatwoot\e[0m"
    echo ""

    ## Informação sobre Porta SMTP
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_chatwoot\e[0m"
    echo ""
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_chatwoot

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done


## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO CHATWOOT NESTOR \e[33m[1/5]\e[0m"
echo ""
sleep 1

## Ativa a função dados para pegar os dados da vps
dados

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES E REDIS \e[33m[2/5]\e[0m"
echo ""
sleep 1

## Aqui vamos fazer uma verificação se já existe Postgres e redis instalado
## Se tiver ele vai criar um banco de dados no postgres ou perguntar se deseja apagar o que já existe e criar outro

## Verifica container postgres e cria banco no postgres
verificar_container_postgres
if [ $? -eq 0 ]; then
    pegar_senha_postgres > /dev/null 2>&1
else
    ferramenta_postgres #> /dev/null 2>&1
    pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "chatwoot_nestor"

if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Verificando/Instalando Postgres"
else
    echo "1/2 - [ OFF ] - Verificando/Instalando Postgres"
fi

## Verifica container redis
verificar_container_redis
if [ $? -eq 0 ]; then
    echo ""
else
    ferramenta_redis > /dev/null 2>&1
fi
if [ $? -eq 0 ]; then
    echo "2/2 - [ OK ] - Verificando/Instalando Redis"
else
    echo "2/2 - [ OFF ] - Verificando/Instalando Redis"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO CHATWOOT NESTOR \e[33m[3/5]\e[0m"
echo ""
sleep 1

## Neste passo vamos estar criando a Stack yaml do Chatwoot na pasta /root/
## Isso possibilitará que o usuario consiga edita-lo posteriormente

## Depois vamos instalar o Chatwoot e verificar se esta tudo certo.

## Criando key aleatória
encryption_key=$(openssl rand -hex 16)

dados

## Criando a stack
cat > chatwoot_nestor.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  chatwoot_app:
    image: sendingtk/chatwoot:latest ## Versão do Chatwoot
    command: bundle exec rails s -p 3000 -b 0.0.0.0
    entrypoint: docker/entrypoints/rails.sh

    volumes:
      - chatwoot_nestor_storage:/app/storage ## Arquivos de conversa
      - chatwoot_nestor_public:/app/public ## Arquivos de logos
      - chatwoot_nestor_mailer:/app/app/views/devise/mailer ## Arquivos de email
      - chatwoot_nestor_mailers:/app/app/views/mailers ## Arquivos de emails

    networks:
      - $nome_rede_interna ## Nome da rede interna
    
    environment:
      ## Qualquer Url com # no final
      - CHATWOOT_HUB_URL=https://oriondesign.art.br/setup#

      ## Nome da Empresa
      - INSTALLATION_NAME=$nome_empresa_chatwoot

      ## Secret key
      - SECRET_KEY_BASE=$encryption_key

      ## Url Chatwoot
      - FRONTEND_URL=https://$url_chatwoot
      - FORCE_SSL=true

      ## Idioma/Localização padrão
      - DEFAULT_LOCALE=pt_BR
      - TZ=America/Brasil

      ## Google Cloud - Modifique de acordo com os seus dados (lembre-se de mudar no chatwoot_sidekiq)
      #- GOOGLE_OAUTH_CLIENT_ID=369777777777-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com
      #- GOOGLE_OAUTH_CLIENT_SECRET=ABCDEF-GHijklmnoPqrstuvwX-yz1234567
      #- GOOGLE_OAUTH_CALLBACK_URL=https://<your-server-domain>/omniauth/google_oauth2/callback

      ## Dados do Redis
      - REDIS_URL=redis://redis:6379

      ## Dados do Postgres
      - POSTGRES_HOST=postgres
      - POSTGRES_USERNAME=postgres
      - POSTGRES_PASSWORD=$senha_postgres ## Senha do postgres
      - POSTGRES_DATABASE=chatwoot_nestor

      ## Armazenamento
      - ACTIVE_STORAGE_SERVICE=local ## use s3_compatible para MinIO
      #- STORAGE_BUCKET_NAME=chatwoot
      #- STORAGE_ACCESS_KEY_ID=ACCESS_KEY_MINIO
      #- STORAGE_SECRET_ACCESS_KEY=SECRET_KEY_MINIO
      #- STORAGE_REGION=eu-south
      #- STORAGE_ENDPOINT=https://s3.DOMINIO.COM
      #- STORAGE_FORCE_PATH_STYLE=true

      ## Dados do SMTP
      - MAILER_SENDER_EMAIL=$email_admin_chatwoot <$email_admin_chatwoot> ## Email SMTP
      - SMTP_DOMAIN=$dominio_smtp_chatwoot ## Dominio do email
      - SMTP_ADDRESS=$smtp_email_chatwoot ## Host SMTP
      - SMTP_PORT=$porta_smtp_chatwoot ## Porta SMTP
      - SMTP_SSL=$sobre_ssl ## Se a porta for 465 = true | Se a porta for 587 = false
      - SMTP_USERNAME=$user_smtp_chatwoot ## Usuario SMTP
      - SMTP_PASSWORD=$senha_email_chatwoot ## Senha do SMTP
      - SMTP_AUTHENTICATION=login
      - SMTP_ENABLE_STARTTLS_AUTO=true
      - SMTP_OPENSSL_VERIFY_MODE=peer
      - MAILER_INBOUND_EMAIL_DOMAIN=$email_admin_chatwoot ## Email SMTP

      ## Outras configurações
      - NODE_ENV=production
      - RAILS_ENV=production
      - INSTALLATION_ENV=docker
      - RAILS_LOG_TO_STDOUT=true
      - USE_INBOX_AVATAR_FOR_BOT=true
      - ENABLE_ACCOUNT_SIGNUP=false

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.chatwoot_app.rule=Host(\`$url_chatwoot\`)
        - traefik.http.routers.chatwoot_app.entrypoints=websecure
        - traefik.http.routers.chatwoot_app.tls.certresolver=letsencryptresolver
        - traefik.http.routers.chatwoot_app.priority=1
        - traefik.http.routers.chatwoot_app.service=chatwoot_app
        - traefik.http.services.chatwoot_app.loadbalancer.server.port=3000 
        - traefik.http.services.chatwoot_app.loadbalancer.passhostheader=true 
        - traefik.http.middlewares.sslheader.headers.customrequestheaders.X-Forwarded-Proto=https
        - traefik.http.routers.chatwoot_app.middlewares=sslheader@docker

## --------------------------- ANDROMEDA --------------------------- ##

  chatwoot_sidekiq:
    image: sendingtk/chatwoot:latest ## Versão do Chatwoot
    command: bundle exec sidekiq -C config/sidekiq.yml

    volumes:
      - chatwoot_nestor_storage:/app/storage ## Arquivos de conversa
      - chatwoot_nestor_public:/app/public ## Arquivos de logos
      - chatwoot_nestor_mailer:/app/app/views/devise/mailer ## Arquivos de email
      - chatwoot_nestor_mailers:/app/app/views/mailers ## Arquivos de emails

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Qualquer Url com # no final
      - CHATWOOT_HUB_URL=https://oriondesign.art.br/setup#

      ## Nome da Empresa
      - INSTALLATION_NAME=$nome_empresa_chatwoot

      ## Secret key
      - SECRET_KEY_BASE=$encryption_key

      ## Url Chatwoot
      - FRONTEND_URL=https://$url_chatwoot
      - FORCE_SSL=true

      ## Idioma/Localização padrão
      - DEFAULT_LOCALE=pt_BR
      - TZ=America/Brasil

      ## Google Cloud - Modifique de acordo com os seus dados (lembre-se de mudar no chatwoot_sidekiq)
      #- GOOGLE_OAUTH_CLIENT_ID=369777777777-xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx.apps.googleusercontent.com
      #- GOOGLE_OAUTH_CLIENT_SECRET=ABCDEF-GHijklmnoPqrstuvwX-yz1234567
      #- GOOGLE_OAUTH_CALLBACK_URL=https://<your-server-domain>/omniauth/google_oauth2/callback

      ## Dados do Redis
      - REDIS_URL=redis://redis:6379

      ## Dados do Postgres
      - POSTGRES_HOST=postgres
      - POSTGRES_USERNAME=postgres
      - POSTGRES_PASSWORD=$senha_postgres ## Senha do postgres
      - POSTGRES_DATABASE=chatwoot_nestor

      ## Armazenamento
      - ACTIVE_STORAGE_SERVICE=local ## use s3_compatible para MinIO
      #- STORAGE_BUCKET_NAME=chatwoot
      #- STORAGE_ACCESS_KEY_ID=ACCESS_KEY_MINIO
      #- STORAGE_SECRET_ACCESS_KEY=SECRET_KEY_MINIO
      #- STORAGE_REGION=eu-south
      #- STORAGE_ENDPOINT=https://s3.DOMINIO.COM
      #- STORAGE_FORCE_PATH_STYLE=true

      ## Dados do SMTP
      - MAILER_SENDER_EMAIL=$email_admin_chatwoot <$email_admin_chatwoot> ## Email SMTP
      - SMTP_DOMAIN=$dominio_smtp_chatwoot ## Dominio do email
      - SMTP_ADDRESS=$smtp_email_chatwoot ## Host SMTP
      - SMTP_PORT=$porta_smtp_chatwoot ## Porta SMTP
      - SMTP_SSL=$sobre_ssl ## Se a porta for 465 = true | Se a porta for 587 = false
      - SMTP_USERNAME=$user_smtp_chatwoot ## Usuario SMTP
      - SMTP_PASSWORD=$senha_email_chatwoot ## Senha do SMTP
      - SMTP_AUTHENTICATION=login
      - SMTP_ENABLE_STARTTLS_AUTO=true
      - SMTP_OPENSSL_VERIFY_MODE=peer
      - MAILER_INBOUND_EMAIL_DOMAIN=$email_admin_chatwoot ## Email SMTP

      ## Outras configurações
      - NODE_ENV=production
      - RAILS_ENV=production
      - INSTALLATION_ENV=docker
      - RAILS_LOG_TO_STDOUT=true
      - USE_INBOX_AVATAR_FOR_BOT=true
      - ENABLE_ACCOUNT_SIGNUP=false

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  chatwoot_nestor_storage:
    external: true
    name: chatwoot_nestor_storage
  chatwoot_nestor_public:
    external: true
    name: chatwoot_nestor_public
  chatwoot_nestor_mailer:
    external: true
    name: chatwoot_nestor_mailer
  chatwoot_nestor_mailers:
    external: true
    name: chatwoot_nestor_mailers

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Chatwoot"
fi
STACK_NAME="chatwoot_nestor"
stack_editavel # > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do Chatwoot"
#fi
#docker stack deploy --prune --resolve-image always -c chatwoot_nestor.yaml chatwoot_nestor > /dev/null 2>&1

## Mensagem de Passo
echo -e "\e[97m• ESPERANDO SERVIÇO DO CHATWOOT ESTAR PRONTO \e[33m[4/5]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_chatwoot_nestor para verificar se o serviço esta online
wait_stack "chatwoot_nestor"

## Mensagem de Passo
echo -e "\e[97m• PREPARANDO BANCO DE DADOS  \e[33m[5/5]\e[0m"
echo ""
sleep 1

## Aqui vamos estar migrando o banco de dados usando o comando "bundle exec rails db:chatwoot_prepare"

## Basicamente voce poderia entrar no banco de dados do chatwoot e executar o comando por lá tambem

container_name="chatwoot_nestor_chatwoot_app"

max_wait_time=1200

wait_interval=60

elapsed_time=0

while [ $elapsed_time -lt $max_wait_time ]; do
  CONTAINER_ID=$(docker ps -q --filter "name=$container_name")
  if [ -n "$CONTAINER_ID" ]; then
    break
  fi
  sleep $wait_interval
  elapsed_time=$((elapsed_time + wait_interval))
done

if [ -z "$CONTAINER_ID" ]; then
  echo "O contêiner não foi encontrado após $max_wait_time segundos."
  exit 1
fi

docker exec -it "$CONTAINER_ID" bundle exec rails db:chatwoot_prepare

if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Executando no container: bundle exec rails db:chatwoot_prepare"
else
    echo "1/1 - [ OFF ] - Executando no container: bundle exec rails db:chatwoot_prepare"
    echo "Não foi possivel migrar o banco de dados"
fi

## Salvando informações da instalação dentro de /dados_vps/
cd dados_vps

cat > dados_chatwoot_nestor <<EOL
[ CHATWOOT NESTOR ]

Dominio do Chatwoot: https://$url_chatwoot

Usuario: Precisa criar dentro do Chatwoot

Senha: Precisa criar dentro do Chatwoot
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ CHATWOOT NESTOR ]\e[0m"
echo ""

echo -e "\e[97mDominio:\e[33m https://$url_chatwoot\e[0m"
echo ""

echo -e "\e[97mUsuario:\e[33m Precisa criar dentro do Chatwoot\e[0m"
echo ""

echo -e "\e[97mSenha:\e[33m Precisa criar dentro do Chatwoot\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██╗   ██╗███╗   ██╗ ██████╗      █████╗ ██████╗ ██╗
## ██║   ██║████╗  ██║██╔═══██╗    ██╔══██╗██╔══██╗██║
## ██║   ██║██╔██╗ ██║██║   ██║    ███████║██████╔╝██║
## ██║   ██║██║╚██╗██║██║   ██║    ██╔══██║██╔═══╝ ██║
## ╚██████╔╝██║ ╚████║╚██████╔╝    ██║  ██║██║     ██║
##  ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝     ╚═╝  ╚═╝╚═╝     ╚═╝

ferramenta_unoapi() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_unoapi

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio da UnoApi
    echo -e "\e[97mPasso$amarelo 1/11\e[0m"
    echo -en "\e[33mDigite o Dominio para a Uno API (ex: unoapi.sinergialucrativa.com): \e[0m" && read -r url_unoapi
    echo ""

    ##Pergunta o Dominio do Chatwoot
    echo -e "\e[97mPasso$amarelo 2/11\e[0m"
    echo -en "\e[33mDigite o Dominio do Chatwoot já instalado (ex: chatwoot.sinergialucrativa.com): \e[0m" && read -r url_chatwoot_uno
    echo ""

    ##Pergunta o o token do usuario
    echo -e "\e[97mPasso$amarelo 3/11\e[0m"
    echo -en "\e[33mDigite o token de usuario administrador do Chatwoot: \e[0m" && read -r token_chatwoot_uno
    echo ""

    ##Pergunta se quer ignorar mensagens de grupos
    echo -e "\e[97mPasso$amarelo 4/11\e[0m"
    echo -en "\e[33mIgnorar mensagens de grupos (true ou false): \e[0m" && read -r op_1
    echo ""
    
    ## Pergunta se quer ignorar o stauts de transmissão
    echo -e "\e[97mPasso$amarelo 5/11\e[0m"
    echo -en "\e[33mIgnorar Status de Transmissão (true ou false): \e[0m" && read -r op_2
    echo ""

    ## Pergunta se quer ignorar mensagens de trasmissão
    echo -e "\e[97mPasso$amarelo 6/11\e[0m"
    echo -en "\e[33mIgnorar Mensagens de Trasmissão (true ou false): \e[0m" && read -r op_3
    echo ""

    ## Pergunta se quer ignorar mensagem de status
    echo -e "\e[97mPasso$amarelo 7/11\e[0m"
    echo -en "\e[33mIgnorar Mensagem de Status (true ou false): \e[0m" && read -r op_4
    echo ""

    ## Pergunta se quer ignorar as próprias mensagens
    echo -e "\e[97mPasso$amarelo 8/11\e[0m"
    echo -en "\e[33mIgnorar Proprias Mensagens (true ou false): \e[0m" && read -r op_5
    echo ""

    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 9/11\e[0m"
    echo -en "\e[33mEnviar status de conexão (true ou false): \e[0m" && read -r op_6
    echo ""

    ## Pergunta qual é o Access Key do minio
    echo -e "\e[97mPasso$amarelo 10/11\e[0m"
    echo -en "\e[33mAccess Key Minio: \e[0m" && read -r S3_ACCESS_KEY
    echo ""

    ## Pergunta qual é a Secret Key do minio
    echo -e "\e[97mPasso$amarelo 11/11\e[0m"
    echo -en "\e[33mSecret Key Minio: \e[0m" && read -r S3_SECRET_KEY
    echo ""

    ## Pegando senha do rabbitMQ
    pegar_user_senha_rabbitmq

    ## Pegando senha do minio
    pegar_senha_minio

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_unoapi
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    

    echo -e "\e[33mDominio da Uno API:\e[97m $url_unoapi\e[0m"
    echo ""


    echo -e "\e[33mDominio do Chatwoot:\e[97m $url_chatwoot_uno\e[0m"
    echo ""


    echo -e "\e[33mToken do Administrador:\e[97m $token_chatwoot_uno\e[0m"
    echo ""    


    echo -e "\e[33mIgnorar mensagens de grupos:\e[97m $op_1\e[0m"
    echo ""


    echo -e "\e[33mIgnorar Status de Transmissão:\e[97m $op_2\e[0m"
    echo ""

    echo -e "\e[33mIgnorar Mensagens de Trasmissão:\e[97m $op_3\e[0m"
    echo ""


    echo -e "\e[33mIgnorar Mensagem de Status:\e[97m $op_4\e[0m"
    echo ""


    echo -e "\e[33mIgnorar Proprias mensagens:\e[97m $op_5\e[0m"
    echo ""


    echo -e "\e[33mEnviar status de conexão:\e[97m $op_6\e[0m"
    echo ""


    echo -e "\e[33mAccess Key Minio:\e[97m $S3_ACCESS_KEY\e[0m"
    echo ""


    echo -e "\e[33mSecret Key Minio:\e[97m $S3_SECRET_KEY\e[0m"
    echo ""


    echo -e "\e[33mUser RabbitMq:\e[97m $user_rabbit_mqs\e[0m"
    echo ""


    echo -e "\e[33mSenha RabbitMq:\e[97m $senha_rabbit_mqs\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_unoapi

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done


## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DA UNOAPI \e[33m[1/3]\e[0m"
echo ""
sleep 1

## Nada nada nada.. só para aparecer a mensagem de passo..

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO UNO API \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando key Aleatória
##key_unoapi=$(openssl rand -hex 16)

## Criando a stack
cat > unoapi.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  unoapi:
    image: clairton/unoapi-cloud:latest
    entrypoint: yarn cloud

    volumes:
      - unoapi_data:/home/u/app

    networks:
      - $nome_rede_interna

    environment:
      ## Url Uno API
      - BASE_URL=https://$url_unoapi

      ## Token Uno Api
      - UNOAPI_AUTH_TOKEN=any

      ## Configurações da Uno API
      - IGNORE_GROUP_MESSAGES=$op_1
      - IGNORE_BROADCAST_STATUSES=$op_2
      - IGNORE_BROADCAST_MESSAGES=$op_3
      - IGNORE_STATUS_MESSAGE=$op_4
      - IGNORE_OWN_MESSAGES=$op_5
      - REJECT_CALLS=
      - REJECT_CALLS_WEBHOOK=
      - SEND_CONNECTION_STATUS=$op_6

      ## Sobre Webhook
      - WEBHOOK_URL=https://$url_chatwoot_uno/webhooks/whatsapp
      - WEBHOOK_HEADER=api_access_token
      - WEBHOOK_TOKEN=$token_chatwoot_uno

      ## Dados do Minio/S3
      - STORAGE_ENDPOINT=https://$url_s3
      - STORAGE_ACCESS_KEY_ID=$S3_ACCESS_KEY
      - STORAGE_SECRET_ACCESS_KEY=$S3_SECRET_KEY
      - STORAGE_BUCKET_NAME=unoapi
      - STORAGE_FORCE_PATH_STYLE=true

      ## Dados do RabbitMQ
      - AMQP_URL=amqp://$user_rabbit_mqs:$senha_rabbit_mqs@rabbitmq:5672/unoapi
      
      ## Dados do Redis
      - REDIS_URL=redis://redis:6379

      ## Outras configurações
      - LOG_LEVEL=debug
      - UNO_LOG_LEVEL=debug
      - UNOAPI_RETRY_REQUEST_DELAY=1_000

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
      - traefik.enable=true
      - traefik.http.routers.unoapi.rule=Host(\`$url_unoapi\`)
      - traefik.http.routers.unoapi.entrypoints=websecure
      - traefik.http.routers.unoapi.tls.certresolver=letsencryptresolver
      - traefik.http.services.unoapi.loadbalancer.server.port=9876
      - traefik.http.routers.unoapi.priority=1
      - traefik.http.services.unoapi.loadbalancer.passHostHeader=true
      - traefik.http.routers.unoapi.service=unoapi

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  unoapi_data:
    external: true
    name: unoapi_data

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Uno API"
fi
STACK_NAME="unoapi"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c unoapi.yaml unoapi > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do Uno API"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_unoapi para verificar se o serviço esta online
wait_stack "unoapi_unoapi"

cd dados_vps

cat > dados_unoapi <<EOL
[ UNO API ]

Dominio do unoapi: https://$url_unoapi

Auth Token: any

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ UNO API ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_unoapi\e[0m"
echo ""

echo -e "\e[33mPing:\e[97m https://$url_unoapi/ping\e[0m"
echo ""

echo -e "\e[33mAuth Token:\e[97m any\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███╗   ██╗ █████╗ ███╗   ██╗     ██████╗ ██████╗ ███╗   ███╗    ███╗   ██╗ ██████╗ ██████╗ ███████╗███████╗
## ████╗  ██║██╔══██╗████╗  ██║    ██╔════╝██╔═══██╗████╗ ████║    ████╗  ██║██╔═══██╗██╔══██╗██╔════╝██╔════╝
## ██╔██╗ ██║╚█████╔╝██╔██╗ ██║    ██║     ██║   ██║██╔████╔██║    ██╔██╗ ██║██║   ██║██║  ██║█████╗  ███████╗
## ██║╚██╗██║██╔══██╗██║╚██╗██║    ██║     ██║   ██║██║╚██╔╝██║    ██║╚██╗██║██║   ██║██║  ██║██╔══╝  ╚════██║
## ██║ ╚████║╚█████╔╝██║ ╚████║    ╚██████╗╚██████╔╝██║ ╚═╝ ██║    ██║ ╚████║╚██████╔╝██████╔╝███████╗███████║
## ╚═╝  ╚═══╝ ╚════╝ ╚═╝  ╚═══╝     ╚═════╝ ╚═════╝ ╚═╝     ╚═╝    ╚═╝  ╚═══╝ ╚═════╝ ╚═════╝ ╚══════╝╚══════╝
##
##            ██████╗  ██████╗      ██████╗ ██╗   ██╗███████╗██████╗  █████╗ ███████╗ █████╗ 
##            ██╔══██╗██╔═══██╗    ██╔═══██╗██║   ██║██╔════╝██╔══██╗██╔══██╗██╔════╝██╔══██╗
##            ██║  ██║██║   ██║    ██║   ██║██║   ██║█████╗  ██████╔╝███████║███████╗███████║
##            ██║  ██║██║   ██║    ██║▄▄ ██║██║   ██║██╔══╝  ██╔═══╝ ██╔══██║╚════██║██╔══██║
##            ██████╔╝╚██████╔╝    ╚██████╔╝╚██████╔╝███████╗██║     ██║  ██║███████║██║  ██║
##            ╚═════╝  ╚═════╝      ╚══▀▀═╝  ╚═════╝ ╚══════╝╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝

ferramenta_n8n_quepasa() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_n8n_quepasa

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio do N8N
    echo -e "\e[97mPasso$amarelo 1/5\e[0m"
    echo -en "\e[33mDigite o dominio para o N8N (ex: n8n.sinergialucrativa.com): \e[0m" && read -r url_editorn8n
    echo ""
    
    ##Pergunta o Dominio do Webhook
    echo -e "\e[97mPasso$amarelo 2/5\e[0m"
    echo -en "\e[33mDigite o dominio para o Webhook do N8N (ex: webhook.sinergialucrativa.com): \e[0m" && read -r url_webhookn8n
    echo ""

    ##Pergunta Dominio do Chatwoot
    echo -e "\e[97mPasso$amarelo 3/5\e[0m"
    echo -en "\e[33mDigite o dominio do Chatwoot (ex: chatwoot.sinergialucrativa.com): \e[0m" && read -r dominio_chatwoot
    echo ""

    ##Pergunta Dominio do Quepasa
    echo -e "\e[97mPasso$amarelo 4/5\e[0m"
    echo -en "\e[33mDigite o dominio do Quepasa (ex: quepasa.sinergialucrativa.com): \e[0m" && read -r dominio_quepasa
    echo ""

    ##Pergunta Email do Quepasa
    echo -e "\e[97mPasso$amarelo 5/5\e[0m"
    echo -en "\e[33mDigite o email do Quepasa (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_quepasa
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_n8n_quepasa
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do N8N
    echo -e "\e[33mDominio do N8N:\e[97m $url_editorn8n\e[0m"
    echo ""
    
    ## Informação sobre URL do Webhook
    echo -e "\e[33mDominio para o Webhook:\e[97m $url_webhookn8n\e[0m"
    echo ""

    ## Informação sobre URL do Chatwoot
    echo -e "\e[33mDominio do Chatwoot:\e[97m $dominio_chatwoot\e[0m"
    echo ""

    ## Informação sobre URL do Quepasa
    echo -e "\e[33mDominio do Quepasa:\e[97m $dominio_quepasa\e[0m"
    echo ""

    ## Informação Email do Quepasa
    echo -e "\e[33mEmail do Quepasa:\e[97m $email_quepasa\e[0m"
    echo ""

    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_n8n_quepasa

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO N8N \e[33m[1/4]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES E REDIS \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Verifica se tem postgres, se sim pega a senha e cria um banco nele, se não instala, pega a senha e cria o banco
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1

    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "n8n_quepasa"

## Verifica se tem redis, se tiver, continua, se não tiver instala
verificar_container_redis
    if [ $? -eq 0 ]; then
        sleep 1
    else
        ferramenta_redis > /dev/null 2>&1
    fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO N8N \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando key Aleatória
encryption_key=$(openssl rand -hex 16)

## Criando a stack
cat > n8n_quepasa.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  n8n_quepasa_editor:
    image: oriondesign/n8n-quepasa:latest ## Versão do N8N
    command: start

    volumes:
      - n8n_quepasa_data:/home/node/.n8n/nodes

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados do postgres
      - DB_TYPE=postgresdb
      - DB_POSTGRESDB_DATABASE=n8n_quepasa
      - DB_POSTGRESDB_HOST=postgres
      - DB_POSTGRESDB_PORT=5432
      - DB_POSTGRESDB_USER=postgres
      - DB_POSTGRESDB_PASSWORD=$senha_postgres

      ## Dados do Quepasa

      - C8Q_SINGLETHREAD=false
      - C8Q_QUEPASAINBOXCONTROL=1001
      - C8Q_GETCHATWOOTCONTACTS=1002
      - C8Q_QUEPASACHATCONTROL=1003
      - C8Q_CHATWOOTPROFILEUPDATE=1004
      - C8Q_POSTTOWEBCALLBACK=1005
      - C8Q_POSTTOCHATWOOT=1006
      - C8Q_CHATWOOTTOQUEPASAGREETINGS=1007

      - C8Q_QP_BOTTITLE=$nome_servidor
      - C8Q_QP_DEFAULT_USER=$email_quepasa

      - C8Q_CW_PUBLIC_URL=$dominio_chatwoot
      - C8Q_CW_HOST=https://$dominio_chatwoot
      - C8Q_QP_CONTACT=$email_quepasa
      - C8Q_QUEPASA_HOST=https://$dominio_quepasa
      - C8Q_N8N_HOST=https://$url_editorn8n
      - C8Q_N8N_WEBHOOK=https://$url_webhookn8n

      - C8Q_MSGFOR_UNKNOWN_CONTENT=! "Algum EMOJI" ou "Alguma Reação que o sistema não entende ainda ..."
      - C8Q_MSGFOR_EDITED_CONTENT=⚠️ **Essa mensagem foi editada !**
      - C8Q_MSGFOR_ATTACHERROR_CONTENT=** Falha ao baixar anexo !
      - C8Q_MSGFOR_LOCALIZATION_CONTENT=* Localização *
      - C8Q_MSGFOR_REVOKED_CONTENT=❌ Essa mensagem foi apagada !!!
      - C8Q_MSGFOR_CALL_CONTENT=\u2699 O usuário requisitou uma chamada de voz !

      ## Encryption Key
      - N8N_ENCRYPTION_KEY=$encryption_key

      ## Url do N8N
      - N8N_HOST=$url_editorn8n
      - N8N_EDITOR_BASE_URL=https://$url_editorn8n/
      - WEBHOOK_URL=https://$url_webhookn8n/
      - N8N_PROTOCOL=https

      ## Modo do Node
      - NODE_ENV=production

      ## Modo de execução (deletar caso deseje em modo regular)
      - EXECUTIONS_MODE=queue

      ## Dados do Redis
      - QUEUE_BULL_REDIS_HOST=redis
      - QUEUE_BULL_REDIS_PORT=6379
      - QUEUE_BULL_REDIS_DB=2
      - NODE_FUNCTION_ALLOW_EXTERNAL=moment,lodash,moment-with-locales
      - EXECUTIONS_DATA_PRUNE=true
      - EXECUTIONS_DATA_MAX_AGE=336

      ## Timezone
      - GENERIC_TIMEZONE=America/Sao_Paulo
      - TZ=America/Sao_Paulo

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.n8n_quepasa_editor.rule=Host(\`$url_editorn8n\`)
        - traefik.http.routers.n8n_quepasa_editor.entrypoints=websecure
        - traefik.http.routers.n8n_quepasa_editor.priority=1
        - traefik.http.routers.n8n_quepasa_editor.tls.certresolver=letsencryptresolver
        - traefik.http.routers.n8n_quepasa_editor.service=n8n_quepasa_editor
        - traefik.http.services.n8n_quepasa_editor.loadbalancer.server.port=5678
        - traefik.http.services.n8n_quepasa_editor.loadbalancer.passHostHeader=1

## --------------------------- ANDROMEDA --------------------------- ##

  n8n_quepasa_webhook:
    image: oriondesign/n8n-quepasa:latest ## Versão do N8N
    command: webhook

    volumes:
      - n8n_quepasa_data:/home/node/.n8n/nodes

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados do postgres
      - DB_TYPE=postgresdb
      - DB_POSTGRESDB_DATABASE=n8n_quepasa
      - DB_POSTGRESDB_HOST=postgres
      - DB_POSTGRESDB_PORT=5432
      - DB_POSTGRESDB_USER=postgres
      - DB_POSTGRESDB_PASSWORD=$senha_postgres

      ## Dados do Quepasa

      - C8Q_SINGLETHREAD=false
      - C8Q_QUEPASAINBOXCONTROL=1001
      - C8Q_GETCHATWOOTCONTACTS=1002
      - C8Q_QUEPASACHATCONTROL=1003
      - C8Q_CHATWOOTPROFILEUPDATE=1004
      - C8Q_POSTTOWEBCALLBACK=1005
      - C8Q_POSTTOCHATWOOT=1006
      - C8Q_CHATWOOTTOQUEPASAGREETINGS=1007

      - C8Q_QP_BOTTITLE=$nome_servidor
      - C8Q_QP_DEFAULT_USER=$email_quepasa

      - C8Q_CW_PUBLIC_URL=$dominio_chatwoot
      - C8Q_CW_HOST=https://$dominio_chatwoot
      - C8Q_QP_CONTACT=$email_quepasa
      - C8Q_QUEPASA_HOST=https://$dominio_quepasa
      - C8Q_N8N_HOST=https://$url_editorn8n
      - C8Q_N8N_WEBHOOK=https://$url_webhookn8n

      - C8Q_MSGFOR_UNKNOWN_CONTENT=! "Algum EMOJI" ou "Alguma Reação que o sistema não entende ainda ..."
      - C8Q_MSGFOR_EDITED_CONTENT=⚠️ **Essa mensagem foi editada !**
      - C8Q_MSGFOR_ATTACHERROR_CONTENT=** Falha ao baixar anexo !
      - C8Q_MSGFOR_LOCALIZATION_CONTENT=* Localização *
      - C8Q_MSGFOR_REVOKED_CONTENT=❌ Essa mensagem foi apagada !!!
      - C8Q_MSGFOR_CALL_CONTENT=\u2699 O usuário requisitou uma chamada de voz !

      ## Encryption Key
      - N8N_ENCRYPTION_KEY=$encryption_key

      ## Url do N8N
      - N8N_HOST=$url_editorn8n
      - N8N_EDITOR_BASE_URL=https://$url_editorn8n/
      - WEBHOOK_URL=https://$url_webhookn8n/
      - N8N_PROTOCOL=https

      ## Modo do Node
      - NODE_ENV=production

      ## Modo de execução (deletar caso deseje em modo regular)
      - EXECUTIONS_MODE=queue

      ## Dados do Redis
      - QUEUE_BULL_REDIS_HOST=redis
      - QUEUE_BULL_REDIS_PORT=6379
      - QUEUE_BULL_REDIS_DB=3
      - NODE_FUNCTION_ALLOW_EXTERNAL=moment,lodash,moment-with-locales
      - EXECUTIONS_DATA_PRUNE=true
      - EXECUTIONS_DATA_MAX_AGE=336

      ## Timezone
      - GENERIC_TIMEZONE=America/Sao_Paulo
      - TZ=America/Sao_Paulo
      
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.n8n_quepasa_webhook.rule=(Host(\`$url_webhookn8n\`))
        - traefik.http.routers.n8n_quepasa_webhook.entrypoints=websecure
        - traefik.http.routers.n8n_quepasa_webhook.priority=1
        - traefik.http.routers.n8n_quepasa_webhook.tls.certresolver=letsencryptresolver
        - traefik.http.routers.n8n_quepasa_webhook.service=n8n_quepasa_webhook
        - traefik.http.services.n8n_quepasa_webhook.loadbalancer.server.port=5678
        - traefik.http.services.n8n_quepasa_webhook.loadbalancer.passHostHeader=1

## --------------------------- ANDROMEDA --------------------------- ##

  n8n_quepasa_worker:
    image: oriondesign/n8n-quepasa:latest ## Versão do N8N
    command: worker --concurrency=10

    volumes:
      - n8n_quepasa_data:/home/node/.n8n/nodes

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados do postgres
      - DB_TYPE=postgresdb
      - DB_POSTGRESDB_DATABASE=n8n_quepasa
      - DB_POSTGRESDB_HOST=postgres
      - DB_POSTGRESDB_PORT=5432
      - DB_POSTGRESDB_USER=postgres
      - DB_POSTGRESDB_PASSWORD=$senha_postgres

      ## Dados do Quepasa

      - C8Q_SINGLETHREAD=false
      - C8Q_QUEPASAINBOXCONTROL=1001
      - C8Q_GETCHATWOOTCONTACTS=1002
      - C8Q_QUEPASACHATCONTROL=1003
      - C8Q_CHATWOOTPROFILEUPDATE=1004
      - C8Q_POSTTOWEBCALLBACK=1005
      - C8Q_POSTTOCHATWOOT=1006
      - C8Q_CHATWOOTTOQUEPASAGREETINGS=1007

      - C8Q_QP_BOTTITLE=$nome_servidor
      - C8Q_QP_DEFAULT_USER=$email_quepasa

      - C8Q_CW_PUBLIC_URL=$dominio_chatwoot
      - C8Q_CW_HOST=https://$dominio_chatwoot
      - C8Q_QP_CONTACT=$email_quepasa
      - C8Q_QUEPASA_HOST=https://$dominio_quepasa
      - C8Q_N8N_HOST=https://$url_editorn8n
      - C8Q_N8N_WEBHOOK=https://$url_webhookn8n

      - C8Q_MSGFOR_UNKNOWN_CONTENT=! "Algum EMOJI" ou "Alguma Reação que o sistema não entende ainda ..."
      - C8Q_MSGFOR_EDITED_CONTENT=⚠️ **Essa mensagem foi editada !**
      - C8Q_MSGFOR_ATTACHERROR_CONTENT=** Falha ao baixar anexo !
      - C8Q_MSGFOR_LOCALIZATION_CONTENT=* Localização *
      - C8Q_MSGFOR_REVOKED_CONTENT=❌ Essa mensagem foi apagada !!!
      - C8Q_MSGFOR_CALL_CONTENT=\u2699 O usuário requisitou uma chamada de voz !

      ## Encryption Key
      - N8N_ENCRYPTION_KEY=$encryption_key

      ## Url do N8N
      - N8N_HOST=$url_editorn8n
      - N8N_EDITOR_BASE_URL=https://$url_editorn8n/
      - WEBHOOK_URL=https://$url_webhookn8n/
      - N8N_PROTOCOL=https

      ## Modo do Node
      - NODE_ENV=production

      ## Modo de execução (deletar caso deseje em modo regular)
      - EXECUTIONS_MODE=queue

      ## Dados do Redis
      - QUEUE_BULL_REDIS_HOST=redis
      - QUEUE_BULL_REDIS_PORT=6379
      - QUEUE_BULL_REDIS_DB=2
      - NODE_FUNCTION_ALLOW_EXTERNAL=moment,lodash,moment-with-locales
      - EXECUTIONS_DATA_PRUNE=true
      - EXECUTIONS_DATA_MAX_AGE=336

      ## Timezone
      - GENERIC_TIMEZONE=America/Sao_Paulo
      - TZ=America/Sao_Paulo

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  n8n_quepasa_data:
    external: true
    name: n8n_quepasa_data

networks:
  $nome_rede_interna:
    name: $nome_rede_interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do N8N Quepasa"
fi
STACK_NAME="n8n_quepasa"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c n8n_quepasa.yaml n8n_quepasa > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do N8N Quepasa"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_n8n para verificar se o serviço esta online
wait_stack "n8n_quepasa"

cd dados_vps

cat > dados_n8n_quepasa <<EOL
[ N8N QUEPASA ]

Dominio do N8N: https://$url_editorn8n

Dominio do N8N: https://$url_webhookn8n

Email: Precisa criar no primeiro acesso do N8N

Senha: Precisa criar no primeiro acesso do N8N

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ N8N QUEPASA ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_editorn8n\e[0m"
echo ""

echo -e "\e[33mEmail:\e[97m Precisa criar no primeiro acesso do N8N\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do N8N\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}


##  ██████╗ ██╗   ██╗███████╗██████╗  █████╗ ███████╗ █████╗ 
## ██╔═══██╗██║   ██║██╔════╝██╔══██╗██╔══██╗██╔════╝██╔══██╗
## ██║   ██║██║   ██║█████╗  ██████╔╝███████║███████╗███████║
## ██║▄▄ ██║██║   ██║██╔══╝  ██╔═══╝ ██╔══██║╚════██║██╔══██║
## ╚██████╔╝╚██████╔╝███████╗██║     ██║  ██║███████║██║  ██║
##  ╚══▀▀═╝  ╚═════╝ ╚══════╝╚═╝     ╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝

ferramenta_quepasa() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_quepasa

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/2\e[0m"
    echo -en "\e[33mDigite o dominio para o Quepasa (ex: quepasa.sinergialucrativa.com): \e[0m" && read -r url_quepasa
    echo ""

    ##Pergunta o email para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/2\e[0m"
    echo -en "\e[33mDigite o email para o Quepasa (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_quepasa
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_quepasa
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do quepasa
    echo -e "\e[33mDominio do Quepasa:\e[97m $url_quepasa\e[0m"
    echo ""

    ## Informação sobre email do quepasa
    echo -e "\e[33mEmail do Quepasa:\e[97m $email_quepasa\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_minio

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO QUEPASA \e[33m[1/3]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO QUEPASA \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando a stack

key_quepasa=$(openssl rand -hex 16)

cat > quepasa.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

    quepasa:
      image: deividms/quepasa:v3.24.517.1231 ## Imagem/versão do Quepasa
        
      volumes:
        - quepasa_volume:/opt/quepasa

      networks:
        - $nome_rede_interna

      environment:
        ## Dados de acesso
        - DOMAIN=$url_quepasa

        ## Email Quepasa
        - EMAIL=$email_quepasa
        - QUEPASA_BASIC_AUTH_USER=$email_quepasa
        - QUEPASA_BASIC_AUTH_PASSWORD=$email_quepasa

        ## Titulo no celular
        - APP_TITLE=OrionDesign ## Mude aqui o nome que vai aparecer no celular.

        ## TimeZone
        - TZ=America/Sao_Paulo

        ## Configurações para o WhatsApp
        - GROUPS=true
        - BROADCASTS=false
        - READRECEIPTS=forcedfalse
        - CALLS=true
        - READUPDATE=false
        - LOGLEVEL=DEBUG

        ## Configurações quepasa
        - QUEPASA_HOST_NAME=Quepasa
        - QUEPASA_MEMORY_LIMIT=4096M
        - WEBSOCKETSSL=true
        - REMOVEDIGIT9=true
        - SIGNING_SECRET=$key_quepasa

        ## Webhook
        #- WEBHOOK_QUEPASA=webhook.oriondesign.art.br/webhook/quepasa
        #- WEBHOOK_TESTE_QUEPASA=n8n.oriondesign.art.br/webhook-test/quepasa
            
        ## Portas
        - QUEPASA_EXTERNAL_PORT=31000
        - QUEPASA_INTERNAL_PORT=31000
        - WEBAPIPORT=31000

        ## Outras configurações
        - DEBUGREQUESTS=false
        - SYNOPSISLENGTH=500
        - METRICS_HOST=
        - METRICS_PORT=9392
        - MIGRATIONS=/builder/migrations
        - DEBUGJSONMESSAGES=false
        - HTTPLOGS=false

        ## WHATSMEOW SERVICE
        - WHATSMEOW_LOGLEVEL=WARN
        - WHATSMEOW_DBLOGLEVEL=WARN

        ## Env Mode
        - APP_ENV=production
        - NODE_ENV=production

    deploy:
      mode: replicated
      replicas: 1
      placement:
          constraints:
          - node.role == manager
      resources:
          limits:
              cpus: "2"
              memory: 2096M
                      
      labels:
        - traefik.enable=true
        - traefik.http.routers.quepasa.rule=Host(\`$url_quepasa\`)
        - traefik.http.routers.quepasa.tls=true
        - traefik.http.routers.quepasa.entrypoints=web,websecure
        - traefik.http.routers.quepasa.tls.certresolver=letsencryptresolver
        - traefik.http.routers.quepasa.service=quepasa
        - traefik.http.routers.quepasa.priority=1      
        - traefik.http.middlewares.quepasa.headers.SSLRedirect=true
        - traefik.http.middlewares.quepasa.headers.STSSeconds=315360000
        - traefik.http.middlewares.quepasa.headers.browserXSSFilter=true
        - traefik.http.middlewares.quepasa.headers.contentTypeNosniff=true
        - traefik.http.middlewares.quepasa.headers.forceSTSHeader=true
        - traefik.http.middlewares.quepasa.headers.SSLHost=\${QUEPASA_HOST}
        - traefik.http.middlewares.quepasa.headers.STSIncludeSubdomains=true
        - traefik.http.middlewares.quepasa.headers.STSPreload=true
        - traefik.http.services.quepasa.loadbalancer.server.port=31000
        - traefik.http.services.quepasa.loadbalancer.passHostHeader=true              

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  quepasa_volume:
    external: true
    name: quepasa_volume

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna 
EOL

if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Quepasa"

fi
STACK_NAME="quepasa"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c quepasa.yaml quepasa > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Quepasa"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_quepasa para verificar se o serviço esta online
wait_stack "quepasa"

cd dados_vps

cat > dados_quepasa <<EOL
[ QUEPASA ]

Dominio do quepasa: https://$url_quepasa

Email: $email_quepasa

Usuario: Precisa de criar ao entrar no /setup

Senha: Precisa de criar ao entrar no /setup
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ QUEPASA ]\e[0m"
echo ""
echo -e "\e[33mDominio:\e[97m https://$url_quepasa\e[0m"
echo ""
echo -e "\e[33mEmail:\e[97m $email_quepasa\e[0m"
echo ""
echo -e "\e[33mUrl Setup:\e[97m https://$url_quepasa/setup\e[0m"
echo ""
echo -e "\e[33mUsuario:\e[97m Precisa de criar ao entrar no setup\e[0m"
echo ""
echo -e "\e[33mSenha:\e[97m Precisa de criar ao entrar no setup\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██████╗ ██╗███████╗██╗   ██╗ █████╗ ██╗
## ██╔══██╗██║██╔════╝╚██╗ ██╔╝██╔══██╗██║
## ██║  ██║██║█████╗   ╚████╔╝ ███████║██║
## ██║  ██║██║██╔══╝    ╚██╔╝  ██╔══██║██║
## ██████╔╝██║██║        ██║██╗██║  ██║██║
## ╚═════╝ ╚═╝╚═╝        ╚═╝╚═╝╚═╝  ╚═╝╚═╝

ferramenta_dify() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_dify

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio do Dify AI
    echo -e "\e[97mPasso$amarelo 1/8\e[0m"
    echo -en "\e[33mDigite o dominio para o Dify AI (ex: dify.sinergialucrativa.com): \e[0m" && read -r url_dify
    echo ""

    ##Pergunta o Dominio do Qdrant
    #read -r ip _ <<<$(hostname -I)
    #echo -e "\e[97mPasso$amarelo 2/10\e[0m"
    #echo -en "\e[33mDigite o dominio do Qdrant (ex: http://$ip  ou http://qdrant.sinergialucrativa.com): \e[0m" && read -r url_quedrant
    #echo ""

    ##Pergunta a Api Key do Qdrant
    #key_dify_rand=$(openssl rand -hex 16)
    #echo -e "\e[97mPasso$amarelo 3/10\e[0m"
    #echo -en "\e[33mDigite a Api Key do Qdrant (ex: $key_dify_rand): \e[0m" && read -r apikey_qdrant
    #echo ""

    ##Pergunta o Email SMTP
    echo -e "\e[97mPasso$amarelo 2/8\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_dify
    echo ""

    ##Pergunta o usuário do Email SMTP
    echo -e "\e[97mPasso$amarelo 3/8\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuário para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r user_email_dify
    echo ""

    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 4/8\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_email_dify
    echo ""

    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 5/8\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r smtp_email_dify
    echo ""

    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 6/9\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_dify
    echo ""

    ## Pergunta qual é o Access Key do minio
    echo -e "\e[97mPasso$amarelo 7/8\e[0m"
    echo -en "\e[33mAccess Key Minio: \e[0m" && read -r S3_ACCESS_KEY
    echo ""

    ## Pergunta qual é a Secret Key do minio
    echo -e "\e[97mPasso$amarelo 8/8\e[0m"
    echo -en "\e[33mSecret Key Minio: \e[0m" && read -r S3_SECRET_KEY
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_dify
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do Builder
    echo -e "\e[33mDominio do Dify AI:\e[97m $url_dify\e[0m"
    echo ""

    ## Informação sobre URL do Viewer
    #echo -e "\e[33mDominio do Qdrant:\e[97m $url_quedrant\e[0m"
    #echo ""

    ## Informação sobre a versão da ferramenta
    #echo -e "\e[33mApi Key Qdrant:\e[97m $apikey_qdrant\e[0m"
    #echo ""    

    ## Informação sobre Email
    echo -e "\e[33mEmail do SMTP:\e[97m $email_dify\e[0m"
    echo ""

    ## Informação sobre UserSMTP
    echo -e "\e[33mUser do SMTP:\e[97m $user_email_dify\e[0m"
    echo ""

    ## Informação sobre Senha do Email
    echo -e "\e[33mSenha do Email:\e[97m $senha_email_dify\e[0m"
    echo ""

    ## Informação sobre Host SMTP
    echo -e "\e[33mHost SMTP do Email:\e[97m $smtp_email_dify\e[0m"
    echo ""

    ## Informação sobre Porta SMTP
    echo -e "\e[33mPorta SMTP do Email:\e[97m $porta_smtp_dify\e[0m"
    echo ""

    ## Informação sobre Access Key
    echo -e "\e[33mAccess Key Minio:\e[97m $S3_ACCESS_KEY\e[0m"
    echo ""

    ## Informação sobre Secret Key
    echo -e "\e[33mSecret Key Minio:\e[97m $S3_SECRET_KEY\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_dify

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done


## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO DIFY \e[33m[1/4]\e[0m"
echo ""
sleep 1
cd
git clone https://github.com/langgenius/dify.git > /dev/null 2>&1
#wget https://raw.githubusercontent.com/langgenius/dify/main/docker/nginx/nginx.conf > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "1/3 - [ OK ] - Baixando arquivos"
else
    echo "1/3 - [ OFF ] - Baixando arquivos"
fi

sudo mv /root/dify/docker/nginx /root/nginx > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "2/3 - [ OK ] - Extraindo arquivos"
else
    echo "2/3 - [ OFF ] - Extraindo arquivos"
fi

rm -r dify
if [ $? -eq 0 ]; then
    echo "3/3 - [ OK ] - Removendo sobras"
else
    echo "3/3 - [ OFF ] - Removendo sobras"
fi

cd
cd

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES E REDIS \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Aqui vamos fazer uma verificação se já existe Postgres e redis instalado
## Se tiver ele vai criar um banco de dados no postgres ou perguntar se deseja apagar o que já existe e criar outro

## Verifica container postgres e cria banco no postgres
verificar_container_postgres
if [ $? -eq 0 ]; then
        pegar_senha_postgres > /dev/null 2>&1
    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "dify"

verificar_container_redis
    if [ $? -eq 0 ]; then
        sleep 1
    else
        ferramenta_redis  > /dev/null 2>&1
    fi


## Mensagem de Passo
echo -e "\e[97m• PEGANDO DADOS MINIO \e[33m[3/4]\e[0m"
echo ""
sleep 1

pegar_senha_minio
if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Pegando senha do MinIO"
else
    echo "1/2 - [ OFF ] - Pegando senha do MinIO"
    echo "Não foi possivel pegar a senha do minio"
fi
pegar_link_s3
if [ $? -eq 0 ]; then
    echo "2/2 - [ OK ] - Pegando Url S3 do MinIO"
else
    echo "2/2 - [ OFF ] - Pegando Url S3 do MinIO"
    echo "Não foi possivel pegar o link do S3"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO DIFY \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Criando key Aleatória
secret_key=$(openssl rand -hex 16)
token_weaviate=$(openssl rand -hex 16)
sandbox_key=$(openssl rand -hex 16)

## Criando a stack
cat > dify.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  api:
    image: langgenius/dify-api:latest ## Versão do Dify

    volumes:
      - dify_storage:/app/api/storage

    networks:
      - $nome_rede_interna

    environment:
      ## Modo da execução
      - MODE=api

      ## Logs
      - LOG_LEVEL=INFO

      ## Secret Key
      - SECRET_KEY=$secret_key

      ## Outras Url (vazio = mesmo do APP_WEB_URL)
      - CONSOLE_WEB_URL=
      - INIT_PASSWORD=
      - CONSOLE_API_URL=
      - SERVICE_API_URL=
      - FILES_URL=

      ## Url Dify
      - APP_WEB_URL=https://$url_dify

      ## Dados Postgres
      - MIGRATION_ENABLED=true
      - DB_USERNAME=postgres
      - DB_PASSWORD=$senha_postgres
      - DB_HOST=postgres
      - DB_PORT=5432
      - DB_DATABASE=dify

      ## Dados Redis
      - REDIS_HOST=redis
      - REDIS_PORT=6379
      - REDIS_USERNAME=
      - REDIS_PASSWORD=
      - REDIS_USE_SSL=false
      - REDIS_DB=0
      - CELERY_BROKER_URL=redis://redis:6379/1

      ## Liberar acesso a todos os ip
      - WEB_API_CORS_ALLOW_ORIGINS=*
      - CONSOLE_CORS_ALLOW_ORIGINS=*

      ## Dados sobre armazenamento s3
      - STORAGE_TYPE=local
      - STORAGE_LOCAL_PATH=storage
      - S3_ENDPOINT=$url_s3
      - S3_BUCKET_NAME=dify
      - S3_ACCESS_KEY=$S3_ACCESS_KEY
      - S3_SECRET_KEY=$S3_SECRET_KEY

      ## Configurações do Sandbox
      - CODE_EXECUTION_ENDPOINT=http://sandbox:8194
      - CODE_EXECUTION_API_KEY=$sandbox_key
      - CODE_MAX_NUMBER=9223372036854775807
      - CODE_MIN_NUMBER=-9223372036854775808
      - CODE_MAX_STRING_LENGTH=80000
      - TEMPLATE_TRANSFORM_MAX_LENGTH=80000
      - CODE_MAX_STRING_ARRAY_LENGTH=30
      - CODE_MAX_OBJECT_ARRAY_LENGTH=30
      - CODE_MAX_NUMBER_ARRAY_LENGTH=1000

      ## Dados Weaviate
      - VECTOR_STORE=weaviate
      - WEAVIATE_ENDPOINT=http://weaviate:8080
      - WEAVIATE_API_KEY=$token_weaviate
      - WEAVIATE_CLIENT_TIMEOUT=20

      ## Dados do Email
      - MAIL_TYPE=smtp
      - MAIL_DEFAULT_SEND_FROM=$email_dify (eg=no-reply $email_dify)
      - SMTP_SERVER=$smtp_email_dify
      - SMTP_PORT=$porta_smtp_dify
      - SMTP_USERNAME=$user_email_dify
      - SMTP_PASSWORD=$senha_email_dify

      ## Sentry
      - SENTRY_DSN=
      - SENTRY_TRACES_SAMPLE_RATE=1.0
      - SENTRY_PROFILES_SAMPLE_RATE=1.0

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

  worker:
    image: langgenius/dify-api:latest ## Versão do Dify

    volumes:
      - dify_storage:/app/api/storage

    networks:
      - $nome_rede_interna

    environment:
      ## Modo da execução
      - MODE=worker

      ## Logs
      - LOG_LEVEL=INFO
      
      ## Secret Key
      - SECRET_KEY=$secret_key

      ## Dados Postgres
      - DB_USERNAME=postgres
      - DB_PASSWORD=$senha_postgres
      - DB_HOST=postgres
      - DB_PORT=5432
      - DB_DATABASE=dify

      ## Dados Redis
      - REDIS_HOST=redis
      - REDIS_PORT=6379
      - REDIS_USERNAME=
      - REDIS_PASSWORD=
      - REDIS_USE_SSL=false
      - REDIS_DB=0
      - CELERY_BROKER_URL=redis://redis:6379/1

      ## Dados Weaviate
      - STORAGE_TYPE=local
      - STORAGE_LOCAL_PATH=storage
      - VECTOR_STORE=weaviate
      - WEAVIATE_ENDPOINT=http://weaviate:8080
      - WEAVIATE_API_KEY=$token_weaviate
      - WEAVIATE_CLIENT_TIMEOUT=20

      ## Dados do Email
      - MAIL_TYPE=smtp
      - MAIL_DEFAULT_SEND_FROM=$email_dify (eg=no-reply $email_dify)
      - SMTP_SERVER=$smtp_email_dify
      - SMTP_PORT=$porta_smtp_dify
      - SMTP_USERNAME=$user_email_dify
      - SMTP_PASSWORD=$senha_email_dify

    depends_on:
      - postgres
      - redis          
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager       
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ## 

  web:
    image: langgenius/dify-web:latest ## Versão do Dify

    networks:
      - $nome_rede_interna

    environment:
      ## Tipo da Edição
      - EDITION=SELF_HOSTED
      - CONSOLE_API_URL=

      ## Url Dify
      - APP_API_URL=https://$url_dify

      ## Sentry
      - SENTRY_DSN=

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

  sandbox:
    image: langgenius/dify-sandbox:latest

    networks:
      - $nome_rede_interna
    
    environment:
      - API_KEY=$sandbox_key
      - GIN_MODE=release
      - WORKER_TIMEOUT=15

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

  weaviate:
    image: semitechnologies/weaviate:latest ## Versão do Weaviate

    volumes:
      - dify_weaviate:/var/lib/weaviate

    networks:
      - $nome_rede_interna

    environment:
      ## Configurações Gerais
      - QUERY_DEFAULTS_LIMIT=25
      - AUTHENTICATION_ANONYMOUS_ACCESS_ENABLED=false
      - PERSISTENCE_DATA_PATH=/var/lib/weaviate
      - DEFAULT_VECTORIZER_MODULE=none
      - CLUSTER_HOSTNAME=node1

      ## Dados de Autenticação
      - AUTHENTICATION_APIKEY_ENABLED=true
      - AUTHENTICATION_APIKEY_ALLOWED_KEYS=$token_weaviate
      - AUTHENTICATION_APIKEY_USERS=contato@oriondesign.art.br
      - AUTHORIZATION_ADMINLIST_ENABLED=true
      - AUTHORIZATION_ADMINLIST_USERS=contato@oriondesign.art.br

      ## Telemetria
      - DISABLE_TELEMETRY=true

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 2048M

## --------------------------- ANDROMEDA --------------------------- ##

  nginx:
    image: nginx:latest ## Versão do nginx
    entrypoint: ["sh", "-c", "chmod +x /docker-entrypoint.sh && /docker-entrypoint.sh"]
    
    volumes:
      - /root/nginx/nginx.conf.template:/etc/nginx/nginx.conf.template
      - /root/nginx/proxy.conf.template:/etc/nginx/proxy.conf.template
      - /root/nginx/conf.d:/etc/nginx/conf.d
      - /root/nginx/docker-entrypoint.sh:/docker-entrypoint.sh
      - /root/nginx/ssl:/etc/ssl

    networks:
      - $nome_rede_interna

    environment:
      - NGINX_SSL_CERT_FILENAME=dify.crt
      - NGINX_SSL_CERT_KEY_FILENAME=dify.key
      - NGINX_SSL_PROTOCOLS=TLSv1.1 TLSv1.2 TLSv1.3
      - NGINX_WORKER_PROCESSES=auto
      - NGINX_CLIENT_MAX_BODY_SIZE=15M
      - NGINX_KEEPALIVE_TIMEOUT=65
      - NGINX_PROXY_READ_TIMEOUT=3600s
      - NGINX_PROXY_SEND_TIMEOUT=3600s
      - NGINX_SERVER_NAME=_
      - NGINX_PORT=80

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 2048M
      labels:
        - traefik.enable=true
        - traefik.http.routers.nginx.rule=Host(\`$url_dify\`) ## Url do Dify
        - traefik.http.routers.nginx.entrypoints=websecure
        - traefik.http.routers.nginx.tls.certresolver=letsencryptresolver
        - traefik.http.services.nginx.loadbalancer.server.port=80
        - traefik.http.services.nginx.loadbalancer.passHostHeader=true
        - traefik.http.routers.nginx.service=nginx

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  dify_storage:
    external: true
    name: dify_storage
  dify_weaviate:
    external: true
    name: dify_weaviate

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Dify Ai"
fi
STACK_NAME="dify"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c dify.yaml dify > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do Dify Ai"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_dify para verificar se o serviço esta online
wait_stack "dify"

cd dados_vps

cat > dados_dify <<EOL
[ DIFY AI ]

Dominio do dify: https://$url_dify

Email: Precisa de criar na primeira vez que entrar no Dify AI

Senha: Precisa de criar na primeira vez que entrar no Dify AI
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ DIFY AI ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_dify\e[0m"
echo ""

echo -e "\e[33mEmail:\e[97m Precisa de criar na primeira vez que entrar no Dify AI.\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa de criar na primeira vez que entrar no Dify AI.\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##  ██████╗ ██╗     ██╗      █████╗ ███╗   ███╗ █████╗ 
## ██╔═══██╗██║     ██║     ██╔══██╗████╗ ████║██╔══██╗
## ██║   ██║██║     ██║     ███████║██╔████╔██║███████║
## ██║   ██║██║     ██║     ██╔══██║██║╚██╔╝██║██╔══██║
## ╚██████╔╝███████╗███████╗██║  ██║██║ ╚═╝ ██║██║  ██║
##  ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝

ferramenta_ollama() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_ollama

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/2\e[0m"
    echo -en "\e[33mDigite o dominio para o WebUI Ollama (ex: ollama.sinergialucrativa.com): \e[0m" && read -r url_ollama
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/2\e[0m"
    echo -en "\e[33mDigite o dominio para a API Ollama (ex: apiollama.sinergialucrativa.com): \e[0m" && read -r url_apiollama
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_ollama
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ##Informação do Dominio
    echo -e "\e[33mDominio para o WebUI Ollama:\e[97m $url_ollama\e[0m"
    echo ""

    ##Informação do Dominio
    echo -e "\e[33mDominio para o API Ollama:\e[97m $url_apiollama\e[0m"
    echo ""
    
     ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_ollama

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO OLLAMA \e[33m[1/4]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO OLLAMA \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > ollama.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  ollama:
    image: ollama/ollama:latest

    volumes:
      - ollama_data:/root/.ollama

    networks:
      - $nome_rede_interna

    #ports:
    #  - 11434:11434

    environment:
      - OLLAMA_HOST=0.0.0.0

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=1
        - traefik.http.routers.ollama.rule=Host(\`$url_apiollama\`)
        - traefik.http.routers.ollama.entrypoints=websecure
        - traefik.http.routers.ollama.priority=1
        - traefik.http.routers.ollama.tls.certresolver=letsencryptresolver
        - traefik.http.routers.ollama.service=ollama
        - traefik.http.services.ollama.loadbalancer.server.port=11434
        - traefik.http.services.ollama.loadbalancer.passHostHeader=1

## --------------------------- ANDROMEDA --------------------------- ##

  ollamaweb:
    image: ghcr.io/ollama-webui/ollama-webui:main

    volumes:
      - ollama_web:/app/backend/data

    networks:
      - $nome_rede_interna

    #ports:
    #  - 8085:8080

    environment:
      - OLLAMA_API_BASE_URL=https://$url_apiollama/api

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.ollamaweb.rule=Host(\`$url_ollama\`)
        - traefik.http.routers.ollamaweb.entrypoints=websecure
        - traefik.http.routers.ollamaweb.priority=1
        - traefik.http.routers.ollamaweb.tls.certresolver=letsencryptresolver
        - traefik.http.routers.ollamaweb.service=ollamaweb
        - traefik.http.services.ollamaweb.loadbalancer.server.port=8080
        - traefik.http.services.ollamaweb.loadbalancer.passHostHeader=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  ollama_data:
    external: true
    name: ollama_data
  ollama_web:
    external: true
    name: ollama_web
  
networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Ollama"
fi
STACK_NAME="ollama"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c ollama.yaml ollama > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Ollama"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_nocodb para verificar se o serviço esta online
wait_stack "ollama"

cd dados_vps

cat > dados_ollama <<EOL
[ OLLAMA ]

Dominio do WebUI Ollama: https://$url_ollama

Dominio da API Ollama: https://$url_apiollama/api

Ollama WebUI: Precisa criar no primeiro acesso do Ollama

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ Ollama ]\e[0m"
echo ""

echo -e "\e[33mOllama WebUI:\e[97m https://$url_ollama\e[0m"
echo ""


echo -e "\e[33mOllama API:\e[97m https://$url_apiollama/api\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

ferramenta_remover_stack() {
    while true; do
        # Listar as stacks ativas no Docker Swarm com números
        clear
        nome_remover_stack
        echo "Stacks ativas:"
        echo ""
        docker stack ls --format "table {{.Name}}" | awk 'NR>1 { if ($1 == "portainer" || $1 == "traefik") {print "[ \033[0;31m" NR-1" \033[0m] - \033[0;31m" toupper(substr($0, 1, 1)) substr($0, 2) " (CUIDADO) \033[0m" } else {print "[ " NR-1" ] - " toupper(substr($0, 1, 1)) substr($0, 2)} }'
        echo ""
        # Solicitar ao usuário que escolha uma stack para remover ou sair
        read -p "Digite o número da stack que você deseja remover (ou digite '0' para voltar): " user_input

        # Verificar se o usuário deseja sair
        if [ "$user_input" == "0" ]; then
            echo "Saindo do script."
            break
        fi

        # Obter o nome da stack com base no número fornecido
        stack_name=$(docker stack ls --format "{{.Name}}" | sed -n "${user_input}p")

        # Verificar se a stack existe
        if docker stack ps "$stack_name" &> /dev/null; then
            # Remover a stack
            docker stack rm "$stack_name"
            echo "Removendo a stack $stack_name..."
        else
            echo "A stack $stack_name não foi encontrada."
        fi
    done
}

##  █████╗ ███████╗███████╗██╗███╗   ██╗███████╗
## ██╔══██╗██╔════╝██╔════╝██║████╗  ██║██╔════╝
## ███████║█████╗  █████╗  ██║██╔██╗ ██║█████╗  
## ██╔══██║██╔══╝  ██╔══╝  ██║██║╚██╗██║██╔══╝  
## ██║  ██║██║     ██║     ██║██║ ╚████║███████╗
## ╚═╝  ╚═╝╚═╝     ╚═╝     ╚═╝╚═╝  ╚═══╝╚══════╝

ferramenta_affine() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_affine

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/7\e[0m"
    echo -en "\e[33mDigite o dominio para o Affine (ex: affine.sinergialucrativa.com): \e[0m" && read -r url_affine
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/7\e[0m"
    echo -en "\e[33mDigite o Email de Admin (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_affine
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 3/7\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$"
    echo -en "\e[33mDigite a Senha de Admin (ex: @Senha123_): \e[0m" && read -r senha_affine
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 4/7\e[0m"
    echo -en "\e[33mDigite a Email SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_smtp_affine
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 5/7\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP (ex: @Senha123_): \e[0m" && read -r senha_smtp_affine
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 6/7\e[0m"
    echo -en "\e[33mDigite o Host SMTP (ex: smtp.hostinger.com): \e[0m" && read -r host_smtp_affine
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 7/7\e[0m"
    echo -en "\e[33mDigite a Porta SMTP (ex: 465): \e[0m" && read -r porta_smtp_affine
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_affine
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do affine
    echo -e "\e[33mDominio do Affine:\e[97m $url_affine\e[0m"
    echo ""

    ## Informação sobre URL do affine
    echo -e "\e[33mEmail de Admin:\e[97m $email_affine\e[0m"
    echo ""

    ## Informação sobre URL do affine
    echo -e "\e[33mSenha de Admin:\e[97m $senha_affine\e[0m"
    echo ""

    ## Informação sobre URL do affine
    echo -e "\e[33mEmail SMTP:\e[97m $email_smtp_affine\e[0m"
    echo ""

    ## Informação sobre URL do affine
    echo -e "\e[33mSenha SMTP:\e[97m $senha_smtp_affine\e[0m"
    echo ""

    ## Informação sobre URL do affine
    echo -e "\e[33mHost SMTP:\e[97m $host_smtp_affine\e[0m"
    echo ""

    ## Informação sobre URL do affine
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_affine\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_affine

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO AFFINE \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES E REDIS \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1

    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "affine"

verificar_container_redis
    if [ $? -eq 0 ]; then
        sleep 1
    else
        ferramenta_redis  > /dev/null 2>&1
    fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO AFFINE \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > affine.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  affine:
    image: ghcr.io/toeverything/affine-graphql:stable-39476d1
    command:
      ['sh', '-c', 'node ./scripts/self-host-predeploy && node ./dist/index.js']

    volumes:
      - affine_config:/root/.affine/config:rw
      - affine_storage:/root/.affine/storage:rw

    networks:
      - $nome_rede_interna

    #ports:
    #  - 3010:3010
    #  - 5555:5555

    logging:
      driver: 'json-file'
      options:
        max-size: '1000m'
    restart: on-failure:5

    environment:
      ## Dados de acesso
      - AFFINE_ADMIN_EMAIL=$email_affine
      - AFFINE_ADMIN_PASSWORD=$senha_affine
      - AFFINE_SERVER_HOST=$url_affine

      ## Dados do SMTP
      - MAILER_USER=$email_smtp_affine
      - MAILER_PASSWORD=$senha_smtp_affine
      - MAILER_HOST=$host_smtp_affine
      - MAILER_PORT=$porta_smtp_affine

      ## Dados do Postgres
      - POSTGRES_USER=postgres
      - POSTGRES_PASSWORD=$senha_postgres
      - POSTGRES_DB=affine
      - DATABASE_URL=postgres://postgres:$senha_postgres@postgres:5432/affine?sslmode=disable
      - PGDATA=/var/lib/postgresql/data/pgdata

      ## Outras configurações
      - NODE_OPTIONS="--import=./scripts/register.js"
      - AFFINE_CONFIG_PATH=/root/.affine/config
      - REDIS_SERVER_HOST=redis
      - NODE_ENV=production
      
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.affine.rule=Host(\`$url_affine\`)
        - traefik.http.services.affine.loadbalancer.server.port=3010
        - traefik.http.routers.affine.service=affine
        - traefik.http.routers.affine.tls.certresolver=letsencryptresolver
        - traefik.http.routers.affine.entrypoints=websecure
        - traefik.http.routers.affine.tls=true
        - traefik.frontend.headers.STSPreload=true
        - traefik.frontend.headers.STSSeconds=31536000

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  affine_config:
    external: true
    name: affine_config
  affine_storage:
    external: true
    name: affine_storage

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Affine"
fi
STACK_NAME="affine"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c affine.yaml affine > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Affine"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "affine" para verificar se o serviço esta online
wait_stack "affine"

cd dados_vps

cat > dados_affine <<EOL
[ AFFINE ]

Dominio do Affine: https://$url_affine

Usuario: $email_affine

Senha: $senha_affine

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ AFFINE ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_affine\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m $email_affine\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m $senha_affine\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██████╗  ██████╗  ██████╗██╗   ██╗███████╗███████╗ █████╗ ██╗     
## ██╔══██╗██╔═══██╗██╔════╝██║   ██║██╔════╝██╔════╝██╔══██╗██║     
## ██║  ██║██║   ██║██║     ██║   ██║███████╗█████╗  ███████║██║     
## ██║  ██║██║   ██║██║     ██║   ██║╚════██║██╔══╝  ██╔══██║██║     
## ██████╔╝╚██████╔╝╚██████╗╚██████╔╝███████║███████╗██║  ██║███████╗
## ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝ ╚══════╝╚══════╝╚═╝  ╚═╝╚══════╝
                                                                  
ferramenta_docuseal() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_docuseal

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/6\e[0m"
    echo -en "\e[33mDigite o dominio para o Docuseal (ex: docuseal.sinergialucrativa.com): \e[0m" && read -r url_docuseal
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/6\e[0m"
    echo -en "\e[33mDigite a Email SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_smtp_docuseal
    echo ""

    ##Pergunta o usuário do Email SMTP
    echo -e "\e[97mPasso$amarelo 3/6\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuário para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r user_smtp_docuseal
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 4/6\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP (ex: @Senha123_): \e[0m" && read -r senha_smtp_docuseal
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 5/6\e[0m"
    echo -en "\e[33mDigite o Host SMTP (ex: smtp.hostinger.com): \e[0m" && read -r host_smtp_docuseal
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 6/6\e[0m"
    echo -en "\e[33mDigite a Porta SMTP (ex: 465): \e[0m" && read -r porta_smtp_docuseal
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_docuseal
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do docuseal
    echo -e "\e[33mDominio do docuseal:\e[97m $url_docuseal\e[0m"
    echo ""

    ## Informação sobre URL do docuseal
    echo -e "\e[33mEmail SMTP:\e[97m $email_smtp_docuseal\e[0m"
    echo ""

    ## Informação sobre URL do docuseal
    echo -e "\e[33mUser SMTP:\e[97m $user_smtp_docuseal\e[0m"
    echo ""    

    ## Informação sobre URL do docuseal
    echo -e "\e[33mSenha SMTP:\e[97m $senha_smtp_docuseal\e[0m"
    echo ""

    ## Informação sobre URL do docuseal
    echo -e "\e[33mHost SMTP:\e[97m $host_smtp_docuseal\e[0m"
    echo ""

    ## Informação sobre URL do docuseal
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_docuseal\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_docuseal

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO DOCUSEAL \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1

    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "docuseal"

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO DOCUSEAL \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Pegar o dominio do email
dominio_smtp_docuseal="${email_smtp_docuseal##*@}"

key_docuseal=$(openssl rand -hex 16)
key_docuseal2=$(openssl rand -hex 16)


## Criando a stack
cat > docuseal.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  docuseal:
    image: docuseal/docuseal:latest

    volumes:
      - docuseal_data:/data

    networks:
      - $nome_rede_interna

    environment:
      ## Dados de Acesso
      - HOST=$url_docuseal
      - FORCE_SSL=true

      ## Secret Key
      - SECRET_KEY_BASE=$key_docuseal

      ## Dados do Postgres
      - DATABASE_URL=postgresql://postgres:$senha_postgres@postgres:5432/docuseal

      ## Dados SMTP
      - SMTP_USERNAME=$user_smtp_docuseal
      - SMTP_PASSWORD=$senha_smtp_docuseal
      - SMTP_ADDRESS=$host_smtp_docuseal
      - SMTP_PORT=$porta_smtp_docuseal
      - SMTP_FROM=$email_smtp_docuseal
      - SMTP_DOMAIN=$dominio_smtp_docuseal
      - SMTP_AUTHENTICATION=login

      ## Dados do S3
      ##- AWS_ACCESS_KEY_ID=
      ##- AWS_SECRET_ACCESS_KEY=
      ##- S3_ATTACHMENTS_BUCKET=
      
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.docuseal.rule=Host(\`$url_docuseal\`)
        - traefik.http.services.docuseal.loadbalancer.server.port=3000
        - traefik.http.routers.docuseal.service=docuseal
        - traefik.http.routers.docuseal.tls.certresolver=letsencryptresolver
        - traefik.http.routers.docuseal.entrypoints=websecure
        - traefik.http.routers.docuseal.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  docuseal_data:
    external: true

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do docuseal"
fi
STACK_NAME="docuseal"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c docuseal.yaml docuseal > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do docuseal"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_docuseal para verificar se o serviço esta online
wait_stack "docuseal"

cd dados_vps

cat > dados_docuseal <<EOL
[ DOCUSEAL ]

Dominio do docuseal: https://$url_docuseal

Usuario: Precisa de criar ao fazer o primeiro login

Senha: Precisa de criar ao fazer o primeiro login

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ DOCUSEAL ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_docuseal\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa de criar ao fazer o primeiro login\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa de criar ao fazer o primeiro login\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██████╗ ██╗██████╗ ███████╗ ██████╗████████╗██╗   ██╗███████╗
## ██╔══██╗██║██╔══██╗██╔════╝██╔════╝╚══██╔══╝██║   ██║██╔════╝
## ██║  ██║██║██████╔╝█████╗  ██║        ██║   ██║   ██║███████╗
## ██║  ██║██║██╔══██╗██╔══╝  ██║        ██║   ██║   ██║╚════██║
## ██████╔╝██║██║  ██║███████╗╚██████╗   ██║   ╚██████╔╝███████║
## ╚═════╝ ╚═╝╚═╝  ╚═╝╚══════╝ ╚═════╝   ╚═╝    ╚═════╝ ╚══════╝
                                                                  
ferramenta_directus() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_directus

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/9\e[0m"
    echo -en "\e[33mDigite o dominio para o Directus (ex: directus.sinergialucrativa.com): \e[0m" && read -r url_directus
    echo ""

     ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/9\e[0m"
    echo -en "\e[33mDigite a Email de Admin (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_directus
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 3/9\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$"
    echo -en "\e[33mDigite a Senha SMTP (ex: @Senha123_): \e[0m" && read -r senha_directus
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 4/9\e[0m"
    echo -en "\e[33mDigite a Email SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_smtp_directus
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 5/9\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP (ex: @Senha123_): \e[0m" && read -r senha_smtp_directus
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 6/9\e[0m"
    echo -en "\e[33mDigite o Host SMTP (ex: smtp.hostinger.com): \e[0m" && read -r host_smtp_directus
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 7/9\e[0m"
    echo -en "\e[33mDigite a Porta SMTP (ex: 465): \e[0m" && read -r porta_smtp_directus
    echo ""

    ## Pergunta qual é o Access Key do minio
    echo -e "\e[97mPasso$amarelo 8/9\e[0m"
    echo -en "\e[33mAccess Key Minio: \e[0m" && read -r S3_ACCESS_KEY
    echo ""

    ## Pergunta qual é a Secret Key do minio
    echo -e "\e[97mPasso$amarelo 9/9\e[0m"
    echo -en "\e[33mSecret Key Minio: \e[0m" && read -r S3_SECRET_KEY
    echo ""

    pegar_senha_minio
    if [ $? -eq 0 ]; then
        echo "1/2 - [ OK ] - Pegando senha do MinIO"
    else
        echo "1/2 - [ OFF ] - Pegando senha do MinIO"
        echo "Não foi possivel pegar a senha do minio"
    fi
    pegar_link_s3
    if [ $? -eq 0 ]; then
        echo "2/2 - [ OK ] - Pegando Url S3 do MinIO"
    else
        echo "2/2 - [ OFF ] - Pegando Url S3 do MinIO"
        echo "Não foi possivel pegar o link do S3"
    fi
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_directus
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do directus
    echo -e "\e[33mDominio do Directus:\e[97m $url_directus\e[0m"
    echo ""

    ## Informação sobre URL do directus
    echo -e "\e[33mEmail de Admin:\e[97m $email_directus\e[0m"
    echo ""

    ## Informação sobre URL do directus
    echo -e "\e[33mSenha de Admin:\e[97m $senha_directus\e[0m"
    echo ""

    ## Informação sobre URL do directus
    echo -e "\e[33mEmail SMTP:\e[97m $email_smtp_directus\e[0m"
    echo ""

    ## Informação sobre URL do directus
    echo -e "\e[33mSenha SMTP:\e[97m $senha_smtp_directus\e[0m"
    echo ""

    ## Informação sobre URL do directus
    echo -e "\e[33mHost SMTP:\e[97m $host_smtp_directus\e[0m"
    echo ""

    ## Informação sobre URL do directus
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_directus\e[0m"
    echo ""

    ## Informação sobre URL do directus
    echo -e "\e[33mAccess Key Minio:\e[97m $S3_ACCESS_KEY\e[0m"
    echo ""

    ## Informação sobre URL do directus
    echo -e "\e[33mSecret Key Minio:\e[97m $S3_SECRET_KEY\e[0m"
    echo ""

    ## Verifica se a porta é 465, se sim deixa o ssl true, se não, deixa false 
    if [ "$porta_smtp_directus" -eq 465 ]; then
    ssl_smtp_directus=true
    else
    ssl_smtp_directus=false
    fi
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_directus

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO DIRECTUS \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES E REDIS \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1

    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "directus"

if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Verificando/Instalando Postgres"
else
    echo "1/2 - [ OFF ] - Verificando/Instalando Postgres"
fi

## Verifica container redis
verificar_container_redis
if [ $? -eq 0 ]; then
    echo ""
else
    ferramenta_redis > /dev/null 2>&1
fi
if [ $? -eq 0 ]; then
    echo "2/2 - [ OK ] - Verificando/Instalando Redis"
else
    echo "2/2 - [ OFF ] - Verificando/Instalando Redis"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO DIRECTUS \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Gerar Secret Key
key_directus=$(openssl rand -hex 16)
key_directus2=$(openssl rand -hex 16)

## Criando a stack
cat > directus.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  directus:
    image: directus/directus:latest

    volumes:
      - directus_uploads:/directus/uploads
      - directus_data:/directus/database

    networks:
      - $nome_rede_interna

    environment:
      ## Dados de acesso
      - ADMIN_EMAIL=$email_directus
      - ADMIN_PASSWORD=$senha_directus
      - PUBLIC_URL=https://$url_directus

      ## Dados SMTP
      - EMAIL_SMTP_USER=$email_smtp_directus
      - EMAIL_SMTP_PASSWORD=$senha_smtp_directus
      - EMAIL_SMTP_HOST=$host_smtp_directus
      - EMAIL_SMTP_PORT=$porta_smtp_directus
      - EMAIL_SMTP_SECURE=$ssl_smtp_directus

      ## Dados MinIO
      - STORAGE_s3_KEY=$S3_ACCESS_KEY
      - STORAGE_s3_SECRET=$S3_SECRET_KEY
      - STORAGE_s3_BUCKET=directus
      - STORAGE_s3_REGION=us-west-rack-2
      - STORAGE_s3_ENDPOINT=$url_s3

      ## Redis
      - REDIS=redis://redis:6379/4

      ## Secret Keys & Env
      - KEY=$key_directus
      - SECRET=$key_directus2
      - APP_ENV=production

      ## Dados Postgres
      - DB_CLIENT=postgres
      - DB_HOST=postgres
      - DB_PORT=5432
      - DB_DATABASE=directus
      - DB_USER=postgres
      - DB_PASSWORD=$senha_postgres
      - DB_CONNECTION_STRING=postgresql://postgres:$senha_postgres@postgres:5432/directus
      - DB_PREFIX=drcts_

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.directus.rule=Host(\`$url_directus\`)
        - traefik.http.routers.directus.entrypoints=web,websecure
        - traefik.http.routers.directus.tls.certresolver=letsencryptresolve
        - traefik.http.routers.directus.tls=true
        - traefik.http.services.directus.loadbalancer.server.port=8055
        - traefik.docker.network=proxy

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  directus_uploads:
    external: true
    name: directus_uploads
  directus_data:
    external: true
    name: directus_data

networks:
  $nome_rede_interna:
    external: true
    attachable: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do directus"
fi
STACK_NAME="directus"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c directus.yaml directus > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do directus"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_tack "directus" para verificar se o serviço esta online
wait_stack "directus"

cd dados_vps

cat > dados_directus <<EOL
[ DIRECTUS ]

Dominio do directus: https://$url_directus

Usuario: $email_directus

Senha: $senha_directus

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ DIRECTUS ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_directus\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m $email_directus\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m $senha_directus\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██╗   ██╗ █████╗ ██╗   ██╗██╗  ████████╗██╗    ██╗ █████╗ ██████╗ ██████╗ ███████╗███╗   ██╗
## ██║   ██║██╔══██╗██║   ██║██║  ╚══██╔══╝██║    ██║██╔══██╗██╔══██╗██╔══██╗██╔════╝████╗  ██║
## ██║   ██║███████║██║   ██║██║     ██║   ██║ █╗ ██║███████║██████╔╝██║  ██║█████╗  ██╔██╗ ██║
## ╚██╗ ██╔╝██╔══██║██║   ██║██║     ██║   ██║███╗██║██╔══██║██╔══██╗██║  ██║██╔══╝  ██║╚██╗██║
##  ╚████╔╝ ██║  ██║╚██████╔╝███████╗██║   ╚███╔███╔╝██║  ██║██║  ██║██████╔╝███████╗██║ ╚████║
##   ╚═══╝  ╚═╝  ╚═╝ ╚═════╝ ╚══════╝╚═╝    ╚══╝╚══╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ ╚══════╝╚═╝  ╚═══╝                                                                                    

ferramenta_vaultwarden() {

# Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_vaultwarden

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ## Pergunta o Dominio da ferramenta
    echo -e "\e[97mPasso$amarelo 1/5\e[0m"
    echo -en "\e[33mDigite o Dominio para o VaultWarden (ex: vaultwarden.sinergialucrativa.com): \e[0m" && read -r url_vaultwarden
    echo ""
    
    ## Pergunta o Email SMTP
    echo -e "\e[97mPasso$amarelo 2/5\e[0m"
    echo -en "\e[33mDigite um Email para o SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_vaultwarden
    echo ""
    
    ## Pergunta a Senha SMTP
    echo -e "\e[97mPasso$amarelo 3/5\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do email (ex: @Senha123_): \e[0m" && read -r senha_vaultwarden
    echo ""
    
    ## Pergunta o Host SMTP
    echo -e "\e[97mPasso$amarelo 4/5\e[0m"
    echo -en "\e[33mDigite o Host SMTP do email (ex: smtp.hostinger.com): \e[0m" && read -r host_vaultwarden
    echo ""
    
    ## Pergunta a Porta SMTP 
    echo -e "\e[97mPasso$amarelo 5/5\e[0m"
    echo -en "\e[33mDigite a Porta SMTP do email (ex: 465): \e[0m" && read -r porta_vaultwarden
    echo ""
    
    if [ "$porta_vaultwarden" -eq 465 ] || [ "$porta_vaultwarden" -eq 25 ]; then
        ssl_vaultwarden=force_tls
    else
        ssl_vaultwarden=starttls
    fi
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_vaultwarden
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL
    echo -e "\e[33mDominio:\e[97m $url_vaultwarden\e[0m"
    echo ""
    
    ## Informação sobre Email
    echo -e "\e[33mEmail SMTP:\e[97m $email_vaultwarden\e[0m"
    echo ""
    
    ## Informação sobre Senha
    echo -e "\e[33mSenha SMTP:\e[97m $senha_vaultwarden\e[0m"
    echo ""
    
    ## Informação sobre Host
    echo -e "\e[33mHost SMTP:\e[97m $host_vaultwarden\e[0m"
    echo ""
    
    ## Informação sobre Porta
    echo -e "\e[33mPorta SMTP:\e[97m $porta_vaultwarden\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_vaultwarden

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO VAULTWARDEN \e[33m[1/3]\e[0m"
echo ""
sleep 1

## Nada nada nada.. só para aparecer a mensagem de passo.

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO VAULTWARDEN \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > vaultwarden.yaml <<-EOF
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  vaultwarden:
    image: vaultwarden/server:latest

    volumes:
      - vaultwarden-data:/data

    networks:
      - $nome_rede_interna

    #ports:
    #  - 1973:80

    environment:
      ## Dominio do Dashboard
      - DOMAIN=https://$url_vaultwarden

      ## Permitir novos registros
      - SIGNUPS_ALLOWED=true

      ## Dados do SMTP
      - SMTP_FROM=$email_vaultwarden
      - SMTP_USERNAME=$email_vaultwarden
      - SMTP_PASSWORD=$senha_vaultwarden
      - SMTP_HOST=$host_vaultwarden
      - SMTP_PORT=$porta_vaultwarden
      - SMTP_SECURITY=$ssl_vaultwarden

      ## Configuração do Websocket
      - WEBSOCKET_ENABLED=true

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
        - node.role == manager
      labels:
        - "traefik.enable=true"
        - "traefik.http.routers.vaultwarden.rule=Host(\`$url_vaultwarden\`)"
        - "traefik.http.routers.vaultwarden.service=vaultwarden"
        - "traefik.http.routers.vaultwarden.entrypoints=websecure"
        - "traefik.http.services.vaultwarden.loadbalancer.server.port=80"
        - "traefik.http.routers.vaultwarden.tls=true"
        - "traefik.http.routers.vaultwarden.tls.certresolver=letsencryptresolver"
        - "traefik.http.services.vaultwarden.loadbalancer.passhostheader=true"
        - "traefik.http.routers.vaultwarden.middlewares=compresstraefik"
        - "traefik.http.middlewares.compresstraefik.compress=true"
        - "traefik.docker.network=$nome_rede_interna"

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  vaultwarden-data:
    external: true
    name: vaultwarden-data

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOF
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do vaultwarden"
fi
STACK_NAME="vaultwarden"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c vaultwarden.yaml vaultwarden > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do vaultwarden"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_vaultwarden para verificar se o serviço esta online
wait_stack "vaultwarden"

cd dados_vps

cat > dados_vaultwarden <<EOL
[ VAULTWARDEN ]

Dominio do vaultwarden: https://$url_vaultwarden

Email: Precisa de criar dentro do vaultwarden

Senha: Precisa de criar dentro do vaultwarden
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ VAULTWARDEN ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_vaultwarden\e[0m"
echo ""

echo -e "\e[33mEmail:\e[97m Precisa de criar dentro do VaultWarden\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa de criar dentro do VaultWarden\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##  ██████╗ ██████╗  █████╗ ███████╗ █████╗ ███╗   ██╗ █████╗ 
## ██╔════╝ ██╔══██╗██╔══██╗██╔════╝██╔══██╗████╗  ██║██╔══██╗
## ██║  ███╗██████╔╝███████║█████╗  ███████║██╔██╗ ██║███████║
## ██║   ██║██╔══██╗██╔══██║██╔══╝  ██╔══██║██║╚██╗██║██╔══██║
## ╚██████╔╝██║  ██║██║  ██║██║     ██║  ██║██║ ╚████║██║  ██║
##  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝

ferramenta_monitor() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_monitor

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/4\e[0m"
    echo -en "\e[33mDigite o Dominio para o Grafana (ex: grafana.sinergialucrativa.com): \e[0m" && read -r url_grafana
    echo ""

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 2/4\e[0m"
    echo -en "\e[33mDigite o Dominio para o Prometheus (ex: prometheus.sinergialucrativa.com): \e[0m" && read -r url_prometheus
    echo ""

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 3/4\e[0m"
    echo -en "\e[33mDigite o Dominio para o cAdvisor (ex: cadvisor.sinergialucrativa.com): \e[0m" && read -r url_cadvisor
    echo ""

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 4/4\e[0m"
    echo -en "\e[33mDigite o Dominio para o NodeExporter (ex: node.sinergialucrativa.com): \e[0m" && read -r url_nodeexporter
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_monitor
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info

    ## Informação sobre URL
    echo -e "\e[33mDominio do Grafana:\e[97m $url_grafana\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mDominio do Prometheus:\e[97m $url_prometheus\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mDominio do Cadvisor:\e[97m $url_cadvisor\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mDominio do NodeExporter:\e[97m $url_nodeexporter\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_monitor

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO GRAFANA + PROMETHEUS + CADVISOR \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Literalmente nada, apenas um espaço vazio caso precisar de adicionar alguma coisa antes..
## E claro, para aparecer a mensagem do passo..

## Mensagem de Passo
echo -e "\e[97m• BAIXANDO RECURSOS \e[33m[2/4]\e[0m"
echo ""
sleep 1

mkdir blablabla
cd blablabla

git clone https://github.com/oriondesign2015/SetupOrion.git > /dev/null 2>&1

sudo mv /root/blablabla/SetupOrion/Extras/Grafana/monitor-orion /opt

cd

rm -r blablabla

cd

cd

## Criando arquivo datasource
cat > datasource.yml <<EOL
apiVersion: 1
datasources:
- name: Prometheus
  type: prometheus
  url: https://$url_prometheus
  isDefault: true
  access: proxy
  editable: true
EOL
if [ $? -eq 0 ]; then
    echo "1/4 - [ OK ] - Criando datasource.yml"
else
    echo "1/4 - [ OFF ]"
    echo "Não foi possivel criar o datasource"
fi


cp /root/datasource.yml /opt/monitor-orion/grafana/
if [ $? -eq 0 ]; then
    echo "2/6 - [ OK ]"
else
    echo "2/6 - [ OFF ]"
    echo "Não foi possivel copiar o datasource para o diretório opt"
fi

cp /root/datasource.yml /opt/monitor-orion/grafana/provisioning/datasources/
if [ $? -eq 0 ]; then
    echo "3/6 - [ OK ]"
else
    echo "3/6 - [ OFF ]"
    echo "Não foi possivel copiar o datasource para o diretório opt"
fi

rm /root/datasource.yml
if [ $? -eq 0 ]; then
    echo "4/6 - [ OK ]"
else
    echo "4/6 - [ OFF ]"
    echo "Não foi possivel deletar o datasource para o diretório opt"
fi

cd

## Criando arquivo prometheus yml
cat > prometheus.yml <<EOL
global:
  scrape_interval: 15s
  scrape_timeout: 10s
  evaluation_interval: 15s
alerting:
  alertmanagers:
  - static_configs:
    - targets: []
    scheme: http
    timeout: 10s
    api_version: v1
scrape_configs:
- job_name: prometheus
  honor_timestamps: true
  scrape_interval: 15s
  scrape_timeout: 10s
  metrics_path: /metrics
  scheme: http
  static_configs:
  - targets: ['$url_prometheus','$url_cadvisor','$url_nodeexporter']

EOL
if [ $? -eq 0 ]; then
    echo "5/6 - [ OK ]"
else
    echo "5/6 - [ OFF ]"
    echo "Não foi possivel criar o prometheus"
fi

mv /root/prometheus.yml /opt/monitor-orion/prometheus/
if [ $? -eq 0 ]; then
    echo "6/6 - [ OK ]"
else
    echo "6/6 - [ OFF ]"
    echo "Não foi possivel copiar o datasource para o diretório opt"
fi

cd
cd
echo ""

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO GRAFANA + PROMETHEUS + CADVISOR \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Aqui de fato vamos iniciar a instalação das ferramentas

## Criando a stack
cat > monitor.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  prometheus:
    image: prom/prometheus:latest

    volumes:
      - /opt/monitor-orion/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml

    networks:
      - $nome_rede_interna

    ports:
      - "9191:9090"

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.prometheus.rule=Host(\`$url_prometheus\`)
        - traefik.http.services.prometheus.loadbalancer.server.port=9090
        - traefik.http.routers.prometheus.service=prometheus
        - traefik.http.routers.prometheus.tls.certresolver=letsencryptresolver
        - traefik.http.routers.prometheus.entrypoints=websecure
        - traefik.http.routers.prometheus.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

  grafana:
    image: grafana/grafana:latest

    volumes:
      - /opt/monitor-orion/grafana/grafana.ini:/etc/grafana/grafana.ini
      - /opt/monitor-orion/grafana/provisioning/datasources:/etc/grafana/provisioning/datasources
      - /opt/monitor-orion/grafana/provisioning/dashboards:/etc/grafana/provisioning/dashboards
      - /opt/monitor-orion/grafana/dashboards:/etc/grafana/dashboards

    networks:
      - $nome_rede_interna

    ports:
      - "3111:3000"

    links:
      - prometheus
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.grafana.rule=Host(\`$url_grafana\`)
        - traefik.http.services.grafana.loadbalancer.server.port=3000
        - traefik.http.routers.grafana.service=grafana
        - traefik.http.routers.grafana.tls.certresolver=letsencryptresolver
        - traefik.http.routers.grafana.entrypoints=websecure
        - traefik.http.routers.grafana.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

  node-exporter:
    image: prom/node-exporter:latest
    restart: unless-stopped

    networks:
      - $nome_rede_interna

    ports:
      - "9100:9100"

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.node-exporter.rule=Host(\`$url_nodeexporter\`)
        - traefik.http.services.node-exporter.loadbalancer.server.port=9100
        - traefik.http.routers.node-exporter.service=node-exporter
        - traefik.http.routers.node-exporter.tls.certresolver=letsencryptresolver
        - traefik.http.routers.node-exporter.entrypoints=websecure
        - traefik.http.routers.node-exporter.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

  cadvisor:
    image: google/cadvisor:latest
    restart: unless-stopped

    volumes:
      - /:/rootfs:ro
      - /var/run:/var/run:rw
      - /sys:/sys:ro
      - /var/lib/docker/:/var/lib/docker:ro

    networks:
      - $nome_rede_interna

    ports:
      - "8181:8080"

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.cadvisor.rule=Host(\`$url_cadvisor\`)
        - traefik.http.services.cadvisor.loadbalancer.server.port=8080
        - traefik.http.routers.cadvisor.service=cadvisor
        - traefik.http.routers.cadvisor.tls.certresolver=letsencryptresolver
        - traefik.http.routers.cadvisor.entrypoints=websecure
        - traefik.http.routers.cadvisor.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

networks:
  $nome_rede_interna:
    name: $nome_rede_interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Monitor"
fi
STACK_NAME="monitor"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c monitor.yaml monitor > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do Monitor"
#fi

echo ""
sleep 10

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_monitor para verificar se o serviço esta online
wait_stack "monitor"

cd dados_vps

cat > dados_monitor <<EOL
[ MONITOR ]

Dominio Grafana: https://$url_grafana

Dominio Prometheus: https://$url_prometheus

Dominio cAdvisor: https://$url_cadvisor

Dominio NodeExporter: https://$url_nodeexporter

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ GRAFANA + PROMETHEUS + CADVISOR ]\e[0m"
echo ""

echo -e "\e[97mDominio Grafana:\e[33m https://$url_grafana\e[0m"
echo ""

echo -e "\e[97mUsuario Grafana:\e[33m admin\e[0m"
echo ""

echo -e "\e[97mSenha Grafana:\e[33m admin\e[0m"
echo -e "\e[97mDepois do primeiro login, será solicitado que você altere a senha.\e[0m"
echo ""

echo -e "\e[97mDominio Prometheus:\e[33m https://$url_prometheus\e[0m"
echo ""

echo -e "\e[97mDominio cAdvisor:\e[33m https://$url_cadvisor\e[0m"
echo ""

echo -e "\e[97mDominio NodeExporter:\e[33m https://$url_nodeexporter\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███╗   ██╗███████╗██╗  ██╗████████╗ ██████╗██╗      ██████╗ ██╗   ██╗██████╗ 
## ████╗  ██║██╔════╝╚██╗██╔╝╚══██╔══╝██╔════╝██║     ██╔═══██╗██║   ██║██╔══██╗
## ██╔██╗ ██║█████╗   ╚███╔╝    ██║   ██║     ██║     ██║   ██║██║   ██║██║  ██║
## ██║╚██╗██║██╔══╝   ██╔██╗    ██║   ██║     ██║     ██║   ██║██║   ██║██║  ██║
## ██║ ╚████║███████╗██╔╝ ██╗   ██║   ╚██████╗███████╗╚██████╔╝╚██████╔╝██████╔╝
## ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝   ╚═╝    ╚═════╝╚══════╝ ╚═════╝  ╚═════╝ ╚═════╝ 

ferramenta_nextcloud() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_nextcloud

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/3\e[0m"
    echo -en "\e[33mDigite o dominio para o NextCloud (ex: nextcloud.sinergialucrativa.com): \e[0m" && read -r url_nextcloud
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/3\e[0m"
    echo -en "\e[33mDigite o Usuario para o NextCloud (ex: andromeda): \e[0m" && read -r user_nextcloud
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 3/3\e[0m"
    echo -e "$amarelo--> Minimo 8 caracteres. Use Letras MAIUSCULAS e minusculas, numero e um caractere especial @ ou _"
    echo -en "\e[33mDigite o Senha o Usuario (ex: @Senha123_): \e[0m" && read -r pass_nextcloud
    echo ""


    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_nextcloud
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do nextcloud
    echo -e "\e[33mDominio do NextCloud:\e[97m $url_nextcloud\e[0m"
    echo ""

    ## Informação sobre URL do nextcloud
    echo -e "\e[33mUsuario do NextCloud:\e[97m $user_nextcloud\e[0m"
    echo ""

    ## Informação sobre URL do nextcloud
    echo -e "\e[33mSenha do NextCloud:\e[97m $pass_nextcloud\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_minio

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO NEXTCLOUD \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES E REIDS \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1
    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "nextcloud"

if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Verificando/Instalando Postgres"
else
    echo "1/2 - [ OFF ] - Verificando/Instalando Postgres"
fi

verificar_container_redis
if [ $? -eq 0 ]; then
    sleep 1
else
    ferramenta_redis  > /dev/null 2>&1
fi
if [ $? -eq 0 ]; then
    echo "2/2 - [ OK ] - Verificando/Instalando Redis"
else
    echo "2/2 - [ OFF ] - Verificando/Instalando Redis"
fi

echo ""
## Mensagem de Passo
echo -e "\e[97m• INSTALANDO NEXTCLOUD \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > nextcloud.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  nextcloud:
    image: nextcloud:latest

    volumes:
      - nextcloud_data:/var/www/html

    networks:
      - $nome_rede_interna

    ports:
      - 8282:80

    environment:
      ## Dados de acesso:
      - NEXTCLOUD_ADMIN_USER=$user_nextcloud
      - NEXTCLOUD_ADMIN_PASSWORD=$pass_nextcloud

      ## Dados do Postgres
      - POSTGRES_HOST=postgres
      - POSTGRES_DB=nextcloud
      - POSTGRES_USER=postgres
      - POSTGRES_PASSWORD=$senha_postgres

      ## Dados do Redis
      - REDIS_HOST=redis

      ## Configurações para HTTPS
      - OVERWRITEPROTOCOL=https
      - TRUSTED_PROXIES=127.0.0.1

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.nextcloud.rule=Host(\`$url_nextcloud\`)
        - traefik.http.services.nextcloud.loadbalancer.server.port=80
        - traefik.http.routers.nextcloud.service=nextcloud
        - traefik.http.routers.nextcloud.tls.certresolver=letsencryptresolver
        - traefik.http.routers.nextcloud.entrypoints=web,websecure
        - traefik.http.routers.nextcloud.tls=true
        - traefik.http.routers.nextcloud.middlewares=nextcloud_redirectregex
        - traefik.http.middlewares.nextcloud_redirectregex.redirectregex.permanent=true
        - traefik.http.middlewares.nextcloud_redirectregex.redirectregex.regex=https://(.*)/.well-known/(?:card|cal)dav
        - traefik.http.middlewares.nextcloud_redirectregex.redirectregex.replacement=https://$$1/remote.php/dav

## --------------------------- ANDROMEDA --------------------------- ##

  cron:
    image: nextcloud:latest
    entrypoint: /cron.sh

    volumes:
      - nextcloud_data:/var/www/html

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  nextcloud_data:
    external: true

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do nextcloud"
fi
STACK_NAME="nextcloud"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c nextcloud.yaml nextcloud > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do nextcloud"
#fi
echo ""

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1


## Usa o serviço wait_nextcloud para verificar se o serviço esta online
wait_stack "nextcloud"

cd dados_vps

# Caminho do arquivo onde a substituição será feita

arquivo_next_cloud="/var/lib/docker/volumes/nextcloud_data/_data/config/config.php"

# Comando sed para substituir a linha, utilizando a variável
sed -i "s/0 => 'localhost'/0 => '$url_nextcloud'/" "$arquivo_next_cloud"
sleep 5
## Só por garantia
sed -i "s/0 => 'localhost'/0 => '$url_nextcloud'/" "$arquivo_next_cloud"

sed -i "/'maintenance' => false,/a \  'overwriteprotocol' => 'https',\n  'trusted_proxies' => ['127.0.0.1']," "$arquivo_next_cloud"

cat > dados_nextcloud <<EOL
[ NEXTCLOUD ]

Dominio do NextCloud: https://$url_nextcloud

Usuario: $user_nextcloud

Senha: $pass_nextcloud

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ NEXTCLOUD ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_nextcloud\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m $user_nextcloud\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m $pass_nextcloud\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███████╗████████╗██████╗  █████╗ ██████╗ ██╗
## ██╔════╝╚══██╔══╝██╔══██╗██╔══██╗██╔══██╗██║
## ███████╗   ██║   ██████╔╝███████║██████╔╝██║
## ╚════██║   ██║   ██╔══██╗██╔══██║██╔═══╝ ██║
## ███████║   ██║   ██║  ██║██║  ██║██║     ██║
## ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝     ╚═╝
                                                           
ferramenta_strapi() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_strapi

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o Strapi (ex: strapi.sinergialucrativa.com): \e[0m" && read -r url_strapi
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_strapi
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ##Informação do Dominio
    echo -e "\e[33mDominio para o strapi:\e[97m $url_strapi\e[0m"
    echo ""
    
     ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_strapi

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO STRAPI \e[33m[1/4]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO MYSQL \e[33m[2/4]\e[0m"
echo ""
sleep 1

verificar_container_mysql
if [ $? -eq 0 ]; then
    pegar_senha_mysql > /dev/null 2>&1
else
    ferramenta_mysql > /dev/null 2>&1
    pegar_senha_mysql > /dev/null 2>&1
fi

criar_banco_mysql_da_stack "strapi"

if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Verificando/Instalando MySQL"
else
    echo "1/1 - [ OFF ] - Verificando/Instalando MySQL"
fi

## Espera 30 segundos
wait_30_sec

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO STRAPI \e[33m[3/4]\e[0m"
echo ""
sleep 1

jwt_secret=$(openssl rand -hex 16)

admin_jwt=$(openssl rand -hex 16)

app_key=$(openssl rand -hex 16)

## Criando a stack
cat > strapi.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  strapi:
    image: strapi/strapi

    volumes:
      - strapi_data:/srv/app

    networks:
      - $nome_rede_interna

    environment:
      ## Dados MySQL
      - DATABASE_CLIENT=mysql
      - DATABASE_NAME=strapi
      - DATABASE_HOST=mysql
      - DATABASE_PORT=3306
      - DATABASE_USERNAME=root
      - DATABASE_PASSWORD=$senha_mysql

      ## Secret Keys
      - JWT_SECRET=$jwt_secret
      - ADMIN_JWT_SECRET=$admin_jwt
      - APP_KEYS=$app_key

      ## Outros dados
      - NODE_ENV=production
      - STRAPI_TELEMETRY_DISABLED=true

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.strapi.rule=Host(\`$url_strapi\`)
        - traefik.http.routers.strapi.entrypoints=web,websecure
        - traefik.http.routers.strapi.tls.certresolver=letsencryptresolver
        - traefik.http.routers.strapi.service=strapi
        - traefik.http.services.strapi.loadbalancer.server.port=1337
        - traefik.http.services.strapi.loadbalancer.passHostHeader=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  strapi_data:
    name: strapi_data
    external: true

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Strapi"
fi
STACK_NAME="strapi"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c strapi.yaml strapi #> /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do Strapi"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "strapi" para verificar se o serviço esta online
wait_stack "strapi"

cd dados_vps

cat > dados_strapi <<EOL
[ STRAPI ]

Dominio do Strapi: https://$url_strapi

Usuario: Precisa criar no primeiro acesso do Strapi

Senha: Precisa criar no primeiro acesso do Strapi

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ STRAPI ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_strapi\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do strapi\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do strapi\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██████╗ ██╗  ██╗██████╗     ███╗   ███╗██╗   ██╗     █████╗ ██████╗ ███╗   ███╗██╗███╗   ██╗
## ██╔══██╗██║  ██║██╔══██╗    ████╗ ████║╚██╗ ██╔╝    ██╔══██╗██╔══██╗████╗ ████║██║████╗  ██║
## ██████╔╝███████║██████╔╝    ██╔████╔██║ ╚████╔╝     ███████║██║  ██║██╔████╔██║██║██╔██╗ ██║
## ██╔═══╝ ██╔══██║██╔═══╝     ██║╚██╔╝██║  ╚██╔╝      ██╔══██║██║  ██║██║╚██╔╝██║██║██║╚██╗██║
## ██║     ██║  ██║██║         ██║ ╚═╝ ██║   ██║       ██║  ██║██████╔╝██║ ╚═╝ ██║██║██║ ╚████║
## ╚═╝     ╚═╝  ╚═╝╚═╝         ╚═╝     ╚═╝   ╚═╝       ╚═╝  ╚═╝╚═════╝ ╚═╝     ╚═╝╚═╝╚═╝  ╚═══╝
                                                                                                                                               
ferramenta_phpmyadmin() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_phpmyadmin

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/2\e[0m"
    echo -en "\e[33mDigite o dominio para o PhpMyAdmin (ex: phpmyadmin.sinergialucrativa.com): \e[0m" && read -r url_phpmyadmin
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/2\e[0m"
    echo -en "\e[33mDigite o Host MySQL (ex: mysql ou 1.111.111.11:3306): \e[0m" && read -r host_phpmyadmin
    echo ""

    ##Pergunta o Dominio para a ferramenta
    #echo -e "\e[97mPasso$amarelo 4/4\e[0m"
    #echo -en "\e[33mDigite o Usuario MySQL  (ex: oriondesign): \e[0m" && read -r user_phpmyadmin
    #echo ""

    ##Pergunta o Dominio para a ferramenta
    #echo -e "\e[97mPasso$amarelo 4/4\e[0m"
    #echo -e "$amarelo--> Sem caracteres especiais: \!#$"
    #echo -en "\e[33mDigite a Senha MySQL (ex: @Senha123_): \e[0m" && read -r pass_phpmyadmin
    #echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_phpmyadmin
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ##Informação do Dominio
    echo -e "\e[33mDominio para o PhpMyAdmin:\e[97m $url_phpmyadmin\e[0m"
    echo ""

    ##Informação do Dominio
    echo -e "\e[33mHost MySQL:\e[97m $host_phpmyadmin\e[0m"
    echo ""

    ###Informação do Dominio
    #echo -e "\e[33mUsuario MySQL:\e[97m $user_phpmyadmin\e[0m"
    #echo ""

    ###Informação do Dominio
    #echo -e "\e[33mSenha MYSQL:\e[97m $pass_phpmyadmin\e[0m"
    #echo ""
    
     ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_phpmyadmin

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO PHPMYADMIN \e[33m[1/3]\e[0m"
echo ""
sleep 1

## NADA

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO PHPMYADMIN \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > phpmyadmin.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  phpmyadmin:
    image: phpmyadmin/phpmyadmin:latest
    command: ["apache2-foreground"]

    networks:
      - $nome_rede_interna

    environment:
      ## Dados do MySQL
      - PMA_HOSTS=$host_phpmyadmin
      - PMA_PORT=3306
      
      ## Dado de acesso
      #- PMA_USER=
      #- PMA_PASSWORD=
      - PMA_ABSOLUTE_URI=https://$url_phpmyadmin
      
      ## Limite de Upload
      - UPLOAD_LIMIT=10M

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 2048M
      labels:
        - traefik.enable=true
        - traefik.http.routers.phpmyadmin.rule=Host(\`$url_phpmyadmin\`)
        - traefik.http.routers.phpmyadmin.entrypoints=web,websecure
        - traefik.http.routers.phpmyadmin.tls.certresolver=letsencryptresolver
        - traefik.http.services.phpmyadmin.loadbalancer.server.port=80
        - traefik.http.routers.phpmyadmin.service=phpmyadmin

## --------------------------- ANDROMEDA --------------------------- ##

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do phpmyadmin"
fi
STACK_NAME="phpmyadmin"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c phpmyadmin.yaml phpmyadmin #> /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do phpmyadmin"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "phpmyadmin" para verificar se o serviço esta online
wait_stack "phpmyadmin"

cd dados_vps

cat > dados_phpmyadmin <<EOL
[ PHPMYADMIN ]

Dominio do phpmyadmin: https://$url_phpmyadmin

Usuario: Os mesmos do seu MySQL

Senha: Os mesmos do seu MySQL

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ PHPMYADMIN ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_phpmyadmin\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Os mesmos do seu MySQL\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Os mesmos do seu MySQL\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███████╗██╗   ██╗██████╗  █████╗ ██████╗  █████╗ ███████╗███████╗
## ██╔════╝██║   ██║██╔══██╗██╔══██╗██╔══██╗██╔══██╗██╔════╝██╔════╝
## ███████╗██║   ██║██████╔╝███████║██████╔╝███████║███████╗█████╗  
## ╚════██║██║   ██║██╔═══╝ ██╔══██║██╔══██╗██╔══██║╚════██║██╔══╝  
## ███████║╚██████╔╝██║     ██║  ██║██████╔╝██║  ██║███████║███████╗
## ╚══════╝ ╚═════╝ ╚═╝     ╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝
                                                                 
ferramenta_supabase() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_supabase

## Mostra mensagem para preencher informações
preencha_as_info


generate_jwt_tokens() {
    # Verificar a disponibilidade dos comandos necessários e instalá-los se necessário
    if ! command -v openssl &> /dev/null; then
        echo "O comando 'openssl' não está disponível. Tentando instalar..."
        if [[ "$(uname)" == "Darwin" ]]; then
            # macOS
            brew install openssl
        elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
            # Linux
            if [[ -f /etc/redhat-release ]]; then
                # Red Hat, CentOS, Fedora
                sudo yum install -y openssl
            elif [[ -f /etc/debian_version ]]; then
                # Debian, Ubuntu
                sudo apt-get install -y openssl
            else
                echo "Não foi possível identificar a distribuição Linux. Por favor, instale o OpenSSL manualmente."
                return 1
            fi
        else
            echo "Sistema operacional não suportado. Por favor, instale o OpenSSL manualmente."
            return 1
        fi
    fi

    if ! command -v jq &> /dev/null; then
        echo "O comando 'jq' não está disponível. Tentando instalar..."
        if [[ "$(uname)" == "Darwin" ]]; then
            # macOS
            brew install jq
        elif [[ "$(expr substr $(uname -s) 1 5)" == "Linux" ]]; then
            # Linux
            if [[ -f /etc/redhat-release ]]; then
                # Red Hat, CentOS, Fedora
                sudo yum install -y jq
            elif [[ -f /etc/debian_version ]]; then
                # Debian, Ubuntu
                sudo apt-get install -y jq
            else
                echo "Não foi possível identificar a distribuição Linux. Por favor, instale o jq manualmente."
                return 1
            fi
        else
            echo "Sistema operacional não suportado. Por favor, instale o jq manualmente."
            return 1
        fi
    fi

# Definir os payloads dos JWTs
    payload_service_key=$(echo '{
      "role": "service_role",
      "iss": "supabase",
      "iat": 1715050800,
      "exp": 1872817200
    }' | jq .)

    
    payload_anon_key=$(echo '{
      "role": "anon",
      "iss": "supabase",
      "iat": 1715050800,
      "exp": 1872817200
    }' | jq .)

    # Gerar uma chave secreta aleatória e segura
    secret=$(openssl rand -hex 20)

    # Codificar o header em base64url
    header=$(echo -n '{"alg":"HS256","typ":"JWT"}' | openssl base64 | tr -d '=' | tr '+/' '-_' | tr -d '\n')
    
    # Codificar os payloads em base64url
    payload_service_key_base64=$(echo -n "$payload_service_key" | openssl base64 | tr -d '=' | tr '+/' '-_' | tr -d '\n')
    payload_anon_key_base64=$(echo -n "$payload_anon_key" | openssl base64 | tr -d '=' | tr '+/' '-_' | tr -d '\n')

    # Criar as assinaturas dos tokens usando a mesma chave secreta
    signature_service_key=$(echo -n "$header.$payload_service_key_base64" | openssl dgst -sha256 -hmac "$secret" -binary | openssl base64 | tr -d '=' | tr '+/' '-_' | tr -d '\n')
    signature_anon_key=$(echo -n "$header.$payload_anon_key_base64" | openssl dgst -sha256 -hmac "$secret" -binary | openssl base64 | tr -d '=' | tr '+/' '-_' | tr -d '\n')

    # Combinar as partes dos tokens
    token_service_key="$header.$payload_service_key_base64.$signature_service_key"
    token_anon_key="$header.$payload_anon_key_base64.$signature_anon_key"

    # Retornar os valores gerados como uma string separada por espaços
    echo "$secret $token_service_key $token_anon_key"
}

# Chamar a função e armazenar o retorno em uma variável
result=$(generate_jwt_tokens)

# Verificar se o resultado está vazio
if [[ -z "$result" ]]; then
    echo "A função retornou um resultado vazio. Verifique a configuração do ambiente e as dependências."
    exit 1
fi

# Extrair os valores individuais usando o comando 'read'
read secret token_service_key token_anon_key <<< "$result"


## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio do Builder
    echo -e "\e[97mPasso$amarelo 1/10\e[0m"
    echo -en "\e[33mDigite o Dominio para o Supabase (ex: supabase.sinergialucrativa.com): \e[0m" && read -r url_supabase
    echo ""

    ##Pergunta o Dominio do Viewer
    echo -e "\e[97mPasso$amarelo 2/10\e[0m"
    echo -en "\e[33mDigite o Usuario para o Supabase (ex: AndromedaNet): \e[0m" && read -r user_supabase
    echo ""

    ##Pergunta a versão da ferramenta
    echo -e "\e[97mPasso$amarelo 3/10\e[0m"
    echo -e "$amarelo--> Sem NENHUM caracteres especiais, tais como: @\!#$ entre outros"
    echo -en "\e[33mDigite a Senha do usuario para o Supabase (ex: Senha123_): \e[0m" && read -r pass_supabase
    echo ""

    ##Pergunta o Email SMTP
    echo -e "\e[97mPasso$amarelo 4/10\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_supabase
    echo ""

    ##Pergunta o usuário do Email SMTP
    echo -e "\e[97mPasso$amarelo 5/10\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuário para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r usuario_email_supabase
    echo ""
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 6/10\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_email_supabase
    echo ""

    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 7/10\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r smtp_email_supabase
    echo ""

    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 8/10\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_supabase
    echo ""

    ## Verifica se a porta é 465, se sim deixa o ssl true, se não, deixa false 
    if [ "$porta_smtp_supabase" -eq 465 ]; then
    smtp_secure_supabase=true
    else
    smtp_secure_supabase=false
    fi

    ## Pergunta qual é o JWT_Key
    JWT_Key="$secret"

    ## Pergunta qual é o ANON_KEY
    ANON_KEY="$token_anon_key"

    ## Pergunta qual é o SERVICE_KEY
    SERVICE_KEY="$token_service_key"

    ## Pergunta qual é o Access Key do minio
    echo -e "\e[97mPasso$amarelo 9/10\e[0m"
    echo -en "\e[33mAccess Key Minio: \e[0m" && read -r S3_ACCESS_KEY
    echo ""

    ## Pergunta qual é a Secret Key do minio
    echo -e "\e[97mPasso$amarelo 10/10\e[0m"
    echo -en "\e[33mSecret Key Minio: \e[0m" && read -r S3_SECRET_KEY
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_supabase
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do Builder
    echo -e "\e[33mDominio do Supabase:\e[97m $url_supabase\e[0m"
    echo ""

    ## Informação sobre URL do Viewer
    echo -e "\e[33mUsuaraio:\e[97m $user_supabase\e[0m"
    echo ""

    ## Informação sobre a versão da ferramenta
    echo -e "\e[33mSenha:\e[97m $pass_supabase\e[0m"
    echo ""    

    ## Informação sobre Email
    echo -e "\e[33mEmail do SMTP:\e[97m $email_supabase\e[0m"
    echo ""

    ## Informação sobre Email
    echo -e "\e[33mUsuário do SMTP:\e[97m $usuario_email_supabase\e[0m"
    echo ""

    ## Informação sobre Senha do Email
    echo -e "\e[33mSenha do Email:\e[97m $senha_email_supabase\e[0m"
    echo ""

    ## Informação sobre Host SMTP
    echo -e "\e[33mHost SMTP do Email:\e[97m $smtp_email_supabase\e[0m"
    echo ""

    ## Informação sobre Porta SMTP
    echo -e "\e[33mPorta SMTP do Email:\e[97m $porta_smtp_supabase\e[0m"
    echo ""

    ## Informação sobre Secure SMTP
    echo -e "\e[33mSecure SMTP do Email:\e[97m $smtp_secure_supabase\e[0m"
    echo ""

    ## Informação sobre JWT_Key
    echo -e "\e[33mJWT_Key:\e[97m $JWT_Key\e[0m"
    echo ""

    ## Informação sobre ANON_KEY
    echo -e "\e[33mAnon Key:\e[97m $ANON_KEY\e[0m"
    echo ""

    ## Informação sobre SERVICE_KEY
    echo -e "\e[33mService Key:\e[97m $SERVICE_KEY\e[0m"
    echo ""

    ## Informação sobre Access Key
    echo -e "\e[33mAccess Key Minio:\e[97m $S3_ACCESS_KEY\e[0m"
    echo ""

    ## Informação sobre Secret Key
    echo -e "\e[33mSecret Key Minio:\e[97m $S3_SECRET_KEY\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_supabase

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done


## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO SUPABASE \e[33m[1/4]\e[0m"
echo ""
sleep 1

git clone --depth 1 https://github.com/supabase/supabase  > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "1/4 - [ OK ] - Baixando Repositório do Supabase"
else
    echo "1/4 - [ OFF ] - Baixando Repositório do Supabase"
    echo "Não foi possivel Baixar."
fi

sudo mkdir -p /root/supabase/docker/volumes/db/data
if [ $? -eq 0 ]; then
    echo "1/4 - [ OK ] - Criando diretório 1"
else
    echo "1/4 - [ OFF ] - Criando diretório 1"
    echo "Não foi criar o diretório"
fi

sudo mkdir -p /var/lib/postgresql/data
if [ $? -eq 0 ]; then
    echo "1/4 - [ OK ] - Criando diretório 2"
else
    echo "1/4 - [ OFF ] - Criando diretório 2"
    echo "Não foi criar o diretório"
fi

sudo mkdir -p /root/supabase/docker/volumes/storage
if [ $? -eq 0 ]; then
    echo "1/4 - [ OK ] - Criando diretório 3"
else
    echo "1/4 - [ OFF ] - Criando diretório 3"
    echo "Não foi criar o diretório"
fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO DADOS DO MINIO \e[33m[2/4]\e[0m"
echo ""
sleep 1

pegar_senha_minio
if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Pegando Senha do MinIO"
else
    echo "1/2 - [ OFF ] - Pegando Senha do MinIO"
    echo "Não foi possivel pegar a senha do minio"
fi
pegar_link_s3
if [ $? -eq 0 ]; then
    echo "2/2 - [ OK ] - Pegando URL do S3"
else
    echo "2/2 - [ OFF ] - Pegando URL do S3"
    echo "Não foi possivel pegar o link do S3"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO SUPABASE \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando key Aleatórias
Senha_Postgres=$(openssl rand -hex 16)

Logflare_key=$(openssl rand -hex 16)

SECRET_KEY_BASE=$(openssl rand -hex 32)


## Criando a stack
cat > supabase.yaml <<EOL
version: "3.7"
services:

## Rode os seguintes comandos na sua VPS antes de fazer deploy desta stack:

## Baixando github com os arquivos do Supabase
## git clone --depth 1 https://github.com/supabase/supabase

## Criando pasta "data" para os volumes
## sudo mkdir -p /root/supabase/docker/volumes/db/data

## Criando pasta "storage" para armazenamento de arquivos
## sudo mkdir -p /root/supabase/docker/volumes/storage

## Criando a pasta "postgresql/data" para o db
## sudo mkdir -p /var/lib/postgresql/data

## Crie suas credenciais ANON_KEY e SERVICE_KEY através do link: https://supabase.com/docs/guides/self-hosting/docker


## --------------------------- ANDROMEDA --------------------------- ##

  studio:
    image: supabase/studio:20240701-05dfbec ## Versão da imagem

    networks:
      - $nome_rede_interna ## Nome da rede interna
    
    environment:
      ## Ativando Log Debug
      - DEBUG=next:*

      ## Configuração do Hostname
      - HOSTNAME=0.0.0.0

      ## Dados Postgres
      - POSTGRES_PASSWORD=$Senha_Postgres ## Senha do Postgres #OK

      ## Branding
      - DEFAULT_ORGANIZATION_NAME=OrionDesign ## Nome da Empresa
      - DEFAULT_PROJECT_NAME=SetupOrion ## Nome do Projeto

      ## Urls
      - SUPABASE_PUBLIC_URL=https://$url_supabase ## Link do supabase
      - SUPABASE_URL=http://kong:8000
      - STUDIO_PG_META_URL=http://meta:8080

      ## Logflare
      - LOGFLARE_API_KEY=$Logflare_key ## Key aleatória
      - LOGFLARE_URL=http://analytics:4000
      - NEXT_PUBLIC_ENABLE_LOGS=true
      - NEXT_ANALYTICS_BACKEND_PROVIDER=postgres

      ## ANON_KEY & SERVICE_KEY
      - SUPABASE_ANON_KEY=$ANON_KEY ## ANON_KEY
      - SUPABASE_SERVICE_KEY=$SERVICE_KEY ## SERVICE_KEY
      - AUTH_JWT_SECRET=$JWT_Key

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

  kong:
    image: kong:2.8.1 ## Versão da imagem
    entrypoint: bash -c 'eval "echo \"\$\$(cat ~/temp.yml)\"" > ~/kong.yml && /docker-entrypoint.sh kong docker-start'

    volumes:
      - /root/supabase/docker/volumes/api/kong.yml:/home/kong/temp.yml:ro

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Ativando Log Debug
      - KONG_LOG_LEVEL=debug

      ## Dados Login Supabase
      - DASHBOARD_USERNAME=$user_supabase ## Usuario Kong
      - DASHBOARD_PASSWORD=$pass_supabase ## Senha Kong

      ## JWT_SECRET
      - JWT_SECRET=$JWT_Key 
      
      ## Dados Kong
      - KONG_DATABASE=off
      - KONG_DECLARATIVE_CONFIG=/home/kong/kong.yml
      - KONG_DNS_ORDER=LAST,A,CNAME
      - KONG_PLUGINS=request-transformer,cors,key-auth,acl,basic-auth
      - KONG_NGINX_PROXY_PROXY_BUFFER_SIZE=160k
      - KONG_NGINX_PROXY_PROXY_BUFFERS=64 160k

      ## ANON_KEY & SERVICE_KEY
      - SUPABASE_ANON_KEY=$ANON_KEY ## ANON_KEY
      - SUPABASE_SERVICE_KEY=$SERVICE_KEY ## SERVICE_KEY

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager  
      labels:
        - traefik.enable=true
        - traefik.http.routers.kong.rule=Host(\`$url_supabase\`) && PathPrefix(\`/\`) ## Url do Kong
        - traefik.http.services.kong.loadbalancer.server.port=8000
        - traefik.http.routers.kong.service=kong
        - traefik.http.routers.kong.entrypoints=websecure
        - traefik.http.routers.kong.tls.certresolver=letsencryptresolver
        - traefik.http.routers.kong.tls=true


## --------------------------- ANDROMEDA --------------------------- ##

  auth:
    image: supabase/gotrue:v2.151.0 ## Versão da imagem

    healthcheck:
      test:
        - CMD
        - wget
        - '--no-verbose'
        - '--tries=1'
        - '--spider'
        - 'http://localhost:9999/health'
      timeout: 5s
      interval: 5s
      retries: 3

    networks:
      - $nome_rede_interna ## Nome da rede interna

    ports:
      - 9999:9999

    environment:
      - GOTRUE_API_HOST=0.0.0.0
      - GOTRUE_API_PORT=9999
      - API_EXTERNAL_URL=https://$url_supabase ## Url do Supabase
      - GOTRUE_DB_DRIVER=postgres
      - GOTRUE_DB_DATABASE_URL=postgres://supabase_auth_admin:$Senha_Postgres@db:5344/supabase  ## Senha do Postgres #OK
      - GOTRUE_SITE_URL=https://$url_supabase ## link do Supabase
      - GOTRUE_URI_ALLOW_LIST=
      - GOTRUE_JWT_ADMIN_ROLES=service_role
      - GOTRUE_JWT_AUD=authenticated
      - GOTRUE_JWT_DEFAULT_GROUP_NAME=authenticated
      - GOTRUE_JWT_EXP=3600
      - GOTRUE_JWT_SECRET=$JWT_Key ## JWT_SECRET

      ## Dados SMTP
      - GOTRUE_DISABLE_SIGNUP=false ## Desativar inscrições
      - GOTRUE_EXTERNAL_EMAIL_ENABLED=true
      - GOTRUE_EXTERNAL_ANONYMOUS_USERS_ENABLE=false
      - GOTRUE_MAILER_AUTOCONFIRM=true ## Enviar email para autenticar
      - GOTRUE_SMTP_ADMIN_EMAIL=$email_supabase ## Email SMTP
      - GOTRUE_SMTP_HOST=$smtp_email_supabase ## Host SMTP
      - GOTRUE_SMTP_PORT=$porta_smtp_supabase ## Porta SMTP
      - GOTRUE_SMTP_USER=$usuario_email_supabase ## Usuario SMTP
      - GOTRUE_SMTP_PASS=$senha_email_supabase ## Senha SMTP
      - GOTRUE_SMTP_SENDER_NAME=$email_supabase ## Email SMTP

      ## Paths SMTP
      - GOTRUE_MAILER_URLPATHS_INVITE=/auth/v1/verify
      - GOTRUE_MAILER_URLPATHS_CONFIRMATION=/auth/v1/verify
      - GOTRUE_MAILER_URLPATHS_RECOVERY=/auth/v1/verify
      - GOTRUE_MAILER_URLPATHS_EMAIL_CHANGE=/auth/v1/verify

      ## Autenticação por telefone
      - GOTRUE_EXTERNAL_PHONE_ENABLED=false
      - GOTRUE_SMS_AUTOCONFIRM=false

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

  rest:
    image: postgrest/postgrest:v12.0.3 ## Versão da imagem
    command: "postgrest"

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados postgres
      - PGRST_DB_URI=postgres://authenticator:$Senha_Postgres@db:5344/supabase  ## Senha do Postgres #OK
      - PGRST_DB_SCHEMAS=public,storage,graphql_public
      #- PGRST_DB_SCHEMAS=public
      - PGRST_DB_ANON_ROLE=anon
      - PGRST_DB_USE_LEGACY_GUCS=false

      ## Dados JWT
      - PGRST_JWT_SECRET=$JWT_Key ## JWT_SECRET
      - PGRST_APP_SETTINGS_JWT_SECRET=$JWT_Key ## JWT_SECRET
      - PGRST_APP_SETTINGS_JWT_EXP=3600

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

  realtime:
    image: supabase/realtime:v2.25.50 ## Versão da imagem
    command: "sh -c \"/app/bin/migrate && /app/bin/realtime eval 'Realtime.Release.seeds(Realtime.Repo)' && /app/bin/server\"\n"

    healthcheck:
      test:
        - CMD
        - bash
        - '-c'
        - 'printf \0 > /dev/tcp/localhost/4000'
      timeout: 5s
      interval: 5s
      retries: 3

    networks:
      - $nome_rede_interna ## Nome da rede interna
  
    environment:
      ## Porta RealTime
      - PORT=4000

      ## Dados Postgres
      - DB_HOST=db
      - DB_PORT=5344 ## Porta do Postgres
      - DB_USER=supabase_admin
      - DB_PASSWORD=$Senha_Postgres # OK
      - DB_NAME=supabase
      - DB_AFTER_CONNECT_QUERY=SET search_path TO _realtime
      - DB_ENC_KEY=supabaserealtime

      ## Dados JWT
      - API_JWT_SECRET=$JWT_Key ## JWT_SECRET

      ## Secret Key
      - SECRET_KEY_BASE=$SECRET_KEY_BASE

      ## Ainda não procurei saber o que essas coisas fazem
      - FLY_ALLOC_ID=fly123
      - FLY_APP_NAME=realtime
      - ERL_AFLAGS=-proto_dist inet_tcp
      - ENABLE_TAILSCALE=false
      - DNS_NODES="''"

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

  storage:
    image: supabase/storage-api:v1.0.6 ## Versão da imagem

    volumes:
      - /root/supabase/docker/volumes/storage:/var/lib/storage:z

    networks:
      - $nome_rede_interna ## Nome da rede interna
  
    environment:
      ## Ativando Log Debug
      - LOG_LEVEL=debug

      ## Porta Storage
      - SERVER_PORT=5000 
      - SERVER_REGION=eu-south ## Localização
      - MULTI_TENANT=false

      ## Dados JWT
      - PGRST_JWT_SECRET=$JWT_Key ## JWT_SECRET
      - AUTH_JWT_SECRET=$JWT_Key ## JWT_SECRET

      ## Dados Postgrest
      - POSTGREST_URL=http://rest:3000
      - DATABASE_URL=postgres://supabase_admin:$Senha_Postgres@db:5344/supabase  ## Senha do Postgres #OK
      - DB_INSTALL_ROLES=false
      - FILE_SIZE_LIMIT=52428800

      ## Informações Storage
      - STORAGE_BACKEND=s3 ## Coloque s3 para minio e descomente os outros campos
      - STORAGE_S3_BUCKET=supabase
      #- FILE_STORAGE_BACKEND_PATH=/var/lib/storage
      - TENANT_ID=stub
      - REGION=eu-south ## Região
      - AWS_DEFAULT_REGION=eu-south ## Localização MinIO
      - GLOBAL_S3_BUCKET=supabase ## Nome da bucket do MinIO
      - GLOBAL_S3_ENDPOINT=https://$url_s3
      - GLOBAL_S3_PROTOCOL=https
      - GLOBAL_S3_FORCE_PATH_STYLE=true
      - AWS_ACCESS_KEY_ID=$S3_ACCESS_KEY ## Access Key
      - AWS_SECRET_ACCESS_KEY=$S3_SECRET_KEY ## Secret Key
      - UPLOAD_FILE_SIZE_LIMIT=524288000
      - UPLOAD_FILE_SIZE_LIMIT_STANDARD=524288000
      - UPLOAD_SIGNED_URL_EXPIRATION_TIME=120
      - TUS_URL_PATH=/upload/resumable
      - TUS_MAX_SIZE=3600000

      ## Dados ImageProxy 
      - IMAGE_TRANSFORMATION_ENABLED=true
      #- ENABLE_IMAGE_TRANSFORMATION=true
      - IMGPROXY_URL=http://imgproxy:5001
      - IMGPROXY_REQUEST_TIMEOUT=15
      - DATABASE_SEARCH_PATH=storage

      ## ANON_KEY & SERVICE_KEY
      - ANON_KEY=$ANON_KEY ## ANON_KEY
      - SERVICE_KEY=$SERVICE_KEY ## SERVICE_KEY

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

  imgproxy:
    image: darthsim/imgproxy:v3.8.0 ## Versão da imagem

    healthcheck:
      test:
        - CMD
        - imgproxy
        - health
      timeout: 5s
      interval: 5s
      retries: 3

    volumes:
      - /root/supabase/docker/volumes/storage:/var/lib/storage:z

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados do ImgProxy
      - IMGPROXY_BIND=:5001
      - IMGPROXY_LOCAL_FILESYSTEM_ROOT=/
      - IMGPROXY_USE_ETAG=true
      - IMGPROXY_ENABLE_WEBP_DETECTION=true

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager


## --------------------------- ANDROMEDA --------------------------- ##

  meta:
    image: supabase/postgres-meta:v0.83.2 ## Versão da imagem

    networks:
      - $nome_rede_interna ## Nome da rede interna
    ports:
      - 8080:8080

    environment:
      ## Dados Meta
      - PG_META_PORT=8080
      - PG_META_HOST=0.0.0.0

      ## Dados postgres
      - PG_META_DB_HOST=db
      - PG_META_DB_PORT=5344 ## Porta do Postgres
      - PG_META_DB_NAME=supabase
      - PG_META_DB_USER=supabase_admin
      - PG_META_DB_PASSWORD=$Senha_Postgres  ## Senha do Postgres # OK

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

  functions:
    image: supabase/edge-runtime:v1.55.0 ## Versão da imagem
    command:
      - start
      - '--main-service'
      - /home/deno/functions/main

    volumes:
      - /root/supabase/docker/volumes/functions:/home/deno/functions:Z
      - /root/supabase/docker/volumes/functions/main/index.ts:/home/deno/functions/main/index.ts:Z
      - /root/supabase/docker/volumes/functions/hello/index.ts:/home/deno/functions/hello/index.ts:Z

    networks:
      - $nome_rede_interna ## Nome da rede interna
      
    environment:
      ## Url Api Kong
      - SUPABASE_URL=http://kong:8000

      ## Dados Postgres
      - SUPABASE_DB_URL=postgresql://postgres:$Senha_Postgres@db:5344/supabase  ## Senha do Postgres #OK
      
      ## ANON_KEY & SERVICE_KEY
      - SUPABASE_ANON_KEY=$ANON_KEY ## ANON_KEY
      - SUPABASE_SERVICE_ROLE_KEY=$SERVICE_KEY ## SERVICE_KEY
      
      ## Dados JWT
      - JWT_SECRET=$JWT_Key ## JWT_SECRET
      - VERIFY_JWT=false

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

  analytics:
    image: supabase/logflare:1.4.0 ## Versão da imagem

    healthcheck:
      test:
        - CMD
        - curl
        - 'http://localhost:4000/health'
      timeout: 5s
      interval: 5s
      retries: 10

    networks:
      - $nome_rede_interna ## Nome da rede interna

    ports:
      - 4000:4000

    environment:
      - LOGFLARE_LOG_LEVEL=debug
      - DB_USERNAME=supabase_admin
      - DB_DATABASE=supabase
      - DB_HOSTNAME=db
      - DB_PORT=5344
      - DB_PASSWORD=$Senha_Postgres # OK
      - DB_SCHEMA=_analytics
      - POSTGRES_BACKEND_URL=postgresql://supabase_admin:$Senha_Postgres@db:5344/supabase # OK
      - POSTGRES_BACKEND_SCHEMA=_analytics

      ## Logflare
      - LOGFLARE_SUPABASE=true
      - LOGFLARE_SINGLE_TENANT=true
      - LOGFLARE_SINGLE_TENANT_MODE=true
      - LOGFLARE_SUPABASE_MODE=true
      - LOGFLARE_NODE_HOST=127.0.0.1
      - LOGFLARE_API_KEY=$Logflare_key ## Key aleatória
      - LOGFLARE_MIN_CLUSTER_SIZE=1
      - LOGFLARE_FEATURE_FLAG_OVERRIDE=multibackend=true

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

  db:
    image: supabase/postgres:15.1.1.61 ## Versão da imagem

    healthcheck:
      test: 'pg_isready -U postgres -h localhost'
      interval: 5s
      timeout: 5s
      retries: 10 

    volumes:
      - /root/supabase/docker/volumes/db/realtime.sql:/docker-entrypoint-initdb.d/migrations/99-realtime.sql:Z
      - /root/supabase/docker/volumes/db/webhooks.sql:/docker-entrypoint-initdb.d/init-scripts/98-webhooks.sql:Z
      - /root/supabase/docker/volumes/db/roles.sql:/docker-entrypoint-initdb.d/init-scripts/99-roles.sql:Z
      - /root/supabase/docker/volumes/db/jwt.sql:/docker-entrypoint-initdb.d/init-scripts/99-jwt.sql:Z
      - /root/supabase/docker/volumes/db/data:/var/lib/postgresql/data:Z ## Precisa de criar o diretório, use: sudo mkdir -p /var/lib/postgresql/data
      - /root/supabase/docker/volumes/db/logs.sql:/docker-entrypoint-initdb.d/migrations/99-logs.sql:Z
      - supabase_db_config:/etc/postgresql-custom

    networks:
      - $nome_rede_interna ## Nome da rede interna
    ports:
      - 5344:5344 ## Porta externas

    command:
      - postgres
      - '-c'
      - config_file=/etc/postgresql/postgresql.conf
      - '-c'
      - log_min_messages=fatal

    environment:
      ## Dados Postgres
      - POSTGRES_HOST=/var/run/postgresql
      - PGPORT=5344 ## Porta do Postgres
      - POSTGRES_PORT=5344 ## Porta do Postgres
      - PGPASSWORD=$Senha_Postgres  ## Senha do Postgres #OK
      - POSTGRES_PASSWORD=$Senha_Postgres  ## Senha do Postgres #OK
      - PGDATABASE=supabase
      - POSTGRES_DB=supabase

      ## Dados JWT
      - JWT_SECRET=$JWT_Key ## JWT_SECRET
      - JWT_EXP=3600

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

  vector:
    image: timberio/vector:0.28.1-alpine ## Versão da imagem
    command:
      - '--config'
      - etc/vector/vector.yml

    volumes:
    - /root/supabase/docker/volumes/logs/vector.yml:/etc/vector/vector.yml:ro
    - /var/run/docker.sock:/var/run/docker.sock:ro

    networks:
      - $nome_rede_interna ## Nome da rede interna

    ports:
      - 9001:9001
      
    environment:
      ## Ativando Log Debug
      - VECTOR_LOG=debug
      
      ## Logflare key
      - LOGFLARE_API_KEY=$Logflare_key ## Key aleatória

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  supabase_db_config:
    external: true
    name: supabase_db_config

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do supabase"
fi
STACK_NAME="supabase"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c supabase.yaml supabase > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do supabase"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "supabase" para verificar se o serviço esta online
wait_stack "supabase"

cd dados_vps

cat > dados_supabase <<EOL
[ SUPABASE ]

Dominio do Supabase: https://$url_supabase

Usuario: $user_supabase

Senha: $pass_supabase

JWT Key: $JWT_Key

Anon Key: $ANON_KEY

Service Key: $SERVICE_KEY
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ SUPABASE ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_supabase\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m $user_supabase\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m $pass_supabase\e[0m"
echo ""

echo -e "\e[33mAnon key:\e[97m $ANON_KEY\e[0m"
echo ""

echo -e "\e[33mService key:\e[97m $SERVICE_KEY\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███╗   ██╗████████╗███████╗██╗   ██╗
## ████╗  ██║╚══██╔══╝██╔════╝╚██╗ ██╔╝
## ██╔██╗ ██║   ██║   █████╗   ╚████╔╝ 
## ██║╚██╗██║   ██║   ██╔══╝    ╚██╔╝  
## ██║ ╚████║   ██║   ██║        ██║   
## ╚═╝  ╚═══╝   ╚═╝   ╚═╝        ╚═╝   
                                    
ferramenta_ntfy() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_ntfy

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/3\e[0m"
    echo -en "\e[33mDigite o Dominio para o Ntfy (ex: ntfy.sinergialucrativa.com): \e[0m" && read -r url_ntfy
    echo ""

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 2/3\e[0m"
    echo -en "\e[33mDigite o Usuario (ex: andromeda): \e[0m" && read -r user_ntfy
    echo ""

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 3/3\e[0m"
    echo -en "\e[33mDigite a Senha (ex: @Senha123_): \e[0m" && read -r pass_ntfy
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_ntfy
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info

    ## Informação sobre URL
    echo -e "\e[33mDominio da Ntfy:\e[97m $url_ntfy\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mUsuario do Ntfy:\e[97m $user_ntfy\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mSenha do Ntfy:\e[97m $pass_ntfy\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_ntfy

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO NTFY \e[33m[1/3]\e[0m"
echo ""
sleep 1

## Literalmente nada, apenas um espaço vazio caso precisar de adicionar alguma coisa
## Antes..
## E claro, para aparecer a mensagem do passo..

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO O NTFY \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Gerando Hash
hashed_senha=$(htpasswd -nb $user_ntfy $pass_ntfy | sed -e s/\\$/\\$\\$/g)

## Gerando Base64
authentication=$(echo -n "$user_ntfy:$pass_ntfy" | base64)

## Criando a stack
cat > ntfy.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  ntfy:
    image: binwiederhier/ntfy:latest
    command:
      - serve

    volumes:
      - ntfy_cache:/var/cache/ntfy
      - ntfy_etc:/etc/ntfy

    networks:
      - $nome_rede_interna

    environment:
      - TZ=UTC

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.ntfy.rule=Host(\`$url_ntfy\`)
        - traefik.http.services.ntfy.loadbalancer.server.port=80
        - traefik.http.routers.ntfy.service=ntfy
        - traefik.http.routers.ntfy.tls.certresolver=letsencryptresolver
        - traefik.http.routers.ntfy.entrypoints=websecure
        - traefik.http.middlewares.ntfy-auth.basicauth.users=$hashed_senha
        - traefik.http.routers.ntfy.middlewares=ntfy-auth
        - traefik.http.routers.ntfy.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  ntfy_cache:
    external: true
    name: ntfy_cache
  ntfy_etc:
    external: true
    name: ntfy_etc

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack da Ntfy"
fi
STACK_NAME="ntfy"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c ntfy.yaml ntfy > /dev/null 2>&1

#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack da Ntfy"
#fi

sleep 10

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_ntfy para verificar se o serviço esta online
wait_stack "ntfy"

cd dados_vps

cat > dados_ntfy <<EOL
[ NTFY ]

Link do Ntfy: https://$url_ntfy

Usuario: $user_ntfy

Senha: $pass_ntfy

Authorization: Basic $authentication
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ NTFY ]\e[0m"
echo ""

echo -e "\e[97mLink do Ntfy:\e[33m https://$url_ntfy\e[0m"
echo ""

echo -e "\e[97mUsuario:\e[33m $user_ntfy\e[0m"
echo ""

echo -e "\e[97mSenha:\e[33m $pass_ntfy\e[0m"
echo ""

echo -e "\e[97mAuthorization:\e[33m Basic $authentication\e[0m"
echo ""
## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██╗      ██████╗ ██╗    ██╗ ██████╗ ██████╗ ██████╗ ███████╗██████╗ 
## ██║     ██╔═══██╗██║    ██║██╔════╝██╔═══██╗██╔══██╗██╔════╝██╔══██╗
## ██║     ██║   ██║██║ █╗ ██║██║     ██║   ██║██║  ██║█████╗  ██████╔╝
## ██║     ██║   ██║██║███╗██║██║     ██║   ██║██║  ██║██╔══╝  ██╔══██╗
## ███████╗╚██████╔╝╚███╔███╔╝╚██████╗╚██████╔╝██████╔╝███████╗██║  ██║
## ╚══════╝ ╚═════╝  ╚══╝╚══╝  ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝╚═╝  ╚═╝

ferramenta_lowcoder() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_lowcoder

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/8\e[0m"
    echo -en "\e[33mDigite o Dominio para o Lowcoder (ex: lowcoder.sinergialucrativa.com): \e[0m" && read -r url_lowcoder
    echo ""

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 2/8\e[0m"
    echo -en "\e[33mDigite o User do MongoDB (ex: andromeda): \e[0m" && read -r user_mongodb_lowcoder
    echo ""

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 3/8\e[0m"
    echo -en "\e[33mDigite a senha do MongoDB (ex: @Senha123_): \e[0m" && read -r pass_mongodb_lowcoder
    echo ""

    ## Pergunta o email SMTP
    echo -e "\e[97mPasso$amarelo 4/8\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_smtp_lowcoder
    echo ""

    ## Pergunta o Ususario SMTP
    echo -e "\e[97mPasso$amarelo 5/8\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuario para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r user_smtp_lowcoder
    echo ""
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 6/8\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_smtp_lowcoder
    echo ""
    
    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 7/8\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r host_smtp_lowcoder
    echo ""
    
    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 8/8\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_lowcoder
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_lowcoder
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info

    ## Informação sobre URL
    echo -e "\e[33mDominio da lowcoder:\e[97m $url_lowcoder\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mUsuario do MongoDB:\e[97m $user_mongodb_lowcoder\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mSenha do MongoDB:\e[97m $pass_mongodb_lowcoder\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mEmail SMTP:\e[97m $email_smtp_lowcoder\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mUser SMTP:\e[97m $user_smtp_lowcoder\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mSenha SMTP:\e[97m $senha_smtp_lowcoder\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mHost SMTP:\e[97m $host_smtp_lowcoder\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_lowcoder\e[0m"
    echo ""

    ## Verifica se a porta é 465, se sim deixa o ssl true, se não, deixa false 
    if [ "$porta_smtp_lowcoder" -eq 465 ]; then
    smtp_secure_lowcoder_ssl=true
    smtp_secure_lowcoder_startls=false
    else
    smtp_secure_lowcoder_ssl=false
    smtp_secure_lowcoder_startls=true
    fi

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_lowcoder

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO LOWCODER \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Literalmente nada, apenas um espaço vazio caso precisar de adicionar alguma coisa
## Antes..
## E claro, para aparecer a mensagem do passo..

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO REDIS \e[33m[2/4]\e[0m"
echo ""

    verificar_container_redis
    if [ $? -eq 0 ]; then
        echo ""
    else
        ferramenta_redis
    fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO O LOWCODER \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Gerando Encryption
encryption_key_lowcoder1=$(openssl rand -hex 16)
encryption_key_lowcoder2=$(openssl rand -hex 16)
encryption_key_lowcoder3=$(openssl rand -hex 32)

## Pegando ip da vps
read -r ip _ <<<$(hostname -I)

## Criando a stack
cat > lowcoder.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  lowcoder_api:
    image: lowcoderorg/lowcoder-ce-api-service:latest

    networks:
      - $nome_rede_interna

    environment:
      - LOWCODER_PUID=9001
      - LOWCODER_PGID=9001

      ## Dados MongoDB
      - LOWCODER_MONGODB_URL=mongodb://$user_mongodb_lowcoder:$pass_mongodb_lowcoder@$ip:27017/lowcoder?authSource=admin&readPreference=primary&ssl=false&directConnection=true

      ## Dados Redis
      - LOWCODER_REDIS_URL=redis://redis:6379

      ## Dominio
      - LOWCODER_NODE_SERVICE_URL=http://lowcoder_node:6060

      ## Configurações
      - LOWCODER_MAX_QUERY_TIMEOUT=120
      - LOWCODER_EMAIL_AUTH_ENABLED=true
      - LOWCODER_EMAIL_SIGNUP_ENABLED=true ## true = permitir criar novas contas
      - LOWCODER_CREATE_WORKSPACE_ON_SIGNUP=true ## true = permitir criar novos workspaces
      - LOWCODER_WORKSPACE_MODE=SAAS

      ## Encryption
      - LOWCODER_DB_ENCRYPTION_PASSWORD=$encryption_key_lowcoder1 ## hash Encryption
      - LOWCODER_DB_ENCRYPTION_SALT=$encryption_key_lowcoder2 ## hash Encryption
      - LOWCODER_API_KEY_SECRET=$encryption_key_lowcoder3 # hash Encryption

      ## Outras configurações
      - LOWCODER_CORS_DOMAINS=*
      - LOWCODER_MAX_ORGS_PER_USER=100
      - LOWCODER_MAX_MEMBERS_PER_ORG=1000
      - LOWCODER_MAX_GROUPS_PER_ORG=100
      - LOWCODER_MAX_APPS_PER_ORG=1000
      - LOWCODER_MAX_DEVELOPERS=50

      ## Dados SMTP
      - LOWCODER_ADMIN_SMTP_HOST=$host_smtp_lowcoder
      - LOWCODER_ADMIN_SMTP_PORT=$porta_smtp_lowcoder
      - LOWCODER_ADMIN_SMTP_USERNAME=$user_smtp_lowcoder
      - LOWCODER_ADMIN_SMTP_PASSWORD=$senha_smtp_lowcoder
      - LOWCODER_ADMIN_SMTP_AUTH=true
      - LOWCODER_ADMIN_SMTP_SSL_ENABLED=$smtp_secure_lowcoder_ssl
      - LOWCODER_ADMIN_SMTP_STARTTLS_ENABLED=$smtp_secure_lowcoder_startls
      - LOWCODER_ADMIN_SMTP_STARTTLS_REQUIRED=$smtp_secure_lowcoder_startls
      - LOWCODER_EMAIL_NOTIFICATIONS_SENDER=$email_smtp_lowcoder
    
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

  lowcoder_node:
    image: lowcoderorg/lowcoder-ce-node-service:latest

    networks:
      - $nome_rede_interna

    environment:
      - LOWCODER_PUID=9001
      - LOWCODER_PGID=9001
      - LOWCODER_API_SERVICE_URL=http://lowcoder_api:8080

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

  lowcoder-frontend:
    image: lowcoderorg/lowcoder-ce-frontend:latest

    volumes:
     - lowcoder_assets:/lowcoder/assets

    networks:
      - $nome_rede_interna

    environment:
      - LOWCODER_PUID=9001
      - LOWCODER_PGID=9001
      - LOWCODER_MAX_REQUEST_SIZE=20m
      - LOWCODER_MAX_QUERY_TIMEOUT=120
      - LOWCODER_API_SERVICE_URL=http://lowcoder_api:8080
      - LOWCODER_NODE_SERVICE_URL=http://lowcoder_node:6060

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager  
      labels:
        - traefik.enable=true
        - traefik.http.routers.lowcoder.rule=Host(\`$url_lowcoder\`) && PathPrefix(\`/\`)
        - traefik.http.services.lowcoder.loadbalancer.server.port=3000
        - traefik.http.routers.lowcoder.service=lowcoder
        - traefik.http.routers.lowcoder.entrypoints=websecure
        - traefik.http.routers.lowcoder.tls.certresolver=letsencryptresolver
        - traefik.http.routers.lowcoder.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  lowcoder_assets:
    external: true
    name: lowcoder_assets

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack da Lowcoder"
fi
STACK_NAME="lowcoder"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c lowcoder.yaml lowcoder > /dev/null 2>&1

#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack da lowcoder"
#fi

sleep 10

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "lowcoder" para verificar se o serviço esta online
wait_stack "lowcoder"

cd dados_vps

cat > dados_lowcoder <<EOL
[ LOWCODER ]

Link do Lowcoder: https://$url_lowcoder

Usuario: Precisa de criar dentro do LowCoder

Senha: Precisa de criar dentro do LowCoder

API_KEY: $encryption_key_lowcoder3
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ lowcoder ]\e[0m"
echo ""

echo -e "\e[97mLink do Lowcoder:\e[33m https://$url_lowcoder\e[0m"
echo ""

echo -e "\e[97mUsuario:\e[33m Precisa de criar dentro do LowCoder\e[0m"
echo ""

echo -e "\e[97mSenha:\e[33m Precisa de criar dentro do LowCoder\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██╗  ██╗██╗   ██╗███╗   ███╗██╗  ██╗██╗   ██╗██████╗ 
## ██║  ██║██║   ██║████╗ ████║██║  ██║██║   ██║██╔══██╗
## ███████║██║   ██║██╔████╔██║███████║██║   ██║██████╔╝
## ██╔══██║██║   ██║██║╚██╔╝██║██╔══██║██║   ██║██╔══██╗
## ██║  ██║╚██████╔╝██║ ╚═╝ ██║██║  ██║╚██████╔╝██████╔╝
## ╚═╝  ╚═╝ ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚═════╝ 
                                                     
ferramenta_humhub() {

# Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_humhub

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ## Pergunta o Dominio da ferramenta
    echo -e "\e[97mPasso$amarelo 1/10\e[0m"
    echo -en "\e[33mDigite o Dominio para o HumHub (ex: humhub.sinergialucrativa.com): \e[0m" && read -r url_humhub
    echo ""

    ## Pergunta o usuario da ferramenta
    echo -e "\e[97mPasso$amarelo 2/10\e[0m"
    echo -e "$amarelo--> AutoConfig é uma função que pula as etapas de configurações pós instalação"
    echo -en "\e[33mUsar o AutoConfig do HumHub (exemplo: 0 para não ou 1 para sim): \e[0m" && read -r autoconfig_humhub_valor
    echo ""

    if [ "$autoconfig_humhub_valor" -eq 1 ]; then
      autoconfig_humhub="- HUMHUB_AUTO_INSTALL=1"
    elif [ "$autoconfig_humhub_valor" -eq 0 ]; then
      autoconfig_humhub="#- HUMHUB_AUTO_INSTALL=0"
    else
      echo "Erro ao receber resposta do AutoConfig. Resposta precisa ser 0 ou 1"
      echo "Definindo para 0"
      autoconfig_humhub_valor="0"
      autoconfig_humhub="#- HUMHUB_AUTO_INSTALL=0"
    fi

    ## Pergunta o usuario da ferramenta
    echo -e "\e[97mPasso$amarelo 3/10\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ e/ou espaços"
    echo -en "\e[33mDigite um Usuario Admin (ex: andromeda): \e[0m" && read -r user_humhub
    echo ""

    ## Pergunta o email da ferramenta
    echo -e "\e[97mPasso$amarelo 4/10\e[0m"
    echo -en "\e[33mDigite o Email do Admin: (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_humhub
    echo ""
    
    ## Pergunta o senha da ferramenta
    echo -e "\e[97mPasso$amarelo 5/10\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$"
    echo -en "\e[33mDigite uma Senha para o Admin (ex: @Senha123_): \e[0m" && read -r pass_humhub
    echo ""

    ## Pergunta o Email SMTP
    echo -e "\e[97mPasso$amarelo 6/10\e[0m"
    echo -en "\e[33mDigite um Email para o SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_smtp_humhub
    echo ""

    ## Pergunta o User SMTP
    echo -e "\e[97mPasso$amarelo 7/10\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuario do SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r user_smtp_humhub
    echo ""
    
    ## Pergunta a Senha SMTP
    echo -e "\e[97mPasso$amarelo 8/10\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do email (ex: @Senha123_): \e[0m" && read -r senha_smtp_humhub
    echo ""
    
    ## Pergunta o Host SMTP
    echo -e "\e[97mPasso$amarelo 9/10\e[0m"
    echo -en "\e[33mDigite o Host SMTP do email (ex: smtp.hostinger.com): \e[0m" && read -r host_smtp_humhub
    echo ""
    
    ## Pergunta a Porta SMTP 
    echo -e "\e[97mPasso$amarelo 10/10\e[0m"
    echo -en "\e[33mDigite a Porta SMTP do email (ex: 465): \e[0m" && read -r porta_smtp_humhub
    echo ""

    if [ "$porta_smtp_humhub" -eq 465 ] || [ "$porta_smtp_humhub" -eq 25 ]; then
        porta_smtp_humhub_conv=1
    else
        porta_smtp_humhub_conv=0
    fi
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_humhub
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL
    echo -e "\e[33mDominio do HumHub:\e[97m $url_humhub\e[0m"
    echo ""

    echo -e "\e[33mUsar AutoConfig:\e[97m $autoconfig_humhub\e[0m"
    echo ""

    ## Informação sobre Usuario Admin
    echo -e "\e[33mUsuario Admin:\e[97m $user_humhub\e[0m"
    echo ""

    ## Informação sobre Email Admin
    echo -e "\e[33mEmail do Admin:\e[97m $email_humhub\e[0m"
    echo ""    

    ## Informação sobre Senha Admin
    echo -e "\e[33mSenha do Admin:\e[97m $pass_humhub\e[0m"
    echo ""

    ## Informação sobre Senha Admin
    echo -e "\e[33mEmail SMTP:\e[97m $email_smtp_humhub\e[0m"
    echo ""

    ## Informação sobre Senha Admin
    echo -e "\e[33mUsuario SMTP:\e[97m $user_smtp_humhub\e[0m"
    echo ""

    ## Informação sobre Senha Admin
    echo -e "\e[33mSenha SMTP:\e[97m $senha_smtp_humhub\e[0m"
    echo ""

    ## Informação sobre Senha Admin
    echo -e "\e[33mHost SMTP:\e[97m $host_smtp_humhub\e[0m"
    echo ""

    ## Informação sobre Senha Admin
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_humhub\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_humhub

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO HUMHUB \e[33m[1/5]\e[0m"
echo ""
sleep 1

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO MYSQL \e[33m[2/5]\e[0m"
echo ""
sleep 1

dados

verificar_container_mysql
if [ $? -eq 0 ]; then
    pegar_senha_mysql > /dev/null 2>&1
else
    ferramenta_mysql
    pegar_senha_mysql > /dev/null 2>&1
fi

criar_banco_mysql_da_stack "humhub"

## Espera 30 segundos
wait_30_sec

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO REDIS \e[33m[3/5]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_redis
if [ $? -eq 0 ]; then
    sleep 1
else
    ferramenta_redis > /dev/null 2>&1
fi

sleep 3

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO HUMHUB \e[33m[4/5]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > humhub.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  humhub:
    image: mriedmann/humhub:latest

    volumes:
      - humhub_data:/var/www/localhost/htdocs/protected/modules
      - humhub_uploads:/var/www/localhost/htdocs/uploads
      - humhub_assets:/var/www/localhost/htdocs/assets
      - humhub_themes:/var/www/localhost/htdocs/themes
      
    networks:
      - $nome_rede_interna
      
    environment:
      ## Dados de acesso
      - HUMHUB_ADMIN_USERNAME=$user_humhub
      - HUMHUB_ADMIN_PASSWORD=$pass_humhub
      - HUMHUB_EMAIL=$email_humhub
      - HUMHUB_EMAIL_NAME=$user_humhub
      - HUMHUB_ADMIN_EMAIL=$email_humhub

      ## Dados SMTP
      - HUMHUB_MAILER_TRANSPORT_TYPE=smtp
      - HUMHUB_MAILER_SYSTEM_EMAIL_ADDRESS=$email_smtp_humhub
      - HUMHUB_MAILER_USERNAME=$user_smtp_humhub
      - HUMHUB_MAILER_PASSWORD=$senha_smtp_humhub
      - HUMHUB_MAILER_SYSTEM_EMAIL_NAME=Suporte
      - HUMHUB_MAILER_HOSTNAME=$host_smtp_humhub
      - HUMHUB_MAILER_PORT=$porta_smtp_humhub
      - HUMHUB_MAILER_ALLOW_SELF_SIGNED_CERTS=$porta_smtp_humhub_conv ## 0 = TLS | 1 = SSL
      
      ## Dados do MySQL
      - HUMHUB_DB_HOST=mysql
      - HUMHUB_DB_USER=root
      - HUMHUB_DB_PASSWORD=$senha_mysql
      - HUMHUB_DB_NAME=humhub
      $autoconfig_humhub

      ## Dados Redis
      - HUMHUB_REDIS_HOSTNAME=redis
      - HUMHUB_REDIS_PORT=6379
      - HUMHUB_CACHE_EXPIRE_TIME=3600
      - HUMHUB_CACHE_CLASS=yii\redis\Cache
      - HUMHUB_QUEUE_CLASS=humhub\modules\queue\driver\Redis
  
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.humhub.rule=Host(\`$url_humhub\`)
        - traefik.http.routers.humhub.entrypoints=websecure
        - traefik.http.routers.humhub.tls.certresolver=letsencryptresolver
        - traefik.http.routers.humhub.service=humhub
        - traefik.http.services.humhub.loadbalancer.server.port=80
        - traefik.http.services.humhub.loadbalancer.passHostHeader=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  humhub_data:
    external: true
    name: humhub_data
  humhub_uploads:
    external: true
    name: humhub_uploads
  humhub_themes:
    external: true
    name: humhub_themes
  humhub_assets:
    external: true
    name: humhub_assets

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do HumHub"
fi
STACK_NAME="humhub"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c humhub.yaml humhub > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do humhub"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[5/5]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_calcom para verificar se o serviço esta online
wait_stack "humhub"

cd dados_vps

cat > dados_humhub <<EOL
[ HUMHUB ]

Dominio do humhub: $url_humhub

Usuario: $user_humhub

Email: $email_humhub

Senha: $pass_humhub

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ HUMHUB ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_humhub\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m $user_humhub\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m $pass_humhub\e[0m"
echo ""

echo -e "\e[33mHost MySQL:\e[97m mysql\e[0m"
echo ""

echo -e "\e[33mUsuario MySQL:\e[97m root\e[0m"
echo ""

echo -e "\e[33mSenha MySQL:\e[97m $senha_mysql\e[0m"
echo ""

echo -e "\e[33mBase de dados MySQL:\e[97m humhub\e[0m"
echo ""



## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██╗      █████╗ ███╗   ██╗ ██████╗ ███████╗██╗      ██████╗ ██╗    ██╗
## ██║     ██╔══██╗████╗  ██║██╔════╝ ██╔════╝██║     ██╔═══██╗██║    ██║
## ██║     ███████║██╔██╗ ██║██║  ███╗█████╗  ██║     ██║   ██║██║ █╗ ██║
## ██║     ██╔══██║██║╚██╗██║██║   ██║██╔══╝  ██║     ██║   ██║██║███╗██║
## ███████╗██║  ██║██║ ╚████║╚██████╔╝██║     ███████╗╚██████╔╝╚███╔███╔╝
## ╚══════╝╚═╝  ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝     ╚══════╝ ╚═════╝  ╚══╝╚══╝ 

ferramenta_langflow() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_langflow

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio do Builder
    echo -e "\e[97mPasso$amarelo 1/3\e[0m"
    echo -en "\e[33mDigite o Dominio para LangFlow (ex: langflow.sinergialucrativa.com): \e[0m" && read -r url_langflow
    echo ""

    ##Pergunta o Usuario para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/3\e[0m"
    echo -e "$amarelo--> Minimo 5 caracteres. Evite os caracteres especiais: \!#$ e/ou espaço"
    echo -en "\e[33mDigite um usuario para o LangFlow (ex: admin): \e[0m" && read -r user_langflow
    echo ""
    
    ##Pergunta a Senha para a ferramenta
    echo -e "\e[97mPasso$amarelo 3/3\e[0m"
    echo -e "$amarelo--> Evite os caracteres especiais: \!#$"
    echo -en "\e[33mDigite uma senha para o usuario do LangFlow (ex: @Senha123_): \e[0m" && read -r pass_langflow
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_langflow
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do Builder
    echo -e "\e[33mDominio do Langflow:\e[97m $url_langflow\e[0m"
    echo ""

    ## Informação sobre URL do Builder
    echo -e "\e[33mUsuario:\e[97m $user_langflow\e[0m"
    echo ""

    ## Informação sobre URL do Builder
    echo -e "\e[33mSenha:\e[97m $pass_langflow\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_langflow

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done


## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO LANGFLOW \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Nada nada nada.. só para aparecer a mensagem de passo..

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Aqui vamos fazer uma verificação se já existe Postgres e redis instalado
## Se tiver ele vai criar um banco de dados no postgres ou perguntar se deseja apagar o que já existe e criar outro

## Verifica container postgres e cria banco no postgres
verificar_container_postgres
if [ $? -eq 0 ]; then
        pegar_senha_postgres > /dev/null 2>&1
    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "langflow"

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO LANGFLOW \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando key Aleatória
#key_langflow=$(openssl rand -hex 16)
#key_langflow=$(openssl rand -hex 16 | sed 's/\(..\)/\1/g' | sed 's/\(....\)\(....\)\(....\)\(....\)\(....\)/\1-\2-\3-\4-\5/')
#key_langflow=$(curl -s https://www.uuidgenerator.net/api/version1)
key_langflow=$(python3 -c 'from cryptography.fernet import Fernet; print(Fernet.generate_key().decode())')
## Criando a stack
cat > langflow.yaml <<EOL
version: "3.8"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  langflow:
    image: langflowai/langflow:latest

    volumes:
      - langflow_data:/app/langflow

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados de acesso
      - LANGFLOW_AUTO_LOGIN=false
      - LANGFLOW_SUPERUSER=$user_langflow
      - LANGFLOW_SUPERUSER_PASSWORD=$pass_langflow
      - LANGFLOW_HOST=0.0.0.0
      - BACKEND_URL=https://$url_langflow

      ## Secret Key
      ## Gere em: https://www.uuidgenerator.net/api/version1
      - LANGFLOW_SECRET_KEY=$key_langflow

      ## Permitir novas incrições
      - LANGFLOW_NEW_USER_IS_ACTIVE=false ## false = Precisa autorizar novas inscrições

      ## Dados do Postgres
      - LANGFLOW_DATABASE_URL=postgresql://postgres:$senha_postgres@postgres:5432/langflow

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.langflow.rule=Host(\`$url_langflow\`) ## Url da aplicação
        - traefik.http.services.langflow.loadBalancer.server.port=7860
        - traefik.http.routers.langflow.service=langflow
        - traefik.http.routers.langflow.entrypoints=websecure
        - traefik.http.routers.langflow.tls.certresolver=letsencryptresolver

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  langflow_data:
    external: true
    name: langflow_data

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do langflow"
fi
STACK_NAME="langflow"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c langflow.yaml langflow > /dev/null 2>&1

#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do langflow"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "langflow" para verificar se o serviço esta online
wait_stack "langflow"

cd dados_vps

cat > dados_langflow <<EOL
[ LANGFLOW ]

Dominio do langflow: https://$url_langflow

Usuario: $user_langflow

Senha: $pass_langflow
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ LANGFLOW ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_langflow\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m $user_langflow\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m $pass_langflow\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##███████╗███████╗██████╗ 
##╚══███╔╝██╔════╝██╔══██╗
##  ███╔╝ █████╗  ██████╔╝
## ███╔╝  ██╔══╝  ██╔═══╝ 
##███████╗███████╗██║     
##╚══════╝╚══════╝╚═╝                         

ferramenta_zep() {

# Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_zep

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos    
while true; do

    ## Pergunta o Dominio da ferramenta
    echo -e "\e[97mPasso$amarelo 1/3\e[0m"
    echo -en "\e[33mDigite o Dominio para o Zep (ex: zep.sinergialucrativa.com): \e[0m" && read -r url_zep
    echo ""

    ## Pergunta o nome do Usuario do Motor
    echo -e "\e[97mPasso$amarelo 2/3\e[0m"
    echo -en "\e[33mApiKey OpenAI: \e[0m" && read -r apikey_openai_zep
    echo ""

    ## Criando uma Encryption Key Aleatória
    encryption_key_zep=$(openssl rand -hex 16)

    ## Pergunta o nome do Senha do Motor
    echo -e "\e[97mPasso$amarelo 3/3\e[0m"
    echo -en "\e[33mApiKey para o ZEP (ex: $encryption_key_zep): \e[0m" && read -r apikey_zep
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_zep
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info

    ## Informação sobre o dominio
    echo -e "\e[33mDominio do Zep:\e[97m $url_zep\e[0m"
    echo ""

    ## Informação sobre o usuario
    echo -e "\e[33mApiKey da OpenAI:\e[97m $apikey_openai_zep\e[0m"
    echo ""

    ## Informação sobre a senha
    echo -e "\e[33mApiKey do Zep:\e[97m $apikey_zep\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_zep

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO ZEP \e[33m[1/4]\e[0m"
echo ""
sleep 1

git clone --depth 1 https://github.com/getzep/zep.git > /dev/null 2>&1
if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Baixando Repositório do Zep"
else
    echo "1/1 - [ OFF ] - Baixando Repositório do Zep"
    echo "Não foi possivel Baixar."
fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES VECTOR \e[33m[2/4]\e[0m"
echo ""
sleep 1

dados
verificar_container_pgvector
if [ $? -eq 0 ]; then
    echo ""
    pegar_senha_pgvector > /dev/null 2>&1
    criar_banco_pgvector_da_stack "zep" #> /dev/null 2>&1
else
    ferramenta_pgvector #> /dev/null 2>&1
    pegar_senha_pgvector > /dev/null 2>&1
    criar_banco_pgvector_da_stack "zep" #> /dev/null 2>&1
fi

sleep 5

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO ZEP \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > zep.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  nlp:
    image: ghcr.io/getzep/zep-nlp-server:latest

    networks:
      - $nome_rede_interna
      
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager

## --------------------------- ANDROMEDA --------------------------- ##

  zep:
    image: ghcr.io/getzep/zep:latest
    
    volumes:
      - /root/zep/config.yaml:/app/config.yaml

    networks:
      - $nome_rede_interna

    environment:
      ## Dados Postgres
      - ZEP_STORE_TYPE=postgres
      - ZEP_STORE_POSTGRES_DSN=postgres://postgres:$senha_pgvector@pgvector:5432/zep?sslmode=disable

      ## Dados de acesso:
      - ZEP_AUTH_SECRET=$apikey_zep
      
      ## Dados OpenAI
      - ZEP_OPENAI_API_KEY=$apikey_openai_zep

      ## Dados NLP
      - ZEP_NLP_SERVER_URL=http://nlp:5557

      ## Configurações de extração
      - ZEP_EXTRACTORS_DOCUMENTS_EMBEDDINGS_SERVICE=openai
      - ZEP_EXTRACTORS_DOCUMENTS_EMBEDDINGS_DIMENSIONS=1536
      - ZEP_EXTRACTORS_MESSAGES_EMBEDDINGS_SERVICE=openai
      - ZEP_EXTRACTORS_MESSAGES_EMBEDDINGS_DIMENSIONS=1536
      - ZEP_EXTRACTORS_MESSAGES_SUMMARIZER_EMBEDDINGS_SERVICE=openai
      - ZEP_EXTRACTORS_MESSAGES_SUMMARIZER_EMBEDDINGS_DIMENSIONS=1536

      ## Degub:
      - ZEP_LOG_LEVEL=debug
      
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=true
        - traefik.http.routers.zep.rule=Host(\`$url_zep\`)
        - traefik.http.routers.zep.entrypoints=websecure
        - traefik.http.routers.zep.tls.certresolver=letsencryptresolver
        - traefik.http.services.zep.loadbalancer.server.port=8000
        - traefik.http.services.zep.loadbalancer.passHostHeader=true
        - traefik.http.routers.zep.service=zep

## --------------------------- ANDROMEDA --------------------------- ##
    
networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Zep"
fi
STACK_NAME="zep"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c zep.yaml zep #> /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do zep"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""

## Usa o serviço wait_zep para verificar se o serviço esta online
wait_stack "zep"

wait_30_sec

cd dados_vps

cat > dados_zep <<EOL
[ ZEP ]

Dominio do Zep: https://$url_zep/admin

ApiKey da OpenAI: $apikey_openai_zep

ApiKey do Zep: $apikey_zep
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ ZEP ]\e[0m"
echo ""

echo -e "\e[97mDominio:\e[33m https://$url_zep/admin\e[0m"
echo ""

echo -e "\e[97mApiKey do Zep:\e[33m $apikey_zep\e[0m"
echo ""

echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##  ██████╗ ██████╗ ███████╗███╗   ██╗    ██████╗ ██████╗  ██████╗      ██╗███████╗ ██████╗████████╗
## ██╔═══██╗██╔══██╗██╔════╝████╗  ██║    ██╔══██╗██╔══██╗██╔═══██╗     ██║██╔════╝██╔════╝╚══██╔══╝
## ██║   ██║██████╔╝█████╗  ██╔██╗ ██║    ██████╔╝██████╔╝██║   ██║     ██║█████╗  ██║        ██║   
## ██║   ██║██╔═══╝ ██╔══╝  ██║╚██╗██║    ██╔═══╝ ██╔══██╗██║   ██║██   ██║██╔══╝  ██║        ██║   
## ╚██████╔╝██║     ███████╗██║ ╚████║    ██║     ██║  ██║╚██████╔╝╚█████╔╝███████╗╚██████╗   ██║   
##  ╚═════╝ ╚═╝     ╚══════╝╚═╝  ╚═══╝    ╚═╝     ╚═╝  ╚═╝ ╚═════╝  ╚════╝ ╚══════╝ ╚═════╝   ╚═╝   

ferramenta_openproject() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_openproject

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o OpenProject (ex: openproject.sinergialucrativa.com): \e[0m" && read -r url_openproject
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_openproject
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do openproject
    echo -e "\e[33mDominio do OpenProject:\e[97m $url_openproject\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_minio

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO OPENPROJECT \e[33m[1/5]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/5]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1
    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "openproject"

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO REDIS \e[33m[3/5]\e[0m"
echo ""
sleep 1

verificar_container_redis
    if [ $? -eq 0 ]; then
        sleep 1
    else
        ferramenta_redis  > /dev/null 2>&1
    fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO OPENPROJECT \e[33m[4/5]\e[0m"
echo ""
sleep 1

key_openproject=$(openssl rand -hex 16)

## Criando a stack
cat > openproject.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  openproject:
    image: openproject/openproject:14.1.1

    volumes:
      - openproject_pgdata:/var/openproject/pgdata
      - openproject_assets:/var/openproject/assets

    networks:
      - $nome_rede_interna

    environment:
      ## Secret Key
      - OPENPROJECT_SECRET_KEY_BASE=$key_openproject

      ## Dominio:
      - OPENPROJECT_HOST__NAME=$url_openproject
      - OPENPROJECT_HTTPS=true

      ## Dados do Redis
      - OPENPROJECT_RAILS__CACHE__STORE=redis
      - OPENPROJECT_CACHE_REDIS_URL=redis://redis:6379

      ## Dados do Postgres
      - DATABASE_URL=postgresql://postgres:$senha_postgres@postgres:5432/openproject

      ## Configurações
      - OPENPROJECT_DEFAULT__LANGUAGE=pt-BR

      ## Dados SMTP
      ## Deixei comentado pois a environment da senha não esta funcionando como o esperado
      #- OPENPROJECT_EMAIL__DELIVERY__METHOD=smtp
      #- OPENPROJECT_MAIL__FROM=email@dominio.com
      #- OPENPROJECT_SMTP__USER__NAME=Usuario_do_Email
      #- OPENPROJECT_SMTP__DOMAIN=dominio.com
      #- OPENPROJECT_SMTP__PASSWORD=Senha_do_Email
      #- OPENPROJECT_SMTP__ADDRESS=smtp.dominio.com
      #- OPENPROJECT_SMTP__PORT=587
      #- OPENPROJECT_SMTP__ENABLE__STARTTLS__AUTO=true
      #- OPENPROJECT_SMTP__AUTHENTICATION=plain
      #- OPENPROJECT_SMTP__OPENSSL__VERIFY__MODE=peer 
      
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      labels:
        - traefik.enable=1
        - traefik.http.routers.openproject.rule=Host(\`$url_openproject\`)
        - traefik.http.routers.openproject.entrypoints=websecure
        - traefik.http.routers.openproject.priority=1
        - traefik.http.routers.openproject.tls.certresolver=letsencryptresolver
        - traefik.http.routers.openproject.service=openproject
        - traefik.http.services.openproject.loadbalancer.server.port=8080
        - traefik.http.services.openproject.loadbalancer.passHostHeader=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  openproject_pgdata:
    external: true
    name: openproject_pgdata
  openproject_assets:
    external: true
    name: openproject_assets

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do OpenProject"
fi
STACK_NAME="openproject"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c openproject.yaml openproject > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do openproject"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "openproject" para verificar se o serviço esta online
wait_stack "openproject"

cd dados_vps

cat > dados_openproject <<EOL
[ OPENPROJECT ]

Dominio do openproject: https://$url_openproject

Usuario: admin

Senha: admin
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ OPENPROJECT ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_openproject\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m admin\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m admin\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ██╗   ██╗ ██████╗ ██╗   ██╗██████╗ ██╗     ███████╗
## ╚██╗ ██╔╝██╔═══██╗██║   ██║██╔══██╗██║     ██╔════╝
##  ╚████╔╝ ██║   ██║██║   ██║██████╔╝██║     ███████╗
##   ╚██╔╝  ██║   ██║██║   ██║██╔══██╗██║     ╚════██║
##    ██║   ╚██████╔╝╚██████╔╝██║  ██║███████╗███████║
##    ╚═╝    ╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚══════╝╚══════╝

ferramenta_yourls() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_yourls

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/3\e[0m"
    echo -en "\e[33mDigite o dominio para o Yourls (ex: yourls.sinergialucrativa.com): \e[0m" && read -r url_yourls
    echo ""
    
    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/3\e[0m"
    echo -en "\e[33mDigite o Usuario (ex: AndromedaNet): \e[0m" && read -r user_yourls
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 3/3\e[0m"
    echo -en "\e[33mDigite a Senha do usuario (ex: @Senha123_): \e[0m" && read -r pass_yourls
    echo ""
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_yourls
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do yourls
    echo -e "\e[33mDominio do Yourls:\e[97m $url_yourls\e[0m"
    echo ""

    ## Informação sobre URL do yourls
    echo -e "\e[33mUsuario:\e[97m $user_yourls\e[0m"
    echo ""

    ## Informação sobre URL do yourls
    echo -e "\e[33mSenha:\e[97m $pass_yourls\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_yourls

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO YOURLS \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO MYSQL \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_mysql
if [ $? -eq 0 ]; then
    sleep 1
    pegar_senha_mysql > /dev/null 2>&1
else
    ferramenta_mysql
    pegar_senha_mysql > /dev/null 2>&1
fi

criar_banco_mysql_da_stack "yourls"

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO YOURLS \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > yourls.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  yourls:
    image: yourls:latest

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados de acesso
      - YOURLS_SITE=https://$url_yourls ## Url da Aplicação
      - YOURLS_USER=$user_yourls
      - YOURLS_PASS=$pass_yourls
      
      ## Dados do Mysql
      - YOURLS_DB_HOST=mysql:3306
      - YOURLS_DB_NAME=yourls
      - YOURLS_DB_USER=root
      - YOURLS_DB_PASS=$senha_mysql

    deploy:
      mode: replicated
      replicas: 1
      resources:
        limits:
          cpus: "0.5"
          memory: 512M
      labels:
        - traefik.enable=true
        - traefik.http.routers.yourls.rule=Host(\`$url_yourls\`) ## Url da aplicação
        - traefik.http.routers.yourls.entrypoints=websecure
        - traefik.http.routers.yourls.tls.certresolver=letsencryptresolver
        - traefik.http.routers.yourls.service=yourls
        - traefik.http.services.yourls.loadbalancer.server.port=80

## --------------------------- ANDROMEDA --------------------------- ##

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Yourls"
fi
STACK_NAME="yourls"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c yourls.yaml yourls > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do yourls"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "yourls" para verificar se o serviço esta online
wait_stack "yourls"

cd dados_vps

cat > dados_yourls <<EOL
[ YOURLS ]

Dominio do Yourls: https://$url_yourls/admin

Usuario: $user_yourls

Senha: $pass_yourls

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ YOURLS ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_yourls/admin\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do Yourls\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do Yourls\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ████████╗██╗    ██╗███████╗███╗   ██╗████████╗██╗   ██╗ ██████╗██████╗ ███╗   ███╗
## ╚══██╔══╝██║    ██║██╔════╝████╗  ██║╚══██╔══╝╚██╗ ██╔╝██╔════╝██╔══██╗████╗ ████║
##    ██║   ██║ █╗ ██║█████╗  ██╔██╗ ██║   ██║    ╚████╔╝ ██║     ██████╔╝██╔████╔██║
##    ██║   ██║███╗██║██╔══╝  ██║╚██╗██║   ██║     ╚██╔╝  ██║     ██╔══██╗██║╚██╔╝██║
##    ██║   ╚███╔███╔╝███████╗██║ ╚████║   ██║      ██║   ╚██████╗██║  ██║██║ ╚═╝ ██║
##    ╚═╝    ╚══╝╚══╝ ╚══════╝╚═╝  ╚═══╝   ╚═╝      ╚═╝    ╚═════╝╚═╝  ╚═╝╚═╝     ╚═╝
                                                                                  

ferramenta_twentycrm() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_twentycrm

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/6\e[0m"
    echo -en "\e[33mDigite o dominio para o TwentyCRM (ex: twentycrm.sinergialucrativa.com): \e[0m" && read -r url_twentycrm
    echo ""

    ## Pergunta o email SMTP
    echo -e "\e[97mPasso$amarelo 2/6\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_smtp_twentycrm
    echo ""

    ##Pergunta o usuário do Email SMTP
    echo -e "\e[97mPasso$amarelo 3/6\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuário para SMTP (ex: AndromedaNet ou suporte@sinergialucrativa.com): \e[0m" && read -r user_smtp_twentycrm
    echo ""
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 4/6\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r pass_smtp_twentycrm
    echo ""
    
    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 5/6\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r host_smtp_twentycrm
    echo ""
    
    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 6/6\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_twentycrm
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_twentycrm
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do twentycrm
    echo -e "\e[33mDominio do TwentyCRM:\e[97m $url_twentycrm\e[0m"
    echo ""

    ## Informação sobre URL do twentycrm
    echo -e "\e[33mEmail SMTP:\e[97m $email_smtp_twentycrm\e[0m"
    echo ""
    
    ## Informação sobre URL do twentycrm
    echo -e "\e[33mUsuario do SMTP:\e[97m $user_smtp_twentycrm\e[0m"
    echo ""

    ## Informação sobre URL do twentycrm
    echo -e "\e[33mSenha do Email SMTP:\e[97m $pass_smtp_twentycrm\e[0m"
    echo ""

    ## Informação sobre URL do twentycrm
    echo -e "\e[33mHost SMTP:\e[97m $host_smtp_twentycrm\e[0m"
    echo ""

    ## Informação sobre URL do twentycrm
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_twentycrm\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_twentycrm

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO TWENTYCRM \e[33m[1/3]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO TWENTYCRM \e[33m[2/3]\e[0m"
echo ""
sleep 1

senha_postgres_twentycrm=$(openssl rand -hex 16)
Key_aleatoria_twentycrm_1=$(openssl rand -hex 16)
Key_aleatoria_twentycrm_2=$(openssl rand -hex 16)
Key_aleatoria_twentycrm_3=$(openssl rand -hex 16)
Key_aleatoria_twentycrm_4=$(openssl rand -hex 16)

## Criando a stack
cat > twentycrm.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  twentycrm_server:
    image: twentycrm/twenty:latest

    volumes:
      - twentycrm_data:/app/packages/twenty-server/local

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados de acesso
      - SERVER_URL=https://$url_twentycrm
      - FRONT_BASE_URL=https://$url_twentycrm
      - PORT=3000

      ## Dados postgres
      - PG_DATABASE_URL=postgres://postgres:$senha_postgres_twentycrm@twentycrm_db:5432/default
      - MESSAGE_QUEUE_TYPE=pg-boss
      - ENABLE_DB_MIGRATIONS=true

      - AUTH_PASSWORD_ENABLED=true
      - IS_SIGN_UP_DISABLED=false ## true = desativar cadastros || false = permitir cadastros

      ## Dados SMTP
      - EMAIL_DRIVER=smtp
      - EMAIL_FROM_NAME=Suporte TwentyCRM
      - EMAIL_FROM_ADDRESS=$email_smtp_twentycrm ## Email SMTP
      - EMAIL_SYSTEM_ADDRESS=$email_smtp_twentycrm ## Email SMTP
      - EMAIL_SMTP_USER=$user_smtp_twentycrm ## User SMTP
      - EMAIL_SMTP_PASSWORD=$pass_smtp_twentycrm
      - EMAIL_SMTP_HOST=$host_smtp_twentycrm ## Host SMTP
      - EMAIL_SMTP_PORT=$porta_smtp_twentycrm ## Porta SMTP

      ## Logs
      - SIGN_IN_PREFILLED=true

      ## Dados de armazenamento
      #- STORAGE_TYPE=local
      #- STORAGE_S3_REGION=
      #- STORAGE_S3_NAME=twentycrm
      #- STORAGE_S3_ENDPOINT=

      ## Secret Keys
      - ACCESS_TOKEN_SECRET=$Key_aleatoria_twentycrm_1 ## sua key aleatória
      - LOGIN_TOKEN_SECRET=$Key_aleatoria_twentycrm_2 ## sua key aleatória
      - REFRESH_TOKEN_SECRET=$Key_aleatoria_twentycrm_3 ## sua key aleatória
      - FILE_TOKEN_SECRET=$Key_aleatoria_twentycrm_4 ## sua key aleatória

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 4192M
      labels:
        - traefik.enable=true
        - traefik.http.routers.twentycrm.rule=Host(\`$url_twentycrm\`) ## Url da aplicação
        - traefik.http.services.twentycrm.loadbalancer.server.port=3000
        - traefik.http.routers.twentycrm.service=twentycrm
        - traefik.http.routers.twentycrm.tls.certresolver=letsencryptresolver
        - traefik.http.routers.twentycrm.entrypoints=websecure
        - traefik.http.routers.twentycrm.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

  twentycrm_worker:
    image: twentycrm/twenty:latest
    command: ["yarn", "worker:prod"]

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados de acesso
      - SERVER_URL=https://$url_twentycrm
      - FRONT_BASE_URL=https://$url_twentycrm
      - PORT=3000

      ## Dados postgres
      - PG_DATABASE_URL=postgres://postgres:$senha_postgres_twentycrm@twentycrm_db:5432/default
      - MESSAGE_QUEUE_TYPE=pg-boss
      - ENABLE_DB_MIGRATIONS=true

      - AUTH_PASSWORD_ENABLED=true
      - IS_SIGN_UP_DISABLED=false ## true = desativar cadastros || false = permitir cadastros

      ## Dados SMTP
      - EMAIL_DRIVER=smtp
      - EMAIL_FROM_NAME=Suporte TwentyCRM
      - EMAIL_FROM_ADDRESS=$email_smtp_twentycrm ## Email SMTP
      - EMAIL_SYSTEM_ADDRESS=$email_smtp_twentycrm ## Email SMTP
      - EMAIL_SMTP_USER=$user_smtp_twentycrm ## User SMTP
      - EMAIL_SMTP_PASSWORD=$pass_smtp_twentycrm
      - EMAIL_SMTP_HOST=$host_smtp_twentycrm ## Host SMTP
      - EMAIL_SMTP_PORT=$porta_smtp_twentycrm ## Porta SMTP

      ## Logs
      - SIGN_IN_PREFILLED=true

      ## Dados de armazenamento
      #- STORAGE_TYPE=local
      #- STORAGE_S3_REGION=
      #- STORAGE_S3_NAME=twentycrm
      #- STORAGE_S3_ENDPOINT=

      ## Secret Keys
      - ACCESS_TOKEN_SECRET=$Key_aleatoria_twentycrm_1 ## sua key aleatória
      - LOGIN_TOKEN_SECRET=$Key_aleatoria_twentycrm_2 ## sua key aleatória
      - REFRESH_TOKEN_SECRET=$Key_aleatoria_twentycrm_3 ## sua key aleatória
      - FILE_TOKEN_SECRET=$Key_aleatoria_twentycrm_4 ## sua key aleatória

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

  twentycrm_db:
    image: twentycrm/twenty-postgres:latest
      
    volumes:
      - twentycrm_db_data:/bitnami/postgresql

    networks:
      - $nome_rede_interna ## Nome da rede interna
        
    environment:
      - POSTGRES_PASSWORD=$senha_postgres_twentycrm ## Senha do seu postgres
        
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M    
    
## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  twentycrm_data:
    external: true
    name: twentycrm_data
  twentycrm_db_data:
    external: true
    name: twentycrm_db_data

networks:
  $nome_rede_interna: ## Nome da sua rede interna
    name: $nome_rede_interna ## Nome da sua rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do twentycrm"
fi
STACK_NAME="twentycrm"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c twentycrm.yaml twentycrm > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do twentycrm"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "twentycrm" para verificar se o serviço esta online
wait_stack "twentycrm"

cd dados_vps

cat > dados_twentycrm <<EOL
[ TWENTYCRM ]

Dominio do TwentyCRM: https://$url_twentycrm

Usuario: Precisa criar no primeiro acesso do TwentyCRM

Senha: Precisa criar no primeiro acesso do TwentyCRM

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ TWENTYCRM ]\e[0m"
echo ""

echo -e "\e[33mDominio do TwentyCRM:\e[97m https://$url_twentycrm\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do TwentyCRM\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do TwentyCRM\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███╗   ███╗ █████╗ ████████╗████████╗███████╗██████╗ ███╗   ███╗ ██████╗ ███████╗████████╗
## ████╗ ████║██╔══██╗╚══██╔══╝╚══██╔══╝██╔════╝██╔══██╗████╗ ████║██╔═══██╗██╔════╝╚══██╔══╝
## ██╔████╔██║███████║   ██║      ██║   █████╗  ██████╔╝██╔████╔██║██║   ██║███████╗   ██║   
## ██║╚██╔╝██║██╔══██║   ██║      ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║██║   ██║╚════██║   ██║   
## ██║ ╚═╝ ██║██║  ██║   ██║      ██║   ███████╗██║  ██║██║ ╚═╝ ██║╚██████╔╝███████║   ██║   
## ╚═╝     ╚═╝╚═╝  ╚═╝   ╚═╝      ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝ ╚═════╝ ╚══════╝   ╚═╝   
                                                                                          

ferramenta_mattermost() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_mattermost

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o Mattermost (ex: mattermost.sinergialucrativa.com): \e[0m" && read -r url_mattermost
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_mattermost
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do mattermost
    echo -e "\e[33mDominio do Mattermost:\e[97m $url_mattermost\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_mattermost

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO MATTERMOST \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1
    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "mattermost"

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO MATTERMOST \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > mattermost.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  mattermost:
    image: mattermost/mattermost-team-edition:latest

    volumes:
      - mattermost_data:/mattermost/data
      - mattermost_config:/mattermost/config
      - mattermost_logs:/mattermost/logs
      - mattermost_plugins:/mattermost/plugins
      - mattermost_client_plugins:/mattermost/client/plugins

    networks:
      - $nome_rede_interna

    environment:
      ## Dados de acesso
      - MM_SERVICESETTINGS_SITEURL=https://$url_mattermost

      ## Dados do Postgres
      - MM_SQLSETTINGS_DRIVERNAME=postgres
      - MM_SQLSETTINGS_DATASOURCE=postgres://postgres:$senha_postgres@postgres:5432/mattermost?sslmode=disable&connect_timeout=10

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.mattermost.rule=Host(\`$url_mattermost\`)
        - traefik.http.routers.mattermost.entrypoints=websecure
        - traefik.http.routers.mattermost.tls.certresolver=letsencryptresolver
        - traefik.http.routers.mattermost.service=mattermost
        - traefik.http.services.mattermost.loadbalancer.server.port=8065
        - traefik.http.services.mattermost.loadbalancer.passhostheader=true
        - traefik.http.middlewares.sslheader.headers.customrequestheaders.X-Forwarded-Proto=https
        - traefik.http.routers.mattermost.middlewares=sslheader@docker

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  mattermost_data:
    external: true
    name: mattermost_data
  mattermost_config:
    external: true
    name: mattermost_config
  mattermost_logs:
    external: true
    name: mattermost_logs
  mattermost_plugins:
    external: true
    name: mattermost_plugins
  mattermost_client_plugins:
    external: true
    name: mattermost_client_plugins

networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna

EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do mattermost"
fi
STACK_NAME="mattermost"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c mattermost.yaml mattermost > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do mattermost"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "mattermost" para verificar se o serviço esta online
wait_stack "mattermost"

cd dados_vps

cat > dados_mattermost <<EOL
[ MATTERMOST ]

Dominio do Mattermost: https://$url_mattermost

Usuario: Precisa criar no primeiro acesso do Mattermost

Senha: Precisa criar no primeiro acesso do Mattermost

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ MATTERMOST ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_mattermost\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do Mattermost\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do Mattermost\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##   ██████╗ ██╗   ██╗████████╗██╗     ██╗███╗   ██╗███████╗
##  ██╔═══██╗██║   ██║╚══██╔══╝██║     ██║████╗  ██║██╔════╝
##  ██║   ██║██║   ██║   ██║   ██║     ██║██╔██╗ ██║█████╗  
##  ██║   ██║██║   ██║   ██║   ██║     ██║██║╚██╗██║██╔══╝  
##  ╚██████╔╝╚██████╔╝   ██║   ███████╗██║██║ ╚████║███████╗
##   ╚═════╝  ╚═════╝    ╚═╝   ╚══════╝╚═╝╚═╝  ╚═══╝╚══════╝                                                                              

ferramenta_outline() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_outline

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/4\e[0m"
    echo -en "\e[33mDigite o dominio para o Outline (ex: outline.sinergialucrativa.com): \e[0m" && read -r url_outline
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/4\e[0m"
    echo -e "$amarelo--> Caso não tiver crie em: https://console.cloud.google.com/apis/credentials"
    echo -en "\e[33mDigite o seu ID do Cliente Google (ex: XXXXXXXXXXXX-XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX.apps.googleusercontent.com): \e[0m" && read -r id_google_outline
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 3/4\e[0m"
    echo -e "$amarelo--> Caso não tiver crie em: https://console.cloud.google.com/apis/credentials"
    echo -en "\e[33mDigite a sua Chave Secreta do Cliente Google (ex: XXXXXX-XXXXXXXXXXXXXXXXXXXXXXXX-XXX): \e[0m" && read -r key_google_outline
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 4/4\e[0m"
    echo -e "$amarelo--> Caso não tiver crie em: https://console.cloud.google.com/apis/credentials"
    echo -en "\e[33mDigite a sua API Key do Google (ex: XXXXXXXXXXX-XXXXXXXXXXXXX-XXXXXXXXXXXXX): \e[0m" && read -r api_google_outline
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_outline
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do outline
    echo -e "\e[33mDominio do Outline:\e[97m $url_outline\e[0m"
    echo ""

    ## Informação sobre URL do outline
    echo -e "\e[33mID do Cliente Google:\e[97m $id_google_outline\e[0m"
    echo ""

    ## Informação sobre URL do outline
    echo -e "\e[33mChave Secreta do Cliente Google:\e[97m $key_google_outline\e[0m"
    echo ""

    ## Informação sobre URL do outline
    echo -e "\e[33mAPI Key do Google:\e[97m $api_google_outline\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_outline

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO OUTLINE \e[33m[1/5]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/5]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_postgres
if [ $? -eq 0 ]; then
        sleep 1
        pegar_senha_postgres > /dev/null 2>&1
    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "outline"

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO REDIS \e[33m[3/5]\e[0m"
echo ""
sleep 1

verificar_container_redis
    if [ $? -eq 0 ]; then
        sleep 1
    else
        ferramenta_redis  > /dev/null 2>&1
    fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO outline \e[33m[4/5]\e[0m"
echo ""
sleep 1

Key_aleatoria_outline_1=$(openssl rand -hex 16)
Key_aleatoria_outline_2=$(openssl rand -hex 16)

## Criando a stack
cat > outline.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  outline:
    image: outlinewiki/outline:0.75.0

    volumes:
      - outline_data:/var/lib/outline/data
      
    networks:
      - $nome_rede_interna
    
    environment:
      ## Dados de acesso
      - URL=https://$url_outline
      - FORCE_HTTPS=true

      ## Desativar novos cadastros
      - LIMITS_INVITATION_REQUIRED=false

      # IDIOMA PADRÃO
      - DEFAULT_LANGUAGE=pt_BR

      ## Secrets Keys
      - SECRET_KEY=$Key_aleatoria_outline_1
      - UTILS_SECRET=$Key_aleatoria_outline_2
      
      ## Dados Postgres
      - DATABASE_URL=postgres://postgres:$senha_postgres@postgres:5432/outline
      - DATABASE_URL_TEST=postgres://postgres:$senha_postgres@postgres:5432/outline_test
      - PGSSLMODE=disable
      
      ## Dados Redis
      - REDIS_URL=redis://redis:6379/3
      
      ## Dados sobre Armazenamento
      - FILE_STORAGE=local
      - FILE_STORAGE_LOCAL_ROOT_DIR=/var/lib/outline/data
      - FILE_STORAGE_UPLOAD_MAX_SIZE=26214400
      - FILE_STORAGE_IMPORT_MAX_SIZE=18874368
      - FILE_STORAGE_WORKSPACE_IMPORT_MAX_SIZE=18874368
      
      # LOGIN COM O GOOGLE
      - GOOGLE_CLIENT_ID=$id_google_outline
      - GOOGLE_CLIENT_SECRET=$key_google_outline
      - NEXT_PUBLIC_GOOGLE_API_KEY=$api_google_outline
      
      ## Dados do SMTP
      #- SMTP_FROM_EMAIL=email@dominio.com ## Email SMTP
      #- SMTP_REPLY_EMAIL=email@dominio.com ## Email SMTP
      #- SMTP_USERNAME=email@dominio.com ## Usuario SMTP
      #- SMTP_PASSWORD=@Senha123_ ## Senha SMTP
      #- SMTP_HOST=smtp.provedor.com ## Host SMTP
      #- SMTP_PORT=587 ## Porta SMTP
      #- SMTP_SECURE=false ## Se a porta for 465 ou 25 = true || Qualquer outra = false

      ## Outras configurações
      - RATE_LIMITER_ENABLED=true
      - RATE_LIMITER_REQUESTS=1000
      - RATE_LIMITER_DURATION_WINDOW=60
      - ENABLE_UPDATES=false
      - WEB_CONCURRENCY=6
      - DEBUG=http
      - LOG_LEVEL=info
      
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.outline.rule=Host(\`$url_outline\`)
        - traefik.http.routers.outline.entrypoints=websecure
        - traefik.http.routers.outline.tls=true
        - traefik.http.routers.outline.tls.certresolver=letsencryptresolver
        - traefik.http.routers.outline.service=outline
        - traefik.http.services.outline.loadbalancer.server.port=3000

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  outline_data:
    external: true
    name: outline_data
    
networks:
  $nome_rede_interna:
    external: true
    name: $nome_rede_interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Outline"
fi
STACK_NAME="outline"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c outline.yaml outline > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do outline"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[5/5]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "outline" para verificar se o serviço esta online
wait_stack "outline"

cd dados_vps

cat > dados_outline <<EOL
[ OUTLINE ]

Dominio do Outline: https://$url_outline

Usuario: Login é feito com o Google

Senha: Login é feito com o Google

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ OUTLINE ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_outline\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Login é feito com o Google\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Login é feito com o Google\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███████╗ ██████╗  ██████╗ █████╗ ██╗     ██████╗  ██████╗  █████╗ ██████╗ ██████╗ 
## ██╔════╝██╔═══██╗██╔════╝██╔══██╗██║     ██╔══██╗██╔═══██╗██╔══██╗██╔══██╗██╔══██╗
## █████╗  ██║   ██║██║     ███████║██║     ██████╔╝██║   ██║███████║██████╔╝██║  ██║
## ██╔══╝  ██║   ██║██║     ██╔══██║██║     ██╔══██╗██║   ██║██╔══██║██╔══██╗██║  ██║
## ██║     ╚██████╔╝╚██████╗██║  ██║███████╗██████╔╝╚██████╔╝██║  ██║██║  ██║██████╔╝
## ╚═╝      ╚═════╝  ╚═════╝╚═╝  ╚═╝╚══════╝╚═════╝  ╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝╚═════╝ 

ferramenta_focalboard() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_focalboard

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o FocalBoard (ex: focalboard.oriondesign.art.br): \e[0m" && read -r url_focalboard
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_focalboard
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do focalboard
    echo -e "\e[33mDominio do FocalBoard:\e[97m $url_focalboard\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_focalboard

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO FOCALBOARD \e[33m[1/3]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO FOCALBOARD \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > focalboard.yaml <<EOL
version: "3.8"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  focalboard:
    image: mattermost/focalboard:latest

    volumes:
      - fbdata:/opt/focalboard/data
    
    networks:
      - $nome_rede_interna ## Nome da rede interna
    
    environment:
      - VIRTUAL_HOST=$url_focalboard ## Url da Aplicação
      - VIRTUAL_PORT=8000
    
    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.focalboard.rule=Host(\`$url_focalboard\`) ## Url da Aplicação
        - traefik.http.services.focalboard.loadBalancer.server.port=8000
        - traefik.http.routers.focalboard.service=focalboard
        - traefik.http.routers.focalboard.entrypoints=websecure
        - traefik.http.routers.focalboard.tls.certresolver=letsencryptresolver

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  fbdata:
    external: true
    name: fbdata

networks:
  $nome_rede_interna: ## Nome da rede interna
    external: true
    name: $nome_rede_interna ## Nome da rede interna
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do focalboard"
fi
STACK_NAME="focalboard"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c focalboard.yaml focalboard > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do focalboard"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_focalboard para verificar se o serviço esta online
wait_stack "focalboard"

cd dados_vps

cat > dados_focalboard <<EOL
[ FOCALBOARD ]

Dominio do FocalBoard: https://$url_focalboard

Usuario: Precisa criar no primeiro acesso do FocalBoard

Senha: Precisa criar no primeiro acesso do FocalBoard

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ FOCALBOARD ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_focalboard\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do FocalBoard\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do FocalBoard\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##  ██████╗ ██╗     ██████╗ ██╗
## ██╔════╝ ██║     ██╔══██╗██║
## ██║  ███╗██║     ██████╔╝██║
## ██║   ██║██║     ██╔═══╝ ██║
## ╚██████╔╝███████╗██║     ██║
##  ╚═════╝ ╚══════╝╚═╝     ╚═╝

ferramenta_glpi() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_glpi

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o GLPI (ex: glpi.sinergialucrativa.com): \e[0m" && read -r url_glpi
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_glpi
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do glpi
    echo -e "\e[33mDominio do GLPI:\e[97m $url_glpi\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_glpi

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO GLPI \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO MYSQL \e[33m[2/4]\e[0m"
echo ""
sleep 1

## Cansei já de explicar o que isso faz kkkk
verificar_container_mysql
if [ $? -eq 0 ]; then
    pegar_senha_mysql > /dev/null 2>&1
else
    ferramenta_mysql
    pegar_senha_mysql > /dev/null 2>&1
fi

criar_banco_mysql_da_stack "glpi"

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO GLPI \e[33m[3/4]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > glpi.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  glpi:
    image: diouxx/glpi:latest

    volumes:
      - /etc/timezone:/etc/timezone:ro
      - /etc/localtime:/etc/localtime:ro
      - glpi_glpi:/var/www/html/glpi

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      - TIMEZONE=America/Sao_Paulo

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.glpi.rule=Host(\`$url_glpi\`)
        - traefik.http.services.glpi.loadbalancer.server.port=80
        - traefik.http.routers.glpi.service=glpi
        - traefik.http.routers.glpi.tls.certresolver=letsencryptresolver
        - traefik.http.routers.glpi.entrypoints=websecure
        - traefik.http.routers.glpi.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  glpi_glpi:
    external: true
    name: glpi_glpi

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do GLPI"
fi
STACK_NAME="glpi"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c glpi.yaml glpi > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do glpi"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "glpi" para verificar se o serviço esta online
wait_stack "glpi"

cd dados_vps

cat > dados_glpi <<EOL
[ GLPI ]

Dominio do GLPI: https://$url_glpi

Usuario: glpi

Senha: glpi

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ GLPI ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_glpi\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m glpi\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m glpi\e[0m"
echo ""

echo -e "\e[33mEndereço do servidor SQL:\e[97m mysql\e[0m"
echo ""

echo -e "\e[33mUsuário SQL:\e[97m root\e[0m"
echo ""

echo -e "\e[33mSenha SQL:\e[97m $senha_mysql\e[0m"
echo ""

echo -e "\e[33mBanco de dados:\e[97m glpi\e[0m"
echo ""



## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

##  █████╗ ███╗   ██╗██╗   ██╗████████╗██╗  ██╗██╗███╗   ██╗ ██████╗     ██╗     ██╗     ███╗   ███╗
## ██╔══██╗████╗  ██║╚██╗ ██╔╝╚══██╔══╝██║  ██║██║████╗  ██║██╔════╝     ██║     ██║     ████╗ ████║
## ███████║██╔██╗ ██║ ╚████╔╝    ██║   ███████║██║██╔██╗ ██║██║  ███╗    ██║     ██║     ██╔████╔██║
## ██╔══██║██║╚██╗██║  ╚██╔╝     ██║   ██╔══██║██║██║╚██╗██║██║   ██║    ██║     ██║     ██║╚██╔╝██║
## ██║  ██║██║ ╚████║   ██║      ██║   ██║  ██║██║██║ ╚████║╚██████╔╝    ███████╗███████╗██║ ╚═╝ ██║
## ╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝      ╚═╝   ╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝ ╚═════╝     ╚══════╝╚══════╝╚═╝     ╚═╝

ferramenta_anythingllm() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_anythingllm

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/3\e[0m"
    echo -en "\e[33mDigite o dominio para o Anything LLM (ex: anythingllm.sinergialucrativa.com): \e[0m" && read -r url_anythingllm
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/3\e[0m"
    read -r ip _ <<<$(hostname -I)
    echo -en "\e[33mDigite o dominio do Qdrant (ex: http://$ip:6333  ou http://qdrant.sinergialucrativa.com:6333): \e[0m" && read -r qdrant_anythingllm
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 3/3\e[0m"
    key_dify_rand=$(openssl rand -hex 16)
    echo -en "\e[33mDigite a Api Key do Qdrant (ex: $key_dify_rand): \e[0m" && read -r api_qdrant_anythingllm
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_anythingllm
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do anythingllm
    echo -e "\e[33mDominio do Anything LLM:\e[97m $url_anythingllm\e[0m"
    echo ""

    echo -e "\e[33mDominio do Qdrant:\e[97m $qdrant_anythingllm\e[0m"
    echo ""

    echo -e "\e[33mApi Key do Qdrant:\e[97m $api_qdrant_anythingllm\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_anythingllm

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO ANYTHING LLM \e[33m[1/3]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO ANYTHING LLM \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > anythingllm.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  anythingllm:
    image: mintplexlabs/anythingllm:latest

    volumes:
      - anythingllm_storage:/app/server/storage
      - anythingllm_hotdir:/app/collector/hotdir
      - anythingllm_outputs:/app/collector/outputs

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      - SERVER_PORT=3001
      - STORAGE_DIR=/app/server/storage
      - UID=1000
      - GID=1000

      ## Dados Qdrant
      - VECTOR_DB=qdrant
      - QDRANT_ENDPOINT=$qdrant_anythingllm
      - QDRANT_API_KEY=$api_qdrant_anythingllm

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.anythingllm.rule=Host(\`$url_anythingllm\`)
        - traefik.http.services.anythingllm.loadbalancer.server.port=3001
        - traefik.http.routers.anythingllm.service=anythingllm
        - traefik.http.routers.anythingllm.tls.certresolver=letsencryptresolver
        - traefik.http.routers.anythingllm.entrypoints=websecure
        - traefik.http.routers.anythingllm.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  anythingllm_storage:
    external: true
    name: anythingllm_storage
  anythingllm_hotdir:
    external: true
    name: anythingllm_hotdir
  anythingllm_outputs:
    external: true
    name: anythingllm_outputs

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do anythingllm"
fi
STACK_NAME="anythingllm"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c anythingllm.yaml anythingllm > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do anythingllm"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "anythingllm" para verificar se o serviço esta online
wait_stack "anythingllm"

cd dados_vps

cat > dados_anythingllm <<EOL
[ ANYTHING LLM ]

Dominio do Anything LLM: https://$url_anythingllm

Usuario: Precisa criar no primeiro acesso do Anything LLM

Senha: Precisa criar no primeiro acesso do Anything LLM

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ ANYTHING LLM ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_anythingllm\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do Anything LLM\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do Anything LLM\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███████╗██╗  ██╗ ██████╗ █████╗ ██╗     ██╗██████╗ ██████╗  █████╗ ██╗    ██╗
## ██╔════╝╚██╗██╔╝██╔════╝██╔══██╗██║     ██║██╔══██╗██╔══██╗██╔══██╗██║    ██║
## █████╗   ╚███╔╝ ██║     ███████║██║     ██║██║  ██║██████╔╝███████║██║ █╗ ██║
## ██╔══╝   ██╔██╗ ██║     ██╔══██║██║     ██║██║  ██║██╔══██╗██╔══██║██║███╗██║
## ███████╗██╔╝ ██╗╚██████╗██║  ██║███████╗██║██████╔╝██║  ██║██║  ██║╚███╔███╔╝
## ╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═╝╚═════╝ ╚═╝  ╚═╝╚═╝  ╚═╝ ╚══╝╚══╝ 

ferramenta_excalidraw() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_excalidraw

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o Excalidraw (ex: excalidraw.oriondesign.art.br): \e[0m" && read -r url_excalidraw
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_excalidraw
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do excalidraw
    echo -e "\e[33mDominio do Excalidraw:\e[97m $url_excalidraw\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_excalidraw

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO EXCALIDRAW \e[33m[1/3]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO EXCALIDRAW \e[33m[2/3]\e[0m"
echo ""
sleep 1

## Criando a stack
cat > excalidraw.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  excalidraw:
    image: excalidraw/excalidraw:latest

    volumes:
      - excalidraw_data:/data

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      - EXCALIDRAW_PORT=80
      - NODE_ENV=development

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "0.5"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.excalidraw.rule=Host(\`$url_excalidraw\`)
        - traefik.http.services.excalidraw.loadbalancer.server.port=80
        - traefik.http.routers.excalidraw.service=excalidraw
        - traefik.http.routers.excalidraw.tls.certresolver=letsencryptresolver
        - traefik.http.routers.excalidraw.entrypoints=websecure
        - traefik.http.routers.excalidraw.tls=true

## --------------------------- ANDROMEDA --------------------------- ##


volumes:
  excalidraw_data:
    external: true
    name: excalidraw_data

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do excalidraw"
fi
STACK_NAME="excalidraw"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c excalidraw.yaml excalidraw > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do excalidraw"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "excalidraw" para verificar se o serviço esta online
wait_stack "excalidraw"

cd dados_vps

cat > dados_excalidraw <<EOL
[ EXCALIDRAW ]

Dominio do Excalidraw: https://$url_excalidraw

Usuario: Precisa criar no primeiro acesso do Excalidraw

Senha: Precisa criar no primeiro acesso do Excalidraw

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ EXCALIDRAW ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_excalidraw\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do Excalidraw\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do Excalidraw\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao
}

## ███████╗ █████╗ ███████╗██╗   ██╗██╗                                                                 
## ██╔════╝██╔══██╗██╔════╝╚██╗ ██╔╝██║                                                                 
## █████╗  ███████║███████╗ ╚████╔╝ ██║                                                                 
## ██╔══╝  ██╔══██║╚════██║  ╚██╔╝  ╚═╝                                                                 
## ███████╗██║  ██║███████║   ██║   ██╗                                                                 
## ╚══════╝╚═╝  ╚═╝╚══════╝   ╚═╝   ╚═╝                                                                 
##                                                                                                      
##  █████╗ ██████╗ ██████╗  ██████╗ ██╗███╗   ██╗████████╗███╗   ███╗███████╗███╗   ██╗████████╗███████╗
## ██╔══██╗██╔══██╗██╔══██╗██╔═══██╗██║████╗  ██║╚══██╔══╝████╗ ████║██╔════╝████╗  ██║╚══██╔══╝██╔════╝
## ███████║██████╔╝██████╔╝██║   ██║██║██╔██╗ ██║   ██║   ██╔████╔██║█████╗  ██╔██╗ ██║   ██║   ███████╗
## ██╔══██║██╔═══╝ ██╔═══╝ ██║   ██║██║██║╚██╗██║   ██║   ██║╚██╔╝██║██╔══╝  ██║╚██╗██║   ██║   ╚════██║
## ██║  ██║██║     ██║     ╚██████╔╝██║██║ ╚████║   ██║   ██║ ╚═╝ ██║███████╗██║ ╚████║   ██║   ███████║
## ╚═╝  ╚═╝╚═╝     ╚═╝      ╚═════╝ ╚═╝╚═╝  ╚═══╝   ╚═╝   ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝

ferramenta_easyappointments() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_easyappointments

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/1\e[0m"
    echo -en "\e[33mDigite o dominio para o Easy!Appointments (ex: easyappointments.sinergialucrativa.com): \e[0m" && read -r url_easyappointments
    echo ""
    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_easyappointments
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do easyappointments
    echo -e "\e[33mDominio do Easy!Appointments:\e[97m $url_easyappointments\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_easyappointments

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO EASY!APPOINTMENTS \e[33m[1/4]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO MYSQL \e[33m[2/4]\e[0m"
echo ""
sleep 1

dados

verificar_container_mysql
if [ $? -eq 0 ]; then
    pegar_senha_mysql > /dev/null 2>&1
else
    ferramenta_mysql
    pegar_senha_mysql > /dev/null 2>&1
fi

criar_banco_mysql_da_stack "easyapointments"

## Espera 30 segundos
wait_30_sec

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO EASY!APPOINTMENTS \e[33m[3/4]\e[0m"
echo ""
sleep 1


# Cria o arquivo com o conteúdo desejado
cat > apache-custom.conf << EOL
ServerName $url_easyappointments
EOL

# Cria o diretório, se ainda não existir
mkdir -p /root/easyappointments > /dev/null 2>&1

# Move o arquivo para o diretório de destino
sudo mv apache-custom.conf /root/easyappointments/apache-custom.conf

## Criando a stack
cat > easyappointments.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  easyapointments:
    image: alextselegidis/easyappointments:latest

    volumes:
      - easyapointments_data:/var/www/html
      - /root/easyappointments/apache-custom.conf:/etc/apache2/conf-enabled/custom.conf:ro

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados de acesso
      - BASE_URL=https://$url_easyappointments
      - APACHE_SERVER_NAME=$url_easyappointments

      ## Dados do banco de dados
      - DB_HOST=mysql
      - DB_NAME=easyapointments
      - DB_USERNAME=root
      - DB_PASSWORD=$senha_mysql

      ## Dados Google Calendar
      - GOOGLE_SYNC_FEATURE=false
      - GOOGLE_PRODUCT_NAME=
      - GOOGLE_CLIENT_ID=
      - GOOGLE_CLIENT_SECRET=
      - GOOGLE_API_KEY=

      ## Modo de Debug
      - DEBUG_MODE=TRUE

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.easyapointments.rule=Host(\`$url_easyappointments\`)
        - traefik.http.services.easyapointments.loadbalancer.server.port=80
        - traefik.http.routers.easyapointments.service=easyapointments
        - traefik.http.routers.easyapointments.tls.certresolver=letsencryptresolver
        - traefik.http.routers.easyapointments.entrypoints=websecure
        - traefik.http.routers.easyapointments.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  easyapointments_data:
    external: true
    name: easyapointments_data

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Easy!Appointments"
fi
STACK_NAME="easyappointments"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c easyappointments.yaml easyappointments > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do easyappointments"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[4/4]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "easyappointments" para verificar se o serviço esta online
wait_stack "easyappointments"

cd dados_vps

cat > dados_easyappointments <<EOL
[ EASY!APPOINTMENTS ]

Dominio do Easy!Appointments: https://$url_easyappointments

Usuario: Precisa criar no primeiro acesso do Easy!Appointments

Senha: Precisa criar no primeiro acesso do Easy!Appointments

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ EASY!APPOINTMENTS ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_easyappointments\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m Precisa criar no primeiro acesso do Easy!Appointments\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do Easy!Appointments\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao

}

## ██████╗  ██████╗  ██████╗██╗   ██╗███╗   ███╗███████╗███╗   ██╗███████╗ ██████╗ 
## ██╔══██╗██╔═══██╗██╔════╝██║   ██║████╗ ████║██╔════╝████╗  ██║██╔════╝██╔═══██╗
## ██║  ██║██║   ██║██║     ██║   ██║██╔████╔██║█████╗  ██╔██╗ ██║███████╗██║   ██║
## ██║  ██║██║   ██║██║     ██║   ██║██║╚██╔╝██║██╔══╝  ██║╚██╗██║╚════██║██║   ██║
## ██████╔╝╚██████╔╝╚██████╗╚██████╔╝██║ ╚═╝ ██║███████╗██║ ╚████║███████║╚██████╔╝
## ╚═════╝  ╚═════╝  ╚═════╝ ╚═════╝ ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝╚══════╝ ╚═════╝ 

ferramenta_documenso() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_documenso

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio do Builder
    echo -e "\e[97mPasso$amarelo 1/8\e[0m"
    echo -en "\e[33mDigite o Dominio para o Builder do Documenso (ex: documenso.sinergialucrativa.com): \e[0m" && read -r url_documenso
    echo ""

    ##Pergunta o Email SMTP
    echo -e "\e[97mPasso$amarelo 2/8\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_documenso
    echo ""

    ##Pergunta o usuário do Email SMTP
    echo -e "\e[97mPasso$amarelo 3/8\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuário para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r usuario_email_documenso
    echo ""
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 4/8\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_email_documenso
    echo ""

    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 5/8\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r smtp_email_documenso
    echo ""

    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 6/8\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_documenso
    echo ""

    ## Verifica se a porta é 465, se sim deixa o ssl true, se não, deixa false 
    if [ "$porta_smtp_documenso" -eq 465 ]; then
    smtp_secure_documenso=true
    else
    smtp_secure_documenso=false
    fi

    ## Pergunta qual é o Access Key do minio
    echo -e "\e[97mPasso$amarelo 7/8\e[0m"
    echo -en "\e[33mAccess Key Minio: \e[0m" && read -r S3_ACCESS_KEY
    echo ""

    ## Pergunta qual é a Secret Key do minio
    echo -e "\e[97mPasso$amarelo 8/8\e[0m"
    echo -en "\e[33mSecret Key Minio: \e[0m" && read -r S3_SECRET_KEY
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_documenso
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do Builder
    echo -e "\e[33mDominio do Documenso:\e[97m $url_documenso\e[0m"
    echo "" 

    ## Informação sobre Email
    echo -e "\e[33mEmail do SMTP:\e[97m $email_documenso\e[0m"
    echo ""

    ## Informação sobre Email
    echo -e "\e[33mUsuário do SMTP:\e[97m $usuario_email_documenso\e[0m"
    echo ""

    ## Informação sobre Senha do Email
    echo -e "\e[33mSenha do Email:\e[97m $senha_email_documenso\e[0m"
    echo ""

    ## Informação sobre Host SMTP
    echo -e "\e[33mHost SMTP do Email:\e[97m $smtp_email_documenso\e[0m"
    echo ""

    ## Informação sobre Porta SMTP
    echo -e "\e[33mPorta SMTP do Email:\e[97m $porta_smtp_documenso\e[0m"
    echo ""

    ## Informação sobre Secure SMTP
    echo -e "\e[33mSecure SMTP do Email:\e[97m $smtp_secure_documenso\e[0m"
    echo ""

    ## Informação sobre Access Key
    echo -e "\e[33mAccess Key Minio:\e[97m $S3_ACCESS_KEY\e[0m"
    echo ""

    ## Informação sobre Secret Key
    echo -e "\e[33mSecret Key Minio:\e[97m $S3_SECRET_KEY\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_documenso

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done


## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO DOCUMENSO \e[33m[1/5]\e[0m"
echo ""
sleep 1

## Nada nada nada.. só para aparecer a mensagem de passo..

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/5]\e[0m"
echo ""
sleep 1

## Aqui vamos fazer uma verificação se já existe Postgres instalado
## Se tiver ele vai criar um banco de dados no postgres ou perguntar se deseja apagar o que já existe e criar outro

## Verifica container postgres e cria banco no postgres
verificar_container_postgres
if [ $? -eq 0 ]; then
        pegar_senha_postgres > /dev/null 2>&1
    else
        ferramenta_postgres #> /dev/null 2>&1
        pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "documenso"

## Mensagem de Passo
echo -e "\e[97m• PEGANDO DADOS DO MINIO \e[33m[3/5]\e[0m"
echo ""
sleep 1

pegar_senha_minio
if [ $? -eq 0 ]; then
    echo "1/2 - [ OK ] - Pegando Senha do MinIO"
else
    echo "1/2 - [ OFF ] - Pegando Senha do MinIO"
    echo "Não foi possivel pegar a senha do minio"
fi
pegar_link_s3
if [ $? -eq 0 ]; then
    echo "2/2 - [ OK ] - Pegando URL do S3"
else
    echo "2/2 - [ OFF ] - Pegando URL do S3"
    echo "Não foi possivel pegar o link do S3"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO DOCUMENSO \e[33m[4/5]\e[0m"
echo ""
sleep 1

## Criando key Aleatória
key_documenso1=$(openssl rand -hex 16)
key_documenso2=$(openssl rand -hex 16)
key_documenso3=$(openssl rand -hex 16)

## Criando a stack
cat > documenso.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  documenso:
    image: documenso/documenso:latest

    volumes:
      - documenso_cert:/opt/documenso/cert.p12

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados de Acesso
      - PORT=3000
      - NEXTAUTH_URL=https://$url_documenso
      - NEXT_PUBLIC_WEBAPP_URL=https://$url_documenso
      - NEXT_PUBLIC_MARKETING_URL=https://oriondesign.art.br

      ## Secret Keys
      - NEXTAUTH_SECRET=$key_documenso1
      - NEXT_PRIVATE_ENCRYPTION_KEY=$key_documenso2
      - NEXT_PRIVATE_ENCRYPTION_SECONDARY_KEY=$key_documenso3

      ## Dados do Google Cloud
      #- NEXT_PRIVATE_GOOGLE_CLIENT_ID=
      #- NEXT_PRIVATE_GOOGLE_CLIENT_SECRET=

      ## Dados Postgres
      - NEXT_PRIVATE_DATABASE_URL=postgresql://postgres:$senha_postgres@postgres:5432/documenso
      - NEXT_PRIVATE_DIRECT_DATABASE_URL=postgresql://postgres:$senha_postgres@postgres:5432/documenso

      ## Configurações MinIO
      - NEXT_PUBLIC_UPLOAD_TRANSPORT=s3
      - NEXT_PRIVATE_UPLOAD_ENDPOINT=https://$url_s3
      - NEXT_PRIVATE_UPLOAD_FORCE_PATH_STYLE=true
      - NEXT_PRIVATE_UPLOAD_REGION=eu-south
      - NEXT_PRIVATE_UPLOAD_BUCKET=documenso
      - NEXT_PRIVATE_UPLOAD_ACCESS_KEY_ID=$S3_ACCESS_KEY
      - NEXT_PRIVATE_UPLOAD_SECRET_ACCESS_KEY=$S3_SECRET_KEY

      ## Dados de SMTP
      - NEXT_PRIVATE_SMTP_TRANSPORT=smtp-auth
      - NEXT_PRIVATE_SMTP_FROM_ADDRESS=$email_documenso
      - NEXT_PRIVATE_SMTP_USERNAME=$usuario_email_documenso
      - NEXT_PRIVATE_SMTP_PASSWORD=$senha_email_documenso
      - NEXT_PRIVATE_SMTP_HOST=$smtp_email_documenso
      - NEXT_PRIVATE_SMTP_PORT=$porta_smtp_documenso
      - NEXT_PRIVATE_SMTP_SECURE=$smtp_secure_documenso
      - NEXT_PRIVATE_SMTP_FROM_NAME=Suporte

      ## Configurações
      - NEXT_PUBLIC_DOCUMENT_SIZE_UPLOAD_LIMIT=10
      - NEXT_PUBLIC_DISABLE_SIGNUP=false
      - NEXT_PRIVATE_SIGNING_LOCAL_FILE_PATH=/opt/documenso/cert.p12

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.documenso.rule=Host(\`$url_documenso\`)
        - traefik.http.services.documenso.loadbalancer.server.port=3000
        - traefik.http.routers.documenso.service=documenso
        - traefik.http.routers.documenso.tls.certresolver=letsencryptresolver
        - traefik.http.routers.documenso.entrypoints=websecure
        - traefik.http.routers.documenso.tls=true
    

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  documenso_cert:
    external: true
    name: documenso_cert

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do documenso"
fi
STACK_NAME="documenso"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c documenso.yaml documenso > /dev/null 2>&1

#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack do documenso"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[5/5]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "documenso" para verificar se o serviço esta online
wait_stack "documenso"

cd dados_vps

cat > dados_documenso <<EOL
[ DOCUMENSO ]

Dominio do Documenso: https://$url_documenso

Email: Precisa criar no primeiro acesso do Documenso

Senha: Precisa criar no primeiro acesso do Documenso
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ DOCUMENSO ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_documenso\e[0m"
echo ""

echo -e "\e[33mEmail:\e[97m Precisa criar no primeiro acesso do Documenso\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m Precisa criar no primeiro acesso do Documenso\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao

}

## ███╗   ███╗ ██████╗  ██████╗ ██████╗ ██╗     ███████╗
## ████╗ ████║██╔═══██╗██╔═══██╗██╔══██╗██║     ██╔════╝
## ██╔████╔██║██║   ██║██║   ██║██║  ██║██║     █████╗  
## ██║╚██╔╝██║██║   ██║██║   ██║██║  ██║██║     ██╔══╝  
## ██║ ╚═╝ ██║╚██████╔╝╚██████╔╝██████╔╝███████╗███████╗
## ╚═╝     ╚═╝ ╚═════╝  ╚═════╝ ╚═════╝ ╚══════╝╚══════╝

ferramenta_moodle() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_moodle

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 1/10\e[0m"
    echo -en "\e[33mDigite o dominio para o Moodle (ex: moodle.sinergialucrativa.com): \e[0m" && read -r url_moodle
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 2/10\e[0m"
    echo -en "\e[33mDigite o nome para o projeto (ex: AndromedaNet): \e[0m" && read -r project_name_moodle
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 3/10\e[0m"
    echo -en "\e[33mDigite um Nome de Usuario (ex: andromedanet): \e[0m" && read -r user_moodle
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 4/10\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$"
    echo -en "\e[33mDigite uma Senha para o Usuario (ex: @Senha123_): \e[0m" && read -r pass_moodle
    echo ""

    ##Pergunta o Dominio para a ferramenta
    echo -e "\e[97mPasso$amarelo 5/10\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$"
    echo -en "\e[33mDigite um Email para o Usuario (ex: suporte@sinergialucrativa.com): \e[0m" && read -r mail_moodle
    echo ""

    ##Pergunta o Email SMTP
    echo -e "\e[97mPasso$amarelo 6/10\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_smtp_moodle
    echo ""

    ##Pergunta o usuário do Email SMTP
    echo -e "\e[97mPasso$amarelo 7/10\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuário para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r usuario_smtp_moodle
    echo ""
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 8/10\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_smtp_moodle
    echo ""

    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 9/10\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r host_smtp_moodle
    echo ""

    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 10/10\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_moodle
    echo ""

    ## Verifica se a porta é 465, se sim deixa o ssl true, se não, deixa false 
    if [ "$porta_smtp_typebot" -eq 465 ]; then
    smtp_secure_smtp_moodle=ssl
    else
    smtp_secure_smtp_moodle=tls
    fi

    
    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_moodle
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info
    
    ## Informação sobre URL do moodle
    echo -e "\e[33mDominio do Moodle:\e[97m $url_moodle\e[0m"
    echo ""

    ## Informação sobre URL do moodle
    echo -e "\e[33mNome do Projeto:\e[97m $project_name_moodle\e[0m"
    echo ""

    ## Informação sobre URL do moodle
    echo -e "\e[33mUsuario:\e[97m $user_moodle\e[0m"
    echo ""

    ## Informação sobre URL do moodle
    echo -e "\e[33mSenha:\e[97m $pass_moodle\e[0m"
    echo ""

    ## Informação sobre URL do moodle
    echo -e "\e[33mEmail:\e[97m $mail_moodle\e[0m"
    echo ""

    ## Informação sobre URL do moodle
    echo -e "\e[33mEmail SMTP:\e[97m $email_smtp_moodle\e[0m"
    echo ""

    ## Informação sobre URL do moodle
    echo -e "\e[33mUsuario SMTP:\e[97m $usuario_smtp_moodle\e[0m"
    echo ""

    ## Informação sobre URL do moodle
    echo -e "\e[33mSenha SMTP:\e[97m $senha_smtp_moodle\e[0m"
    echo ""

    ## Informação sobre URL do moodle
    echo -e "\e[33mHost SMTP\e[97m $host_smtp_moodle\e[0m"
    echo ""

    ## Informação sobre URL do moodle
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_moodle\e[0m"
    echo ""
    
    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_moodle

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DO MOODLE \e[33m[1/3]\e[0m"
echo ""
sleep 1

## Nadaaaaa

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO MOODLE \e[33m[2/3]\e[0m"
echo ""
sleep 1

senha_marinadb=$(openssl rand -hex 16)
## Criando a stack
cat > moodle.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  moodle_app:
    image: bitnami/moodle:latest

    volumes:
      - moodle_app_apache_conf:/opt/bitnami/apache/conf
      - moodle_app_apache:/bitnami/apache/conf

    networks:
       - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados do projeto
      - MOODLE_SITE_NAME=$project_name_moodle

      ## Dados de acesso
      - MOODLE_HOST=$url_moodle
      - MOODLE_USERNAME=$user_moodle
      - MOODLE_PASSWORD=$pass_moodle
      - MOODLE_EMAIL=$mail_moodle

      ## Dados SMTP
      - MOODLE_SMTP_USER=$usuario_smtp_moodle
      - MOODLE_SMTP_PASSWORD=$senha_smtp_moodle
      - MOODLE_SMTP_HOST=$host_smtp_moodle
      - MOODLE_SMTP_PORT_NUMBER=$porta_smtp_moodle
      - MOODLE_SMTP_PROTOCOL=$smtp_secure_smtp_moodle ## 587 = tls ou plain | 465 = ssl 

      ## Idioma
      - MOODLE_LANG=pt
      
      ## Dados MarinaDB
      - MOODLE_DATABASE_HOST=moodle_mariadb
      - MOODLE_DATABASE_PORT_NUMBER=3306
      - MOODLE_DATABASE_USER=orion_moodle
      - MOODLE_DATABASE_PASSWORD=$senha_marinadb
      - MOODLE_DATABASE_NAME=orionbase_moodle
      - ALLOW_EMPTY_PASSWORD=no

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.moodle.rule=Host(\`$url_moodle\`)
        - traefik.http.services.moodle.loadbalancer.server.port=8080
        - traefik.http.routers.moodle.service=moodle
        - traefik.http.routers.moodle.tls.certresolver=letsencryptresolver
        - traefik.http.routers.moodle.entrypoints=websecure
        - traefik.http.routers.moodle.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

  moodle_mariadb:
    image: bitnami/mariadb:latest

    volumes:
      - moodle_mariadb_data:/bitnami/mariadb

    networks:
       - $nome_rede_interna ## Nome da rede interna

    environment:  
      ## Dados MarinaDB
      - MARIADB_USER=orion_moodle
      - MARIADB_ROOT_PASSWORD=$senha_marinadb
      - MARIADB_DATABASE=orionbase_moodle
      - MARIADB_PASSWORD=$senha_marinadb
      - MARIADB_CHARACTER_SET=utf8mb4
      - MARIADB_COLLATE=utf8mb4_unicode_ci
      - ALLOW_EMPTY_PASSWORD=no

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

volumes:
  moodle_app_apache_conf:
    external: true
    name: moodle_app_apache_conf
  moodle_app_apache:
    external: true
    name: moodle_app_apache
  moodle_mariadb_data:
    external: true
    name: moodle_mariadb_data

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack do Moodle"
fi
STACK_NAME="moodle"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c moodle.yaml moodle > /dev/null 2>&1
#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel Subir a stack do moodle"
#fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[3/3]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "moodle" para verificar se o serviço esta online
wait_stack "moodle"
sleep 120

cd dados_vps

cat > dados_moodle <<EOL
[ MOODLE ]

Dominio do moodle: https://$url_moodle

Usuario: $user_moodle

Senha: $pass_moodle

EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ MOODLE ]\e[0m"
echo ""

echo -e "\e[33mDominio:\e[97m https://$url_moodle\e[0m"
echo ""

echo -e "\e[33mUsuario:\e[97m $user_moodle\e[0m"
echo ""

echo -e "\e[33mSenha:\e[97m $pass_moodle\e[0m"
echo ""

echo -e "\e[97mObservação:\e[33m Esta é uma ferramenta que pode demorar para iniciar na primeira vez\e[0m"
echo -e "\e[33mrecomendo aguardar alguns instantes antes de tentar abrir para não prejudicar\e[0m"
echo -e "\e[33ma sua instalação que já foi realizado.\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao

}

## ████████╗ ██████╗  ██████╗ ██╗          ██╗███████╗████████╗
## ╚══██╔══╝██╔═══██╗██╔═══██╗██║          ██║██╔════╝╚══██╔══╝
##    ██║   ██║   ██║██║   ██║██║          ██║█████╗     ██║   
##    ██║   ██║   ██║██║   ██║██║     ██   ██║██╔══╝     ██║   
##    ██║   ╚██████╔╝╚██████╔╝███████╗╚█████╔╝███████╗   ██║   
##    ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝ ╚════╝ ╚══════╝   ╚═╝   

ferramenta_tooljet() {

## Limpa o terminal
clear

## Ativa a função dados para pegar os dados da vps
dados

## Mostra o nome da aplicação
nome_tooljet

## Mostra mensagem para preencher informações
preencha_as_info

## Inicia um Loop até os dados estarem certos
while true; do

    ##Pergunta o Dominio para aplicação
    echo -e "\e[97mPasso$amarelo 1/6\e[0m"
    echo -en "\e[33mDigite o Dominio para a ToolJet (ex: tooljet.sinergialucrativa.com): \e[0m" && read -r url_tooljet
    echo ""

    ##Pergunta o Email SMTP
    echo -e "\e[97mPasso$amarelo 2/6\e[0m"
    echo -en "\e[33mDigite o Email para SMTP (ex: suporte@sinergialucrativa.com): \e[0m" && read -r email_smtp_tooljet
    echo ""

    ##Pergunta o usuário do Email SMTP
    echo -e "\e[97mPasso$amarelo 3/6\e[0m"
    echo -e "$amarelo--> Caso não tiver um usuario do email, use o proprio email abaixo"
    echo -en "\e[33mDigite o Usuário para SMTP (ex: andromeda ou suporte@sinergialucrativa.com): \e[0m" && read -r usuario_smtp_tooljet
    echo ""
    
    ## Pergunta a senha do SMTP
    echo -e "\e[97mPasso$amarelo 4/6\e[0m"
    echo -e "$amarelo--> Sem caracteres especiais: \!#$ | Se estiver usando gmail use a senha de app"
    echo -en "\e[33mDigite a Senha SMTP do Email (ex: @Senha123_): \e[0m" && read -r senha_smtp_tooljet
    echo ""

    ## Pergunta o Host SMTP do email
    echo -e "\e[97mPasso$amarelo 5/6\e[0m"
    echo -en "\e[33mDigite o Host SMTP do Email (ex: smtp.hostinger.com): \e[0m" && read -r host_smtp_tooljet
    echo ""

    ## Pergunta a porta SMTP do email
    echo -e "\e[97mPasso$amarelo 6/6\e[0m"
    echo -en "\e[33mDigite a porta SMTP do Email (ex: 465): \e[0m" && read -r porta_smtp_tooljet
    echo ""

    ## Limpa o terminal
    clear
    
    ## Mostra o nome da aplicação
    nome_tooljet
    
    ## Mostra mensagem para verificar as informações
    conferindo_as_info

    ## Informação sobre URL
    echo -e "\e[33mDominio da ToolJet:\e[97m $url_tooljet\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mEmail SMTP:\e[97m $email_smtp_tooljet\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mUser SMTP:\e[97m $usuario_smtp_tooljet\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mSenha SMTP:\e[97m $senha_smtp_tooljet\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mHost SMTP:\e[97m $host_smtp_tooljet\e[0m"
    echo ""

    ## Informação sobre URL
    echo -e "\e[33mPorta SMTP:\e[97m $porta_smtp_tooljet\e[0m"
    echo ""

    ## Pergunta se as respostas estão corretas
    read -p "As respostas estão corretas? (Y/N): " confirmacao
    if [ "$confirmacao" = "Y" ] || [ "$confirmacao" = "y" ]; then

        ## Digitou Y para confirmar que as informações estão corretas

        ## Limpar o terminal
        clear

        ## Mostrar mensagem de Instalando
        instalando_msg

        ## Sai do Loop
        break
    else

        ## Digitou N para dizer que as informações não estão corretas.

        ## Limpar o terminal
        clear

        ## Mostra o nome da ferramenta
        nome_tooljet

        ## Mostra mensagem para preencher informações
        preencha_as_info

    ## Volta para o inicio do loop com as perguntas
    fi
done

## Mensagem de Passo
echo -e "\e[97m• INICIANDO A INSTALAÇÃO DA TOOLJET \e[33m[1/5]\e[0m"
echo ""
sleep 1

## Literalmente nada, apenas um espaço vazio caso precisar de adicionar alguma coisa
## Antes..
## E claro, para aparecer a mensagem do passo..

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO POSTGRES \e[33m[2/5]\e[0m"
echo ""
sleep 1

## Aqui vamos fazer uma verificação se já existe Postgres Instalado
## Se tiver ele vai criar um banco de dados no postgres ou perguntar se deseja apagar o que já existe e criar outro

## Verifica container postgres e cria banco no postgres

verificar_container_postgres
if [ $? -eq 0 ]; then
    pegar_senha_postgres > /dev/null 2>&1
else
    ferramenta_postgres #> /dev/null 2>&1
    pegar_senha_postgres > /dev/null 2>&1
fi

criar_banco_postgres_da_stack "tooljet"

if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Verificando/Instalando Postgres"
else
    echo "1/1 - [ OFF ] - Verificando/Instalando Postgres"
fi

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO/INSTALANDO REDIS \e[33m[3/5]\e[0m"
echo ""
sleep 1

## Verifica container redis
verificar_container_redis
if [ $? -eq 0 ]; then
    echo ""
else
    ferramenta_redis > /dev/null 2>&1
fi
if [ $? -eq 0 ]; then
    echo "1/1 - [ OK ] - Verificando/Instalando Reids"
else
    echo "1/1 - [ OFF ] - Verificando/Instalando Redis"
fi

## Mensagem de Passo
echo -e "\e[97m• INSTALANDO A TOOLJET \e[33m[4/5]\e[0m"
echo ""
sleep 1

## Aqui de fato vamos iniciar a instalação da tooljet

## Criando uma Global Key Aleatória
master_key=$(openssl rand -hex 16)
secret_key=$(openssl rand -hex 16)
jwt_key=$(openssl rand -hex 16)

## Criando a stack
cat > tooljet.yaml <<EOL
version: "3.7"
services:

## --------------------------- ANDROMEDA --------------------------- ##

  tooljet_app:
    image: tooljet/tooljet:EE-LTS-latest
    command: npm run start:prod

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      ## Dados de acesso
      - TOOLJET_HOST=https://$url_tooljet
      - SERVE_CLIENT=true
      - PORT=80

      ## Desativar novas inscrições
      - DISABLE_SIGNUPS=false

      ## Ativar perguntas no Onboarding
      - ENABLE_ONBOARDING_QUESTIONS_FOR_ALL_SIGN_UPS=true

      ## Keys
      - LOCKBOX_MASTER_KEY=$master_key
      - SECRET_KEY_BASE=$secret_key

      ## Dados dos do Postgres
      - DATABASE_URL=postgres://postgres:$senha_postgres@postgres:5432/tooljet?sslmode=disable

      ## Dados Postgres e Postgrest
      - ENABLE_TOOLJET_DB=true
      - TOOLJET_DB=tooljet
      - TOOLJET_DB_USER=postgres
      - TOOLJET_DB_HOST=postgres
      - TOOLJET_DB_PASS=$senha_postgres
      - PGRST_HOST=tooljet_postgrest
      - PGRST_JWT_SECRET=$jwt_key

      ## Dados Redis
      - REDIS_HOST=redis
      - REDIS_PORT=6379

      ## Dados SMTP
      - DEFAULT_FROM_EMAIL=$email_smtp_tooljet
      - SMTP_USERNAME=$usuario_smtp_tooljet
      - SMTP_PASSWORD=$senha_smtp_tooljet
      - SMTP_DOMAIN=$host_smtp_tooljet
      - SMTP_PORT=$porta_smtp_tooljet

      ## Credenciais Google Console
      #- GOOGLE_CLIENT_ID=
      #- GOOGLE_CLIENT_SECRET=

      ## Features do ToolJet
      - COMMENT_FEATURE_ENABLE=true
      - ENABLE_MULTIPLAYER_EDITING=true
      - ENABLE_MARKETPLACE_FEATURE=true

      ## Verificar novas versões do Tooljet
      - CHECK_FOR_UPDATES=false

      ## Expirar seção após X minutos
      - USER_SESSION_EXPIRY=120

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M
      labels:
        - traefik.enable=true
        - traefik.http.routers.tooljet.rule=Host(\`$url_tooljet\`)
        - traefik.http.services.tooljet.loadbalancer.server.port=80
        - traefik.http.routers.tooljet.service=tooljet
        - traefik.http.routers.tooljet.tls.certresolver=letsencryptresolver
        - traefik.http.routers.tooljet.entrypoints=websecure
        - traefik.http.routers.tooljet.tls=true

## --------------------------- ANDROMEDA --------------------------- ##

  tooljet_postgrest:
    image: postgrest/postgrest:v12.0.2

    networks:
      - $nome_rede_interna ## Nome da rede interna

    environment:
      - PGRST_SERVER_PORT=80
      - PGRST_DB_URI=postgres://postgres:$senha_postgres@postgres:5432/tooljet?sslmode=disable
      - PGRST_DB_SCHEMA=public 
      - PGRST_DB_ANON_ROLE=anon 
      - PGRST_JWT_SECRET=$jwt_key
      - PGRST_JWT_AUD=tooljet

    deploy:
      mode: replicated
      replicas: 1
      placement:
        constraints:
          - node.role == manager
      resources:
        limits:
          cpus: "1"
          memory: 1024M

## --------------------------- ANDROMEDA --------------------------- ##

networks:
  $nome_rede_interna: ## Nome da rede interna
    name: $nome_rede_interna ## Nome da rede interna
    external: true
EOL
if [ $? -eq 0 ]; then
    echo "1/10 - [ OK ] - Criando Stack"
else
    echo "1/10 - [ OFF ] - Criando Stack"
    echo "Não foi possivel criar a stack da TOOLJET"
fi
STACK_NAME="tooljet"
stack_editavel # > /dev/null 2>&1
#docker stack deploy --prune --resolve-image always -c tooljet.yaml tooljet > /dev/null 2>&1

#if [ $? -eq 0 ]; then
#    echo "2/2 - [ OK ] - Deploy Stack"
#else
#    echo "2/2 - [ OFF ] - Deploy Stack"
#    echo "Não foi possivel subir a stack da tooljet"
#fi

sleep 10

## Mensagem de Passo
echo -e "\e[97m• VERIFICANDO SERVIÇO \e[33m[5/5]\e[0m"
echo ""
sleep 1

## Usa o serviço wait_stack "tooljet" para verificar se o serviço esta online
wait_stack "tooljet"

cd dados_vps

cat > dados_tooljet <<EOL
[ TOOLJET ]

Dominio: https://$url_tooljet

Usuario: Precisa de criar no primeiro acesso ao ToolJet

Senha: Precisa de criar no primeiro acesso ao ToolJet
EOL

cd
cd

## Espera 30 segundos
wait_30_sec

## Mensagem de finalizado
instalado_msg

## Mensagem de Guarde os Dados
guarde_os_dados_msg

## Dados da Aplicação:
echo -e "\e[32m[ TOOLJET ]\e[0m"
echo ""

echo -e "\e[97mDominio:\e[33m https://$url_tooljet\e[0m"
echo ""

echo -e "\e[97mUsuario:\e[33m Precisa de criar no primeiro acesso ao ToolJet\e[0m"
echo ""

echo -e "\e[97mSenha:\e[33m Precisa de criar no primeiro acesso ao ToolJet\e[0m"
echo ""

## Creditos do instalador
creditos_msg

## Pergunta se deseja instalar outra aplicação
requisitar_outra_instalacao

}

## Ignore esta parte, só para facilitar minha identificação com esta parte "XXOOXX"

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Comandos extras

portainer.restart() {

    echo ""
    echo "Aguarde enquanto reiniciamos o Portainer"
    echo ""
    docker service update --force $(docker service ls --filter name='portainer_agent' -q) > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "1/2 - [ OK ]"
    else
        echo "1/2 - [ OFF ]"
        echo "Não foi possivel reiniciar o portainer"
    fi
    docker service update --force $(docker service ls --filter name='portainer_portainer' -q) > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "2/2 - [ OK ]"
    else
        echo "2/2 - [ OFF ]"
        echo "Não foi possivel reiniciar o portainer"
    fi
    sleep 2
    clear
}

chatwoot.nulled() {

    echo ""
    echo "Aguarde..."
    echo ""
    while :; do
    if docker ps -q --filter "name=postgres" | grep -q .; then
        CONTAINER_ID=$(docker ps -q --filter "name=postgres")
        docker exec -i "$CONTAINER_ID" psql -U postgres -d chatwoot -c \
        "UPDATE public.installation_configs SET serialized_value = '\"--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nvalue: enterprise\n\"' WHERE name = 'INSTALLATION_PRICING_PLAN'; \
        UPDATE public.installation_configs SET serialized_value = '\"--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nvalue: 200\n\"' WHERE name = 'INSTALLATION_PRICING_PLAN_QUANTITY';"
        
        if [ $? -eq 0 ]; then
        echo "1/1 - [ OK ]"
        else
            echo "1/1 - [ OFF ]"
            echo "Não foi possivel fazer isso, mude através do pgadmin."
        fi

        sleep 2
        
        break
    else
        sleep 5
    fi
done
}

chatwoot.uno.nulled() {

    echo ""
    echo "Aguarde..."
    echo ""
    while :; do
    if docker ps -q --filter "name=postgres" | grep -q .; then
        CONTAINER_ID=$(docker ps -q --filter "name=postgres")
        docker exec -i "$CONTAINER_ID" psql -U postgres -d chatwoot_uno -c \
        "UPDATE public.installation_configs SET serialized_value = '\"--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nvalue: enterprise\n\"' WHERE name = 'INSTALLATION_PRICING_PLAN'; \
        UPDATE public.installation_configs SET serialized_value = '\"--- !ruby/hash:ActiveSupport::HashWithIndifferentAccess\nvalue: 200\n\"' WHERE name = 'INSTALLATION_PRICING_PLAN_QUANTITY';"
        
        if [ $? -eq 0 ]; then
        echo "1/1 - [ OK ]"
        else
            echo "1/1 - [ OFF ]"
            echo "Não foi possivel fazer isso, mude através do pgadmin."
        fi

        sleep 2
        
        break
    else
        sleep 5
    fi
done
}

chatwoot.mail() {

    echo ""
    echo "Aguarde enquanto trocamos os emails..."
    echo ""

    #cd /var/lib/docker/volumes/chatwoot_mailer/_data/app/views/devise/mailer/
    cd /var/lib/docker/volumes/chatwoot_mailer/_data/

    # Renomeia os arquivos
    mv password_change.html.erb password_change.html.erb.old > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "1/9 - [ OK ]"
    else
        echo "1/9 - [ OFF ]"
        echo "Não foi possivel mudar email."
    fi
    mv confirmation_instructions.html.erb confirmation_instructions.html.erb.old > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "2/9 - [ OK ]"
    else
        echo "2/9 - [ OFF ]"
        echo "Não foi possivel mudar email."
    fi
    mv reset_password_instructions.html.erb reset_password_instructions.html.erb.old > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "3/9 - [ OK ]"
    else
        echo "3/9 - [ OFF ]"
        echo "Não foi possivel mudar email."
    fi
    mv unlock_instructions.html.erb unlock_instructions.html.erb.old > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "4/9 - [ OK ]"
    else
        echo "4/9 - [ OFF ]"
        echo "Não foi possivel mudar email."
    fi
    
    # Baixa os novos arquivos
    wget -O confirmation_instructions.html.erb https://github.com/oriondesign2015/SetupOrion/raw/main/Extras/Chatwoot/emails/confirmation_instructions.html.erb > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "5/9 - [ OK ]"
    else
        echo "5/9 - [ OFF ]"
        echo "Não foi possivel baixar email."
    fi
    wget -O password_change.html.erb https://github.com/oriondesign2015/SetupOrion/raw/main/Extras/Chatwoot/emails/password_change.html.erb > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "6/9 - [ OK ]"
    else
        echo "6/9 - [ OFF ]"
        echo "Não foi possivel baixar email."
    fi
    wget -O reset_password_instructions.html.erb https://github.com/oriondesign2015/SetupOrion/raw/main/Extras/Chatwoot/emails/reset_password_instructions.html.erb > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "7/9 - [ OK ]"
    else
        echo "7/9 - [ OFF ]"
        echo "Não foi possivel baixar email."
    fi
    wget -O unlock_instructions.html.erb https://github.com/oriondesign2015/SetupOrion/raw/main/Extras/Chatwoot/emails/unlock_instructions.html.erb > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "8/9 - [ OK ]"
    else
        echo "8/9 - [ OFF ]"
        echo "Não foi possivel baixar email."
    fi
    
    cd
    cd

    # Deleta os containers do Chatwoot
    docker rm -f $(docker ps -a | grep 'chatwoot' | awk '{print $1}') > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "9/9 - [ OK ]"
    else
        echo "9/9 - [ OFF ]"
        echo "Não foi possivel deletar containers."
    fi

    echo ""
    echo "Esperando containers subir..."
    wait_30_sec

    echo ""
    echo "Concluido!"
    sleep 2
}

chatwoot.n.mail() {

    echo ""
    echo "Aguarde enquanto trocamos os emails..."
    echo ""

    #cd /var/lib/docker/volumes/chatwoot_mailer/_data/app/views/devise/mailer/
    cd /var/lib/docker/volumes/chatwoot_nestor_mailer/_data/

    # Renomeia os arquivos
    mv password_change.html.erb password_change.html.erb.old > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "1/9 - [ OK ]"
    else
        echo "1/9 - [ OFF ]"
        echo "Não foi possivel mudar email."
    fi
    mv confirmation_instructions.html.erb confirmation_instructions.html.erb.old > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "2/9 - [ OK ]"
    else
        echo "2/9 - [ OFF ]"
        echo "Não foi possivel mudar email."
    fi
    mv reset_password_instructions.html.erb reset_password_instructions.html.erb.old > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "3/9 - [ OK ]"
    else
        echo "3/9 - [ OFF ]"
        echo "Não foi possivel mudar email."
    fi
    mv unlock_instructions.html.erb unlock_instructions.html.erb.old > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "4/9 - [ OK ]"
    else
        echo "4/9 - [ OFF ]"
        echo "Não foi possivel mudar email."
    fi
    
    # Baixa os novos arquivos
    wget -O confirmation_instructions.html.erb https://github.com/oriondesign2015/SetupOrion/raw/main/Extras/Chatwoot/emails/confirmation_instructions.html.erb > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "5/9 - [ OK ]"
    else
        echo "5/9 - [ OFF ]"
        echo "Não foi possivel baixar email."
    fi
    wget -O password_change.html.erb https://github.com/oriondesign2015/SetupOrion/raw/main/Extras/Chatwoot/emails/password_change.html.erb > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "6/9 - [ OK ]"
    else
        echo "6/9 - [ OFF ]"
        echo "Não foi possivel baixar email."
    fi
    wget -O reset_password_instructions.html.erb https://github.com/oriondesign2015/SetupOrion/raw/main/Extras/Chatwoot/emails/reset_password_instructions.html.erb > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "7/9 - [ OK ]"
    else
        echo "7/9 - [ OFF ]"
        echo "Não foi possivel baixar email."
    fi
    wget -O unlock_instructions.html.erb https://github.com/oriondesign2015/SetupOrion/raw/main/Extras/Chatwoot/emails/unlock_instructions.html.erb > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "8/9 - [ OK ]"
    else
        echo "8/9 - [ OFF ]"
        echo "Não foi possivel baixar email."
    fi
    
    cd
    cd

    # Deleta os containers do Chatwoot
    docker rm -f $(docker ps -a | grep 'chatwoot' | awk '{print $1}') > /dev/null 2>&1

    if [ $? -eq 0 ]; then
        echo "9/9 - [ OK ]"
    else
        echo "9/9 - [ OFF ]"
        echo "Não foi possivel deletar containers."
    fi

    echo ""
    echo "Esperando containers subir..."
    wait_30_sec

    echo ""
    echo "Concluido!"
    sleep 2
}

n8n.workflows(){
while true; do
    if docker ps -q --filter "name=n8n_quepasa_n8n_quepasa_editor" | grep -q .; then
        # Capturar o ID do container
        container_id=$(docker ps --filter "name=n8n_quepasa_n8n_quepasa_editor" --format "{{.ID}}")

        # Verificar se o ID do container foi capturado corretamente
        if [ -z "$container_id" ]; then
            echo "Erro: Não foi possível encontrar o ID do contêiner."
            exit 1
        fi

        # Executar o código no contêiner apenas se ele estiver em execução
        docker exec "$container_id" /bin/sh -c '
            # Criando diretório temporário
            temp_dir=$(mktemp -d)

            # Entrando no diretório temporário
            cd "$temp_dir"

            # Baixando workflows

            wget "https://raw.githubusercontent.com/DeividMs/QP_Setup_Orion/main/workflows/latest/ChatwootExtra.json"
            wget "https://raw.githubusercontent.com/DeividMs/QP_Setup_Orion/main/workflows/latest/ChatwootProfileUpdate.json"
            wget "https://raw.githubusercontent.com/DeividMs/QP_Setup_Orion/main/workflows/latest/ChatwootToQuepasa.json"
            wget "https://raw.githubusercontent.com/DeividMs/QP_Setup_Orion/main/workflows/latest/GetChatwootContacts.json"
            wget "https://raw.githubusercontent.com/DeividMs/QP_Setup_Orion/main/workflows/latest/PostToChatwoot.json"
            wget "https://raw.githubusercontent.com/DeividMs/QP_Setup_Orion/main/workflows/latest/PostToWebCallBack.json"
            wget "https://raw.githubusercontent.com/DeividMs/QP_Setup_Orion/main/workflows/latest/QuepasaAutomatic.json"
            wget "https://raw.githubusercontent.com/DeividMs/QP_Setup_Orion/main/workflows/latest/QuepasaChatControl.json"
            wget "https://raw.githubusercontent.com/DeividMs/QP_Setup_Orion/main/workflows/latest/QuepasaInboxControl.json"
            wget "https://raw.githubusercontent.com/DeividMs/QP_Setup_Orion/main/workflows/latest/QuepasaQrcode.json"
            wget "https://raw.githubusercontent.com/DeividMs/QP_Setup_Orion/main/workflows/latest/QuepasaToChatwoot.json"

            # Subindo workflows
            n8n import:workflow --input="$temp_dir" --separate

            # Verificando se os workflows foram importados com sucesso
            if [ $? -eq 0 ]; then
                echo "Workflows importados com sucesso"
            else
                echo "Erro ao importar workflows"
                exit 1
            fi

            # Ativando os workflows
            n8n update:workflow --id 1008 --active=true && echo "Fluxo 1008 ativado" || echo "Erro ao ativar fluxo 1008"
            n8n update:workflow --id 1009 --active=true && echo "Fluxo 1009 ativado" || echo "Erro ao ativar fluxo 1009"
            n8n update:workflow --id 1010 --active=true && echo "Fluxo 1010 ativado" || echo "Erro ao ativar fluxo 1010"
            n8n update:workflow --id 1011 --active=true && echo "Fluxo 1011 ativado" || echo "Erro ao ativar fluxo 1011"
        '
        break
    else
        clear
        erro_msg
        echo ""
        echo -e "Ops, parece que você não instalou a opção \e[32m[28] N8N + Nodes Quepasa${reset} ${branco}do nosso instalador.${reset}"
        echo "Instale antes de tentar instalar esta aplicação."
        echo ""
        echo "Pressione CTRL C para sair do instalador."
        sleep 5
        exit
    fi
done

}

portainer.reset() {
    cd
    clear
    nome_portainer.reset
    echo "Aguarde enquanto reseto a senha do portainer..."
    echo ""

    docker service scale portainer_portainer=0 > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "1/7 - [ OK ]"
    else
        echo "1/7 - [ OFF ]"
        echo "Ops, não foi possivel derrubar o serviço do portainer"
    fi

    docker pull portainer/helper-reset-password > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "2/7 - [ OK ]"
    else
        echo "2/7 - [ OFF ]"
        echo "Ops, não foi possivel super o serviço de reset password do portainer"
    fi

    script -c "docker run --rm -v /var/lib/docker/volumes/portainer_data/_data:/data portainer/helper-reset-password" output.txt > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "3/7 - [ OK ]"
    else
        echo "3/7 - [ OFF ]"
        echo "Ops, não foi possivel resetar a senha do portainer"
    fi

    cd
    #STACK_NAME="portainer"
    #stack_editavel > /dev/null 2>&1
    docker stack deploy --prune --resolve-image always -c portainer.yaml portainer > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "4/7 - [ OK ]"
    else
        echo "4/7 - [ OFF ]"
        echo "Ops, não foi possivel subir a stack do portainer"
    fi

    USER=$(grep -oP 'user: \K[^,]*' output.txt)
    if [ $? -eq 0 ]; then
        echo "5/7 - [ OK ]"
    else
        echo "5/7 - [ OFF ]"
        echo "Ops, não foi possivel pegar o usuario do portainer"
    fi

    PASSWORD=$(grep -oP 'login: \K.*' output.txt)
    if [ $? -eq 0 ]; then
        echo "6/7 - [ OK ]"
    else
        echo "6/7 - [ OFF ]"
        echo "Ops, não foi possivel pegar a senha do portainer"
    fi

    rm output.txt
    if [ $? -eq 0 ]; then
        echo "7/7 - [ OK ]"
    else
        echo "7/7 - [ OFF ]"
        echo "Ops, não foi possivel remover o arquivo output. txt ou ele não existe"
    fi

    echo ""
    sleep 3
    clear
    nome_portainer.reset
    echo -e "\e[32m[ PORTAINER ]\e[0m"
    echo ""
    
    echo -e "\e[97mUsuario:\e[33m $USER\e[0m"
    echo ""
    
    echo -e "\e[97mNova Senha:\e[33m $PASSWORD\e[0m"
    echo ""
    
    ## Creditos do instalador
    creditos_msg

    read -p "Deseja voltar ao menu principal? (Y/N): " choice
    if [ "$choice" = "Y" ] || [ "$choice" = "y" ]; then
        return
    else
        cd
        cd
        clear
        exit 1
    fi
}

traefik.fix() {

    echo ""
    echo ""
    echo "Trocando a versão da Stack do traefik..."
    ## Trocando a versão na stack
    sed -i 's/image: traefik:latest/image: traefik:v2.11.2/' /root/traefik.yaml
    if [ $? -eq 0 ]; then
        echo "1/3 - [ OK ] - Alterando versão na Stack"
    else
        echo "1/3 - [ OFF ] - Alterando versão na Stack"
        echo "Ops, não foi possivel alterar a versão na stack do Traefik"
    fi
    echo ""
    
    docker stack deploy --prune --resolve-image always -c traefik.yaml traefik > /dev/null 2>&1
    if [ $? -eq 0 ]; then
        echo "2/3 - [ OK ] - Fazendo Deploy da stack"
    else
        echo "2/3 - [ OFF ] - Fazendo Deploy da stack"
        echo "Ops, não foi possivel fazer o deploy da stack do Traefik"
    fi
    echo ""
    
    echo "Verificando stack do Traefik"
    wait_stack "traefik"

    if [ $? -eq 0 ]; then
        echo "3/3 - [ OK ] - Verificando Stack"
    else
        echo "3/3 - [ OFF ] - Verificando Stack"
        echo "Ops, não foi possivel Verificar a stack do Traefik"
    fi
    echo ""
    echo "Finalizado, já fixamos a imagem do seu traefik =D"
    echo ""
    sleep 5

}

ctop() {

    echo ""
    echo "Instalando CTOP"
    sudo wget https://github.com/bcicen/ctop/releases/download/v0.7.7/ctop-0.7.7-linux-amd64 -O /usr/local/bin/ctop
    if [ $? -eq 0 ]; then
        echo "1/2 - [ OK ] - Baixando CTOP"
    else
        echo "1/2 - [ OFF ] - Baixando CTOP"
        echo "Ops, não foi possivel baixar o CTOP"
    fi

    sudo chmod +x /usr/local/bin/ctop
    if [ $? -eq 0 ]; then
        echo "2/2 - [ OK ] - Dando permissão ao CTOP"
    else
        echo "2/2 - [ OFF ] - Dando permissão ao CTOP"
        echo "Ops, não foi possivel dar permissão ao CTOP"
    fi
    echo ""
    echo "Instalado, digite CTOP fora do nosso Setup oara executa-lo a qualquer momento."
    echo ""
    sleep 5

}

quepasa.setup.off(){
    echo ""
    echo "Desativando painel /setup do quepasa"
    mv /var/lib/docker/volumes/quepasa_volume/_data/views/setup.tmpl /var/lib/docker/volumes/quepasa_volume/_data/views/setup.old
    if [ $? -eq 0 ]; then
        echo "1/1 - [ OK ] - Painel /setup Desativado"
    else
        echo "1/1 - [ OFF ] - Erro ao desativar painel"
        echo "Tente novamente mais tarde ou verifique se você tem Quepasa instalado."
    fi
    echo ""
    echo "Voltando ao menu de ferramentas..."
    sleep 5
}

quepasa.setup.on(){
    echo ""
    echo "Ativando painel /setup do quepasa"
    mv /var/lib/docker/volumes/quepasa_volume/_data/views/setup.old /var/lib/docker/volumes/quepasa_volume/_data/views/setup.tmpl
    if [ $? -eq 0 ]; then
        echo "1/1 - [ OK ] - Painel /setup Ativado"
    else
        echo "1/1 - [ OFF ] - Erro ao Ativar painel"
        echo "Tente novamente mais tarde ou verifique se você tem Quepasa instalado."
    fi
    echo ""
    echo "Voltando ao menu de ferramentas..."
    sleep 5
}


## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

## Iniciando instalador

## Mostrar nome do instalador
nome_instalador

## Mostrar direitos do instalador
direitos_instalador

##Após apetar Y e confirmar continua..

## Menu de opções (backend)
while true; do

    nome_menu
    menu_instalador

    read -p "Digite o NÚMERO da opção desejada ou COMANDO oculto: " opcao

    case $opcao in

        0|00|teste_smtp|TESTE_SMTP)
            ferramenta_testeemail
            ;;
        1|01|portainer|traefik|PORTAINER|TRAEFIK)
            ferramenta_traefik_e_portainer
            ;;
        2|02|chatwoot|CHATWOOT)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="chatwoot"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_chatwoot
                else
                    APP_ORION="ferramenta_chatwoot"
                    verificar_arquivo
                fi

                ## FIM TOKEN 

                ### Inicio do teste para unificar AMD/INTEL com ARM
                #
                ### Nome da Stack
                #STACK_NAME="chatwoot"
                #
                ### Modelo do processador
                #cpu_vendor=$(lscpu | grep 'Vendor ID' | awk '{print $3}')
                #
                ### Verifica se o processador é INTEL ou AMD
                #if [[ "$cpu_vendor" == "GenuineIntel" || "$cpu_vendor" == "AuthenticAMD" ]]; then
                #    
                #    ## Verifica se tem Token no arquivo dados_portainer
                #    if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                #        ferramenta_chatwoot ## Inicia instalação para INTEL/AMD
                #    ## Se não tiver Token no dados_portainer
                #    else
                #        ## Nome da Stack
                #        APP_ORION="ferramenta_chatwoot"
                #
                #        ## Verifica o arquivo dados_portainer e pede dados
                #        verificar_arquivo
                #    fi
                #
                ### Verifica se o processador é ARM
                #elif [[ "$cpu_arch" == "armv7l" || "$cpu_arch" == "aarch64" || "$cpu_vendor" == "ARM" ]]; then
                #    
                #    ## Verifica se tem Token no arquivo dados_portainer
                #    if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                #        ferramenta_chatwoot_arm ## Inicia instalação para ARM
                #    ## Se não tiver Token no dados_portainer
                #    else
                #        ## Nome da Stack
                #        APP_ORION="ferramenta_chatwoot_arm"
                #
                #        ## Verifica o arquivo dados_portainer e pede dados
                #        verificar_arquivo
                #    fi
                #
                ### Se não for INTEL, AMD ou ARM
                #else
                #    ## Apresenta mensagem de erro.
                #    clear && erro_msg
                #    echo "Tipo de processador desconhecido: $cpu_vendor, voltando para o menu iniciar."
                #    echo "Reporte este erro no whatsapp: +55 11 97305-2593"
                #    sleep 5
                #fi
                ### Fim 

            fi
            ;;

        2.1|02.1|chatwoot_arm|CHATWOOT_ARM)
            if verificar_docker_e_portainer_traefik; then
        
                ## INICIO TOKEN
        
                STACK_NAME="chatwoot"
        
                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_chatwoot_arm
                else
                    APP_ORION="ferramenta_chatwoot_arm"
                    verificar_arquivo
                fi
        
                ## FIM TOKEN 
        
            
            fi
            ;;

        3|03|evolution|evo|EVO)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="evolution"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_evolution
                else
                    APP_ORION="ferramenta_evolution"
                    verificar_arquivo
                fi

                ## FIM TOKEN 

            fi

            ;;
        #.1)
        #   if verificar_docker_e_portainer_traefik; then

        #       ## INICIO TOKEN

        #       STACK_NAME="evolution"

        #       if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
        #           ferramenta_evolution_arm
        #       else
        #           APP_ORION="ferramenta_evolution_arm"
        #           verificar_arquivo
        #       fi

        #       ## FIM TOKEN 
        #   
        #   fi
        #   ;;
        4|04|minio|MINIO)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="minio"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_minio
                else
                    APP_ORION="ferramenta_minio"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        5|05|typebot|TYPEBOT)
            if verificar_docker_e_portainer_traefik && verificar_antes_se_tem_minio; then

                ## INICIO TOKEN

                STACK_NAME="typebot"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_typebot
                else
                    APP_ORION="ferramenta_typebot"
                    verificar_arquivo
                fi

                ## FIM TOKEN
            
            fi
            ;;
        6|06|n8n|N8N)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="n8n"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_n8n
                else
                    APP_ORION="ferramenta_n8n"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        7|07|flowise|FLOWISE)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="flowise"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_flowise
                else
                    APP_ORION="ferramenta_flowise"
                    verificar_arquivo
                fi

                ## FIM TOKEN
            
            fi
            ;;
        8|08|pgadmin|PGADMIN)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="pgadmin"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_pgAdmin_4
                else
                    APP_ORION="ferramenta_pgAdmin_4"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        9|09|nocobase|NOCOBASE)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="nocobase"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_nocobase
                else
                    APP_ORION="ferramenta_nocobase"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        10|botpress|BOTPRESS)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="botpress"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_botpress
                else
                    APP_ORION="ferramenta_botpress"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        11|wordpress|WORDPRESS)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_wordpress
                else
                    APP_ORION="ferramenta_wordpress"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            fi
            ;;
        12|baserow|BASEROW)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="baserow"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_baserow
                else
                    APP_ORION="ferramenta_baserow"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        13|mongodb|MONGODB)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="mongodb"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_mongodb
                else
                    APP_ORION="ferramenta_mongodb"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        14|rabbitmq|RABBITMQ)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="rabbitmq"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_rabbitmq
                else
                    APP_ORION="ferramenta_rabbitmq"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        15|uptimekuma|UPTIMEKUMA)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="uptimekuma"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_uptimekuma
                else
                    APP_ORION="ferramenta_uptimekuma"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        16|calcom|CALCOM)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="calcom"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_calcom
                else
                    APP_ORION="ferramenta_calcom"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        17|mautic|MAUTIC)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="mautic"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_mautic
                else
                    APP_ORION="ferramenta_mautic"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        18|appsmith|APPSMITH)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="appsmith"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_appsmith
                else
                    APP_ORION="ferramenta_appsmith"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        19|qdrant|QDRANT)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="qdrant"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_qdrant
                else
                    APP_ORION="ferramenta_qdrant"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        20|woofedcrm|WOOFEDCRM)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="woofedcrm"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_woofed
                else
                    APP_ORION="ferramenta_woofed"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        21|formbricks|FORMBRICKS)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="formbricks"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_formbricks
                else
                    APP_ORION="ferramenta_formbricks"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        22|nocodb|NOCODB)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="nocodb"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_nocodb
                else
                    APP_ORION="ferramenta_nocodb"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        23|langfuse|LANGFUSE)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="langfuse"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_langfuse
                else
                    APP_ORION="ferramenta_langfuse"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        24|metabase|METABASE)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="metabase"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_metabase
                else
                    APP_ORION="ferramenta_metabase"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        25|odoo|ODOO)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="odoo"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_odoo
                else
                    APP_ORION="ferramenta_odoo"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        26|chatwoot_nestor|CHATWOOT_NETOR)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="chatwoot_nestor"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_chatwoot_nestor
                else
                    APP_ORION="ferramenta_chatwoot_nestor"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        27|unoapi|UNOAPI)
            if verificar_docker_e_portainer_traefik && verificar_antes_se_tem_minio_e_rabbitmq_e_chatwoot; then

                ## INICIO TOKEN

                STACK_NAME="unoapi"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_unoapi
                else
                    APP_ORION="ferramenta_unoapi"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        28|n8n_quepasa|N8N_QUEPASA)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="n8n_quepasa"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_n8n_quepasa
                else
                    APP_ORION="ferramenta_n8n_quepasa"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        29|quepasa|QUEPASA)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="quepasa"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_quepasa
                else
                    APP_ORION="ferramenta_quepasa"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        30|docuseal|DOCUSEAL)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="docuseal"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_docuseal
                else
                    APP_ORION="ferramenta_docuseal"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        31|monitor|grafana|MONITOR|GRAFANA)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="monitor"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_monitor
                else
                    APP_ORION="ferramenta_monitor"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        32|dify|DIFY)
            if verificar_docker_e_portainer_traefik && verificar_antes_se_tem_minio; then

                ## INICIO TOKEN

                STACK_NAME="dify"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_dify
                else
                    APP_ORION="ferramenta_dify"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        33|ollama|OLLAMA)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="ollama"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_ollama
                else
                    APP_ORION="ferramenta_ollama"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        34|affine|AFFINE)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="affine"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_affine
                else
                    APP_ORION="ferramenta_affine"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        35|directus|DIRECTUS)
            if verificar_docker_e_portainer_traefik && verificar_antes_se_tem_minio; then

                ## INICIO TOKEN

                STACK_NAME="directus"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_directus
                else
                    APP_ORION="ferramenta_directus"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        36|vaultwarden|VAULTWARDEN)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="vaultwarden"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_vaultwarden
                else
                    APP_ORION="ferramenta_vaultwarden"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        37|nextcloud|NEXTCLOUD)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="nextcloud"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_nextcloud
                else
                    APP_ORION="ferramenta_nextcloud"
                    verificar_arquivo
                fi

                ## FIM TOKEN
            
            fi
            ;;
        38|strapi|STRAPI)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="strapi"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_strapi
                else
                    APP_ORION="ferramenta_strapi"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        39|phpmyadmin|pma|PHPMYADMIN|PMA)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="phpmyadmin"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_phpmyadmin
                else
                    APP_ORION="ferramenta_phpmyadmin"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        40|supabase|supa|SUPABASE|SUPA)
            if verificar_docker_e_portainer_traefik && verificar_antes_se_tem_minio; then

                ## INICIO TOKEN

                STACK_NAME="supabase"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_supabase
                else
                    APP_ORION="ferramenta_supabase"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            
            fi
            ;;
        41|ntfy|NTFY)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="ntfy"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_ntfy
                else
                    APP_ORION="ferramenta_ntfy"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            fi   
            ;;
        42|lowcoder|LOWCODER)
            if verificar_docker_e_portainer_traefik && verificar_antes_se_tem_mongo; then

                ## INICIO TOKEN

                STACK_NAME="lowcoder"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_lowcoder
                else
                    APP_ORION="ferramenta_lowcoder"
                    verificar_arquivo
                fi

                ## FIM TOKEN

            fi   
            ;;
        43|langflow|LANGFLOW)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="langflow"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_langflow
                else
                    APP_ORION="ferramenta_langflow"
                    ferramenta_langflow
                fi

                ## FIM TOKEN

            fi   
            ;;
        44|openproject|OPENPROJECT)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="openproject"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_openproject
                else
                    APP_ORION="ferramenta_openproject"
                    ferramenta_openproject
                fi

                ## FIM TOKEN

            fi   
            ;;
        45|zep|ZEP)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="zep"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_zep
                else
                    APP_ORION="ferramenta_zep"
                    ferramenta_zep
                fi

                ## FIM TOKEN

            fi   
            ;;
        46|humhub|HUMHUB) 
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="humhub"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_humhub
                else
                    APP_ORION="ferramenta_humhub"
                    ferramenta_humhub
                fi

                ## FIM TOKEN

            fi   
            ;;
        47|yourls|YOURLS) 
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="yourls"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_yourls
                else
                    APP_ORION="ferramenta_yourls"
                    ferramenta_yourls
                fi

                ## FIM TOKEN

            fi   
            ;;

        48|twentycrm|TWENTYCRM) 
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="twentycrm"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_twentycrm
                else
                    APP_ORION="ferramenta_twentycrm"
                    ferramenta_twentycrm
                fi

                ## FIM TOKEN

            fi   
            ;;

        49|mattermost|MATTERMOST) 
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="mattermost"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_mattermost
                else
                    APP_ORION="ferramenta_mattermost"
                    ferramenta_mattermost
                fi

                ## FIM TOKEN

            fi   
            ;;

        50|outline|OUTLINE) 
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="outline"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_outline
                else
                    APP_ORION="ferramenta_outline"
                    ferramenta_outline
                fi

                ## FIM TOKEN

            fi   
            ;;

        51|focalboard|FOCALBOARD) 
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="focalboard"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_focalboard
                else
                    APP_ORION="ferramenta_focalboard"
                    ferramenta_focalboard
                fi

                ## FIM TOKEN

            fi   
            ;;

        52|glpi|GLPI) 
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="glpi"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_glpi
                else
                    APP_ORION="ferramenta_glpi"
                    ferramenta_glpi
                fi

                ## FIM TOKEN

            fi   
            ;;

        53|anythingllm|anything|AnythingLLM|Anything) 
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="anythingllm"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_anythingllm
                else
                    APP_ORION="ferramenta_anythingllm"
                    ferramenta_anythingllm
                fi

                ## FIM TOKEN

            fi   
            ;;
        
        54|excalidraw|Excalidraw) 
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="excalidraw"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_excalidraw
                else
                    APP_ORION="ferramenta_excalidraw"
                    ferramenta_excalidraw
                fi

                ## FIM TOKEN

            fi   
            ;;

        55|easyappointments|EasyAppointments|Easy!Appointments|easy!appointments) 
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="easyappointments"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_easyappointments
                else
                    APP_ORION="ferramenta_easyappointments"
                    ferramenta_easyappointments
                fi

                ## FIM TOKEN

            fi   
            ;;

        56|documenso|Documenso) 
            if verificar_docker_e_portainer_traefik && verificar_antes_se_tem_minio; then

                ## INICIO TOKEN

                STACK_NAME="documenso"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_documenso
                else
                    APP_ORION="ferramenta_documenso"
                    ferramenta_documenso
                fi

                ## FIM TOKEN

            fi   
            ;;

        57|moodle|MOODLE) 
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="moodle"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_moodle
                else
                    APP_ORION="ferramenta_moodle"
                    ferramenta_moodle
                fi

                ## FIM TOKEN

            fi   
            ;;

        58|tooljet|TOOLJET) 
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="tooljet"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_tooljet
                else
                    APP_ORION="ferramenta_tooljet"
                    ferramenta_tooljet
                fi

                ## FIM TOKEN

            fi   
            ;;

        ##remover.stack)
        ##    if verificar_docker_e_portainer_traefik; then
        ##
        ##        ferramenta_remover_stack
        ##
        ##    fi   
        ##    ;;

        sair|fechar|exit|close|x)
            clear
            nome_saindo
            echo ""
            break
            ;;


## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

        mysql)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="mysql"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_mysql_setup
                else
                    APP_ORION="ferramenta_mysql_setup"
                    ferramenta_mysql_setup
                fi

                ## FIM TOKEN

            fi   
            ;;

        redis)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="redis"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_redis_setup
                else
                    APP_ORION="ferramenta_redis_setup"
                    ferramenta_redis_setup
                fi

                ## FIM TOKEN

            fi   
            ;;
        pgvector)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="pgvector"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_pgvector_setup
                else
                    APP_ORION="ferramenta_pgvector_setup"
                    ferramenta_pgvector_setup
                fi

                ## FIM TOKEN

            fi
            ;;
            

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
        
        evolution.v1)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="evolution_v1"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_evolution_v1
                else
                    APP_ORION="ferramenta_evolution_v1"
                    ferramenta_evolution_v1
                fi

                ## FIM TOKEN

            fi   
            ;;

        evolution.v2)
            if verificar_docker_e_portainer_traefik; then

                ## INICIO TOKEN

                STACK_NAME="evolution_v2"

                if grep -q "Token: .\+" /root/dados_vps/dados_portainer; then
                    ferramenta_evolution_v2
                else
                    APP_ORION="ferramenta_evolution_v2"
                    ferramenta_evolution_v2
                fi

                ## FIM TOKEN

            fi   
            ;;

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##

        ## Reiniciar portainer
        portainer.restart)
            portainer.restart
            ;;

        ## Redefinir senha do portainer
        portainer.reset)
            portainer.reset
            ;;

        ## Traduzir emails do Chatwoot
        chatwoot.mail)
            chatwoot.mail
            ;;

        ## Traduzir emails do Chatwoot N
        chatwoot.n.mail)
            chatwoot.n.mail
            ;;

        ## Desbloquear funções do Chatwoot
        chatwoot.nulled)
            chatwoot.nulled
            ;;

        ## Importar Workflows do Quepasa no N8N
        n8n.workflows)
            n8n.workflows
            ;;

        ## Corrigir imagem da stack do traefik para 2.11.2
        traefik.fix)
            traefik.fix    
            ;;

        ## Instalar CTOP
        ctop)
            ctop
            ;;

        ## Corrigir credenciais do portainer (para instalações)
        credencial.reset)
            criar_arquivo
            ;;

        quepasa.setup.off)
            quepasa.setup.off
            ;;

        quepasa.setup.on)
            quepasa.setup.on
            ;;

        p1|P1)
            menu_instalador="1"
            ;;

        p2|P2) menu_instalador="2"
            ;;

## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##
##                                           ANDROMEDA                                         ##
## // ## // ## // ## // ## // ## // ## // ## //## // ## // ## // ## // ## // ## // ## // ## // ##


        *)

            ;;
    esac
    echo ""
done
