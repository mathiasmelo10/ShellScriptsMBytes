#!/bin/bash
#Respaldo crontab de la base de datos 
		mysqldump -u administrator -padministrator prueba_proyecto > /bkp/bkp-mysqlDump/SCIdump.sql
		rsync -avh /bkp/bkp-mysqlDump/SCIdump.sql /bkp/bkp-mysqlDump/SCIdump.sql
		#Backup del Script rsyncDump.sh
		cp /home/admin/Operador/BackUp/rsyncDump.sh /home/admin/Operador/BackUp/rsyncDump1.sh 
		mv /home/admin/Operador/BackUp/rsyncDump1.sh /bkp/bkp-mysqlDump
		echo "BackUp Parcial de la Base de Datos realizado con éxito!"
		#rsync opciones: 
		#-a Puede unirse con muchos otros comandos.
		# Eso significa que no solo copia los archivos, sino que también copia los permisos,
		# los tiempos de modificación y cualquier otra fecha. 

		# -v Te brinda una salida visual que muestra el progreso del proceso.