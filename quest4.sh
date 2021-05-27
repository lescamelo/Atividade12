#!/bin/bash

source arquivo_func2.sh
echo -e "      MENU ESCOLHAS: \n" "RTR - Remover Todas Letras Maiúsculas\n" "RDI - Remover Todos os Digitos\n" "S? - Substituir Todos Caracteres Especiais por <?>" 

read -p "Informe a opção desejada: ? " opc
read -p "Informe o arquivo desejado ? " arquivo

if [ $opc == 'RTR' ]; 
then
       	$( removendo_tr $arquivo ) 
	cat test
elif [ $opc == 'RDI' ]; 
then
	$( removendo_sed $arquivo )
	cat test
	

elif [ $opc == 'S?' ]; 
then
	$( substituindo_awk $arquivo)
	cat test

fi
