#!/bin/bash

read -p "Informe o IP:" ip

function ping_test {
	ping -c 1 $ip &> /dev/null
	if [ $? -gt 0 ];
	then
		echo "FALHA"
	else
		echo "OK"
	fi
}

echo $( ping_test )
