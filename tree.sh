#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
GRAMMAR_PATH=""
INIT_RULE=""
ANTLR_PATH="$SCRIPT_DIR/antlr/antlr-4.13.2-complete.jar"
INPUT_FILE=""

if [ -z "$1" ]; then
    echo "Erro: especifique o caminho da gramatica"    
    echo "./tree.sh <gramatica> <regra-inicial> <input.txt>?"
    exit 1
fi
echo "$1"
GRAMMAR_PATH="$SCRIPT_DIR/python/$1"
echo "$GRAMMAR_PATH"

if [ -e "$GRAMMAR_PATH" ]; then
    :
else
    echo "Erro: a gramatica $GRAMMAR_PATH não existe"
    exit 1
fi

if [ -z "$2" ]; then
    echo "Erro: especifique a regra inicial"
    echo "./tree.sh <gramatica> <regra-inicial>"
    exit 2
fi

INIT_RULE=$2


if [ -z "$3" ]; then
    :
else
    INPUT_FILE="$SCRIPT_DIR/python/$3"
    if [ -e "$INPUT_FILE" ]; then
        :
    else
        echo "Erro: o arquivo $INPUT_FILE não existe"
        echo "Confira se ele está no diretorio python"
        exit 3
    fi
fi



antlr4-parse $GRAMMAR_PATH $INIT_RULE -gui $INPUT_FILE 

