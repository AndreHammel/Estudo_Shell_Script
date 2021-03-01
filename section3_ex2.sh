#!/bin/bash
clear

KERNEL=$(uname -r)
HOSTNAME=$(hostname)
HORADEATIVACAO=$(uptime -s)

CPUNO=$(cat /proc/cpuinfo | grep "model name" |wc -l)
CPUMODEL=$(cat /proc/cpuinfo | grep "model name"|head -n1|cut -c14-)
MEMTOTAL=$(expr $(cat /proc/meminfo | grep "MemTotal" |tr -d ' '|cut -d: -f2| tr -d kB) / 1024) # em MB
FILESYS=$(df -h|egrep -v '(tmpfs|udev)')

echo "========================================================"
echo "Relatório da Máquina: $HOSTNAME"
echo "Data/Hora: $(date)"
echo "========================================================"
echo ""
echo "Máquina Ativa desde: $HORADEATIVACAO"
echo ""
echo "Versão do Kernel: $KERNEL"
echo ""
echo "CPUs:"
echo "Quantidade de CPU/Core: $CPUNO"
echo "Modelo da CPU: $CPUMODEL"
echo ""
echo "Memória Total: $MEMTOTAL MB"
echo ""
echo "Partições: "
echo "$FILESYS"
echo ""
echo "========================================================"
