#!/bin/bash
function backUpEns33()
{
	echo "Bienvido al BackUp de la Configuración de Red"
	echo "1- BackUp Manual de la Configuración de Red"
	echo "2 - BackUp Parcial de la Configuración de Red"
	echo "3 - Volver al menú Operador"
	echo "0 - Salir del Operador"
}
backUpEns33
read -p "Seleccione una opción del menú BackUp de la Configuración de Red :" opcionBackUpCfgRed
case $opcionBackUpCfgRed in 
	cp /etc/sysconfig/network-scripts/ifcfg-ens33 /etc/sysconfig/network-scripts/ifcfg-ens331
	mv /etc/sysconfig/network-scripts/ifcfg-ens331
	1) /etc/sysconfig/network-scripts/BackUp-SCI-ens33  
	gzip /etc/sysconfig/network-scripts/BackUp-SCI-ens33
	mv /etc/sysconfig/network-scripts/BackUp-SCI-ens33.gz /bkp/bkp-ens33
	echo "Back Up Parcial de la Configuración de Red realizado con éxito !!"
	;;
	2)
	sh backUpEns33/rsyncEns33.sh
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
					echo Hola de nuevo!
					menuPrincipalOperador
					;;
					N)
					echo Hola de nuevo!
					menuPrincipalOperador
					;;
					*)
					echo No se ha seleccionado ninguna de las opciones anteriores
					;;
				esac
	;;
	*)
	echo "Selección del menu BackUp Configuración de Red Incorrecta!!"
	;;
esac