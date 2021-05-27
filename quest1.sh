#!/bin/bash

function maior {
	
	numero=""
	for i in $*;
	do

		if [ -z $numero ];
		then
			numero=$(echo $i)
		fi
		if [ $numero -lt $i ];
		then
			numero=$(echo $i)
		fi

	done
	echo $numero

}

function menor {

	numero=""
	for i in $*;
	do

		if [ -z $numero ];
		then
			numero=$(echo $i)
		fi
		if [ $numero -gt $i ];
		then
			numero=$(echo $i)
		fi

	done
	echo $numero
}

read -p "Informe dois números: " num1 num2

num_maior=$( maior $num1 $num2 )

num_menor=$(menor  $num1 $num2 )

echo "O maior número informado é:  $num_maior"
echo "O menor número informado é: $num_menor"
