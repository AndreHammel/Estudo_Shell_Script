#!/bin/bash
# BuscaAlunos.sh

clear
ARQALUNOS="/home/ubuntu/Estudo_Shell_Script/alunos.txt"
echo "====== Script de Busca de Alunos ======="
echo ""

# Forma 1 de fazer o read
#echo -n "Por favor, informe o nome do aluno: "
#read ALUNO

# Forma 2 de fazer o read
read -p "Por favor, informe o nome do Aluno: " ALUNO

ALUNOCOMPLETO=$(sort $ARQALUNOS |uniq |grep "$ALUNO" )

echo ""
echo "O nome completo do aluno é : $ALUNOCOMPLETO"
echo ""
echo "Fim do Script"


