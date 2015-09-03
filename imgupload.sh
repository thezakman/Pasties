#!/bin/bash

# TheZakMan    [ 03/09/2015 16:42:19 ]  
# https://github.com/thezakman/Pasties

# ------------------------------------------------------------------------
# Script para me salvar tempo compartilhando imagens
# -------------------------------------------------------------------------

# [>]Como usar: "screenshot"

azul='\033[1;34m' # Azul Claro
amarelo='\033[1;33m' # Amarelo
SemCor='\033[0m' # Sem Cor

# ---------------------------- # confirma se o netcat foi instalado na maquina

if test -e /usr/bin/curl ; then
    echo -en "${azul}[File name:]${SemCor} "
    read -e FILE 
    echo "_______________________" >&2
else
    echo "Dependencia faltando: apt-get install curl" >&2      
    apt-get install netcat -y
    exit 1
    fi

# ------------------------------# Exec


echo -e "${amarelo}[>]Uploading Image...${SemCor}" ; curl -F 'clbin=@'$FILE https://clbin.com
notify-send "Upload complete
