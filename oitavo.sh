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

ARQUIVOS='ls -l /etc/*.conf'

echo
echo "Bem vindo ao programa de lista de Confs"
for i in $(ls $ARQUIVOS); do
	echo "O arquivo $i foi encontrado no diretorio /etc/."
done

exit 0
