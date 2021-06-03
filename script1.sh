#!/bin/bash
#
# script1.sh - Emula√ao do Comando seq em Bash
# O comando seq recebe 2 dis numeros e mostra na ssaida padrao todos os numero.
# existentes entre eles, numa sequencia pronta para ser usada pelo comando FOR.
# Caso omitido o numero inicial, e utilizado 1.
# 

o=+ 
a=1 
z=${1:-1} 

[ "$2" ] && { 
	a=$1; 
	z=$2; 
}  

[ $a -gt $z  ] && o=-

while [ $a -ne $z  ]; do 
	echo $a 
       	eval "a=\$((a$o 1))"
        sleep 1s	
done 

echo $a
