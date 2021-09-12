#!/bin/bash
function backup()
{
	echo "Bienvenido al Menú de Back Up"
	echo "1- Back Up de Archivos"
	echo "2-Back Up de la Base de Datos"   
	echo "3-Back Up de la Configuración de Red" #Hecho
	echo "4-Back Up del Operador" #Hecho
	echo "5-Volver a Menú Operador"
}
backup

read -p "Seleccione una opción de Back Up: " opcionBackUp
		case $opcionBackUp in 
			1) 
			sh backUpAyDLinux/backUpAyDLinux.sh
			;;
			2)
			sh backUpBD/backUpBD.sh
			;;
			3)
			sh backUpEns33/backUpEns33.sh
			;;
			4) 
			sh backUpOperador/backUpOperador.sh
			;;
			5)
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
			echo No se ha seleccionado ninguna de las opciones anteriores
			;; 
		esac	