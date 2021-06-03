#!/bin/bash
#
# decimo.sh - Nosso sexto programa em shell - Script de Backup Completo "
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

# BKPDIR - Local onde Sera armazenado os arquivos de Backup0
BKPDIR="/srv/backup/"
# FILEDIR - Local onde estao os arquivos de origem, que faremos backup
FILEDIR="/srv/samba/"
# 
LOGFILE="/var/log/backup.log"
# 
ERRORLOG="/var/log/backup_error.log"
# 
DATE=$(date +%d_%m_%Y)
#
FILENAME="/srv/backuptar_$DATE.tar.gz"
#
COMPACT="tar -cvzf $FILENAME $BKPDIR"
#
ADMIN="services@utah.com.br"
#
SENDUSER="root@utah.local"


echo -e "\n"
echo  "Iniciando o Script de Backup"
echo -e "\n"

verificar() {
if [ $? -eq 0 ]; then
	echo "Comando OK"
else
	echo "ERRO"
	mail_err
	exit 1
fi
}

mail() {
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de Backup" -a $LOGFILE -m "Segue"
}

mail_err() {
	sendEmail -f $SENDUSER -t $ADMIN -u "Mensagem de Erro no Backup" -a $ERROLOG -m "Segue"
}

rsync -avu $FILEDIR $BKPDIR > $LOGFILE 2> $ERRORLOG
verificar
mail

[ -f $COMPACT  ] || $COMPACT
verificar


exit 0
