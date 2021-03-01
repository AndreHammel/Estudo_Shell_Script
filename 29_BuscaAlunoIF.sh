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
#read -p "Por favor, informe o nome do Aluno: " ALUNO

if [ $# -gt 0 ]
then
	ALUNOCOMPLETO=$(sort $ARQALUNOS |uniq |grep "$1" )
	echo "O nome completo do aluno é : "$ALUNOCOMPLETO""
else
	echo "Informe o nome do aluno como parâmetro!"
fi

echo
echo "Fim do Script"


