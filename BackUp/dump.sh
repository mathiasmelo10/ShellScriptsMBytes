#Respaldo crontab de la base de datos 
		mysqldump -u administrator -padministrator prueba_proyecto > /bkp/bkp-mysqlDump/SCIdump.sql
		rsync -avh /bkp/bkp-mysqlDump/SCIdump.sql /bkp/bkp-mysqlDump/SCIdump.sql
		cp /home/admin/Operador/BackUp/dump.sh /home/admin/Operador/BackUp/dump1.sh
		mv /home/admin/Operador/BackUp/dump1.sh /bkp/bkp-mysqlDump
		#rsync opciones: 
		#-a Puede unirse con muchos otros comandos.
		# Eso significa que no solo copia los archivos, sino que también copia los permisos,
		# los tiempos de modificación y cualquier otra fecha. 

		# -v Te brinda una salida visual que muestra el progreso del proceso.