#!/bin/bash
backUpBD()
{
	echo "Bienvido al BackUp de la Base de Datos"
	echo "1- BackUp de la Base de Datos"
	echo "2 - Sincronizar cambios de la Base de Datos"
	echo "3 - Volver al menú Operador"
	echo "0 - Salir del Operador"
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
		sh /backUpBD/rsyncDump.sh

	;;
	3)
	menuPrincipalOperador
	;;
	0)
	read -p "Esta seguro que desea salir del operador ? s/S = SI | n/N = NO " opcionSalir
				case $opcionSalir in 
					s)
					break
					;;
					S)
					break
					;;
					n)
					echo "Hola de nuevo!"
					menuPrincipalOperador
					;;
					N)
					echo "Hola de nuevo!"
					menuPrincipalOperador
					;;
					*)
					echo No se ha seleccionado ninguna de las opciones anteriores
					;;
				esac
	;;
	*)
		echo "Selección del menu BackUp Base de Datos Incorrecta!!"
	;;
esac		
