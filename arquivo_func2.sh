#!/bin/bash

function removendo_tr {
	$(tr -d '[A-Z]' < $1 > /tmp/tr.txt)
	echo "/tmp/tr.txt"

}


function removendo_sed {
	$(sed 's/[0-9]//g' < $1 > /tmp/sed.txt)
	echo "/tmp/sed.txt"
}


function substituindo_awk {
	$(awk '{gsub(/[!@#$%¨&\ *\.\,\/\{\[\]\(\)\}]+/, "<?>" )}{print $0}' $1 > /tmp/sawk.txt)
	echo "/tmp/sawk.txt"
}



