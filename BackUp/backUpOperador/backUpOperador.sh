#!/bin/bash
function backUpOperador()
{
	echo "Bienvido al BackUp del Operador"
	echo "1- BackUp Manual del Operador"
	echo "2 - BackUp Parcial del Operador"
	echo "3 - Volver al menú Operador"
	echo "0 - Salir del Operador"
}

backUpOperador
read -p "Seleccione una opción del menú BackUp Operador:" opcionBackUpOperador
case $opcionBackUpOperador in
	1)
	tar cvfz /bkp/bkp-SCI-$(date +%Y-%m-%d).tar.gz /home/admin/Operador
	mv /home/admin/Operador /bkp/bkp-Operador
	echo "Back Up Parcial del Operador realizado con éxito !!"
	;;
	2)
	sh backUpOperador/rsyncOperador.sh
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
	echo "Selección del menu BackUp Operador Incorrecta!!"
	;;
esac 