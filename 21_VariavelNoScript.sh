#!/bin/bash

clear

DATAHORA=$(date +%H:%M )
ARQALUNOS="/home/ubuntu/Estudo_Shell_Script/alunos.txt"
echo "===== Meu Primeiro Script ====="
echo ""
echo  "Exibir data e hora atual: '$DATAHORA' "
echo "+++++++++++++++++++++++++++++++"
echo "Listagem dos alunos: "
sort $ARQALUNOS


