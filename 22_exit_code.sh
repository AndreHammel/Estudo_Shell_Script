#!/bin/bash

ls /tmp/teste

echo "Script Executado"

ls /tmp/outroarquivo

RETURN_CODE=$?

echo "O codigo de retorno do ls foi $RETURN_CODE"
