#!/bin/bash
#
# terceiro.sh - Nosso quinto programa em shell - Condicional " condicional casa "
#
# Homepage: hhtp://jacome.com.br
# Autor: Nilberto JÃcome Santos
# Mantenedor: Nilberto J. Santos
#
# ----------------------------------------------
#
# Este programa ira capturar o primeiro parametro passado depois do programa e ira
# armazenar na variavel $1, caso seja start, executara o trecho de comandos start, caso seja
# stop, executara o trecho do comando stop, caso seja status
#
# Exemplo de Execucao:
#
# $ ./quinto.sh start
# Bem vindo ao Programa Stronger
# Iniciando o programi
# ...
# .......
# ...........
# ...............
# Programa iniciado com sucesso
#
# Versao: 1.0
#
# COPYRIGHT: Este programa Ã© GPL


PID="/tmp/stronger.pid"
echo
echo "Bem viondo ao programa Stronger...."
echo
case $1 in
	start)
		echo
		echo "Iniciando o programa Stronger"
		echo ".... 25% "
		sleep 2s
		echo "............ 50% "
		sleep 2s
		echo "...................... 75%"
		sleep 2s
		echo "............................... 100%"
		touch $PID
		echo "Programa Stronger Iniciado com Sucesso"
		;;
	stop)
		echo
		echo "Parando Programa Stronger"
		echo ".... 25%"
		sleep 2s
		echo "............ 50%"
		sleep 2s
		echo "...................... 75%"
		sleep 2s
		echo "................................ 100%"
		rm $PID
		echo "Programa Stronger Parado com Sucesso"
		;;
	status)
		echo
		echo "Verificando status do Programa Stronger"
		echo ".... 25%"
		sleep 2s
		echo "............ 50%"
		sleep 2s
		echo "...................... 100% "
		if [ -f "$PID" ]; then
			echo "O programa esta em execucao"
		else
			echo "O Programa Stronger esta PARADO"
		fi
		;;
	*)
		echo "Por favor Digite ./quinto start | stop | status"
		;;
esac

exit 0
