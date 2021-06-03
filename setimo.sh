#!/bin/bash
#
# sexto.sh - Nosso sexto programa em shell - La�os While "
#
# Homepage: hhtp://jacome.com.br
# Autor: Nilberto Jacome Santos
# Mantenedor: Nilberto J. Santos
#
# ----------------------------------------------
#
# Este Programa ira verificar o valor da variavel NUMERO, enquanto o valor da variavel for menor que 10,
# ele ira mostrar a mensagem na tela que e menor que 10 e mostra o valor da variavel, quando o valor 
# atingir o programa sera finalizado
# Exemplo de Execucao:
#
# $ ./sexto.sh
#
# O valor da Variavel é 0, que é menor que 10.
# O valor da Variavel é 0, que é menor que 10.
#
# Versao: 1.0
#
# COPYRIGHT: Este programa é GPL

NUMERO="0"

echo
echo "Bem vindo ao Programa de Numeros"
echo

until [ $NUMERO -eq "10" ]; do
	echo "O Valor da variavel �: $NUMERO"
	echo "O $NUMERO e menor que 10"
	let NUMERO=$NUMERO+1 
done
echo	
echo "Deu Bom. $NUMERO e igual a 10"

exit 0
