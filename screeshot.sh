#!/bin/bash

# TheZakMan    [ 03/09/2015 16:42:19 ]  
# https://github.com/thezakman/Pasties

# ------------------------------------------------------------------------
# Script para me salvar tempo exportando screenshot
# -------------------------------------------------------------------------

# [>]Como usar: "screenshot"


amarelo='\033[1;33m' # Amarelo
SemCor='\033[0m' # Sem Cor

# ---------------------------- # confirma se o curl & scrot estam instalados na maquina
if test -e /usr/bin/scrot ; then
    echo -e "\n['o] *Flash!*" >&2
else
    echo "Dependencia faltando: apt-get install scrot" >&2      
    apt-get install scrot -y
    exit 1
    fi


if test -e /usr/bin/curl ; then
    echo "_______________________" >&2
else
    echo "Dependencia faltando: apt-get install curl" >&2      
    apt-get install curl -y
    exit 1
    fi

# ------------------------------# Exec

echo -e "${amarelo}[>]Uploading Screenshot...${SemCor}" ;
scrot -e 'curl -F "clbin=@$f" https://clbin.com' >&2
#xdg-open
