#!/bin/bash
#
# terceiro.sh - Nosso terceiro programa em shell - Condicional " If then else "
#
# Homepage: hhtp://jacome.com.br
# Autor: Nilberto J√come Santos
# Mantenedor: Nilberto J. Santos
#
# ----------------------------------------------
#
# Este programa ira capturar o primeiro parametro digitado, ira armazenar na variavel $1 e ira
# comparar com o valor da variavel SEGREDO. Se o valor
#
# Exemplo de Execucao:
#
# $ ./terceiro.sh utah
# Meus Parabens! Voc√™ acertou o segredo, voce 
# Hist√rico de Versoes
#
# Vers√o: 1.0
#
# COPYRIGHT: Este programa √© GPL

SEGREDO="utah"

echo
echo "Bem vindo ao Detector de Segredos"
echo
echo "Por Favor digite o segredo:"
# read ira ler o que o user digitou e ira armazenar na variavel DIGITADO
read DIGITADO

if [ "$SEGREDO" == "$DIGITADO" ]; then
	echo "Mesu Parabens, voc√ acertou o segredo, voc√ esta na mnelhor em Linux do Brasil"
	echo 
else
	echo "ERRO. Esta perdendo o seu Tempo na $DIGITADO"
	echo
fi
