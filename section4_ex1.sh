#!/bin/bash

HORA=$(date +%H)

if [ $HORA -lt 12 -a $HORA -ge 6 ]
then
	echo "Bom dia!"
elif [ $HORA -gt 12 -a $HORA -lt 18 ]
then
	echo "Boa Tarde!"
else
	echo "Boa Noite"
fi
if [ $HORA -gt 0 -a $HORA -lt 12 ]
then
	ATUAL="AM"
else
	ATUAL="PM"
fi
echo "A hora atual é: $(date +%r) $ATUAL"



