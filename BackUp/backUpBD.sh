function backUpBD ()
{
	echo "Bienvido al BackUp de la Base de Datos"
	echo "1- BackUp Manual de la Base de Datos"
	echo "2 - BackUp Automatizado de la Base de Datos"
}


backUpBD
read -p "Seleccione una opción de BackUp de la Base de Datos: " opcionBackUpBD
case $opcionBackUpBD in 
	1)
		read -p "Nombre del archivo donde desea guardar la base de datos:" nombreDump
			if [ -d /var/lib/mysql/prueba_proyecto ];
			then
				mysqldump -u administrator -padministrator prueba_proyecto > $nombreDump
				gzip /var/lib/mysql/prueba_proyecto/$nombreDump
				mv /var/lib/mysql/prueba_proyecto/$nombreDump.gz /bkp/bkp-mysqlDump
				echo "Back Up Manual de la Base de Datos realizado con éxito !!"  
			else
				echo "La base de datos que usted escribió no existe o cambio su nombre"
			fi	
	;;
	2) 
		sh dump.sh

	;;
esac		