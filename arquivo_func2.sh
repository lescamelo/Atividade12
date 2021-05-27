#!/bin/bash

function removendo_tr {
	$(tr -d '[A-Z]' < $1 > test)
	echo "test"

}


function removendo_sed {
	$(sed 's/[0-9]//g' < $1 > test)
	echo "test"
}


function substituindo_awk {
	$(awk '{gsub(/[!@#$%¨&\ *\.\,\/\{\[\]\(\)\}]+/, "<?>" )}{print $0}' $1 > test)
	echo "test"
}



