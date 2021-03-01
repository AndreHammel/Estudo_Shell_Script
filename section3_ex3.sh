#!/bin/bash

ls /home/$1 > /dev/null 2>&1 || { echo "Usuário Inexistente" ; exit 1; }

USERID=$(cat /etc/passwd | grep $1 | cut -d":" -f3)
DESC=$(cat /etc/passwd |grep $1 | cut -d":" -f5 | tr -d ,)
USOHOME=$(du -sh /home/$1 | cut -f1)


echo "============================================================="
echo "Relatório do Usuário: $1"
echo
echo "UID: $USERID "
echo "Nome ou Descrição: $DESC "
echo
echo "Total Usaso no /home/$1: $USOHOME "
echo
echo "Ultimo Login:"
lastlog -u $1
echo "============================================================"
exit 0
