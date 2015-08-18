#!/bin/bash

# TheZakMan    [ 18/08/2015 04:01:11 ]  
# https://github.com/thezakman/Pasties

# ------------------------------------------------------------------------
# Script para me salvar tempo exportando code/text para o clbin
# -------------------------------------------------------------------------

# [>]Como usar: "cat arquivo | clbin" ou "echo -e "teste" | clbin"


amarelo='\033[1;33m' # Amarelo
SemCor='\033[0m' # Sem Cor

# ---------------------------- # confirma se o netcat foi instalado na maquina

if test -e /bin/netcat ; then
    echo "____________________" >&2
else
    echo "Dependencia faltando: apt-get install netcat" >&2      
    apt-get install netcat -y
    exit 1
    fi

# ------------------------------# Exec

echo -e "${amarelo}[>]Gerando o link...${SemCor}" ; curl -F 'clbin=<-' https://clbin.com 
