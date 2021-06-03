#!/bin/bash

# segundo.sh - Nosso segundo programa em shell - Vari√°veis de Controle do Shell
#
# Homepage: hhtp://jacome.com.br
# Autor: Nilberto J√come Santos
# Mantenedor: Nilberto J. Santos
#
# ----------------------------------------------
#
# Este programa ira mostrar as principais variaveis de controle internas do shell, que podem ser
# usadas por outros programas a fim de obtermos alguma informa√ao.
#
# Exemplo de Execucao:
#
# $ ./segundo.sh
# $ ./segundo.sh linux
# O Valor da Variavel $1 √© linux
# $ ./segundo.sh linux windows
# O Valor da Variavel $1 √© linux
# O Valor da Variavel $2 √© windows
#
# Hist√rico de Versoes
#
# Vers√o: 1.0
#
# COPYRIGHT: Este programa √© GPL

echo "Bem Vindos! As vari√veis de controles internas do Shell"
echo
echo "A Variavel \$1 armazena o primeiro parametro passado depois do script, que foi: $1"
echo
echo "A Variavel \$2 armazena o segundo parametro passado depois do script, que foi: $2"
echo
echo "A Variavel \$3 armazena o terceiro parametro passado depois do script, que foi: $3"
echo
echo "A Variavel \$0 armazena o comando executado, que foi: $0"
echo
echo "A Variavel \$# armazena o numero parametro passado, que foi: $#"
echo
echo "A Variavel \$\$ ou \$@ armazena o numero PID do processo gerado na execu√ao do programa, que foi: $$"
echo
echo "A Variavel \$? ou \$@ armazena o valor de retorno do ultimo comando|programa executado, que foi: $?"







