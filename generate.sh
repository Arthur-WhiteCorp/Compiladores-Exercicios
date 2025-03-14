#!/bin/bash

SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd)
ANTLR_PATH="$SCRIPT_DIR/antlr/antlr-4.13.2-complete.jar"
VISITOR_LISTENER=""
DEST_LANG="Python3"
GRAMMAR_PATH=""


if [ -z "$1" ]; then
    echo "deve passar como argumento o nome da gramatica"
    echo "./generate.sh <gramatica> <listener|visitor>"
    exit 1
fi

GRAMMAR_PATH="$SCRIPT_DIR/python/$1"

if [ -e "$GRAMMAR_PATH" ]; then
    :
else
    echo "gramatica $GRAMMAR_PATH nao encontrada"
    exit 1
fi

if [ -z "$2" ]; then
    echo "deve passar como argumento se quer gerar um listener ou visitor"
    echo "./generate.sh <gramatica> <listener|visitor>"
    exit 2
fi

if [ "$2" != "listener" ] && [ "$2" != "visitor" ]; then
    echo "segundo argumento não reconhecido"
    echo "./generate.sh <gramatica> <listener|visitor>"
    exit 2
fi



if [ "$2" == "listener" ]; then
    VISITOR_LISTENER="-no-visitor -listener"
else
    VISITOR_LISTENER="-no-listener -visitor"
fi



java -jar $ANTLR_PATH -Dlanguage=$DEST_LANG $VISITOR_LISTENER $GRAMMAR_PATH 

