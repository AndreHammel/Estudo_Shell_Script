#!/bin/bash
clear
read -p "Informe o primeiro numero: " NUM1
read -p "Informe o segundo numero : " NUM2

SUM=$((NUM1 + NUM2))

echo "A soma dos dois numeros foi: $SUM"
echo "A soma dos dois numeros foi: $(expr $NUM1 + $NUM2)"
