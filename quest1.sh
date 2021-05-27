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
read -p "Informe dois números: " num1 num2
maior $num1 $num2

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
menor $num1 $num2
