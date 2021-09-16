#!/bin/bash
#Sincronizar cambios de la base de datos 
		rm /bkp/bkp-mysqlDumpIncremental2
		mv bkp/bkp-mysqlDumpIncremental1 bkp/bkp-mysqlDumpIncremental2
		mv bkp/bkp-mysqlDumpIncremental bkp/bkp-mysqlDumpIncremental1
		mysqldump -u root -padmin.root prueba_proyecto > /bkp/bkp-mysqlDumpIncremental/SCIdumpIncremental.sql
		rsync -avh /bkp/bkp-mysqlDump/SCIdump.sql /bkp/bkp-mysqlDumpIncremental/SCIdumpIncremental.sql
		#Backup del Script rsyncDump.sh
		cp /home/admin/Operador/BackUp/rsyncDump.sh /home/admin/Operador/BackUp/rsyncDump1.sh 
		mv /home/admin/Operador/BackUp/rsyncDump1.sh /bkp/bkp-mysqlDump
		echo "Cambios sincronizados de la Base de Datos realizado con éxito!"
		#rsync opciones: 
		#-a Puede unirse con muchos otros comandos.
		# Eso significa que no solo copia los archivos, sino que también copia los permisos,
		# los tiempos de modificación y cualquier otra fecha. 

		# -v Te brinda una salida visual que muestra el progreso del proceso.
