#!/bin/bash

source arquivo_func.sh

numero_maior=$(maior $(cat $1))
numero_menor=$(menor $(cat $1))


echo "Maior número informado: $numero_maior "
echo "Menor número informado: $numero_menor "
