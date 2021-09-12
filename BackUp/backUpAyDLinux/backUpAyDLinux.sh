#!/bin/bash
function backUpAyDLinux()
{
	echo "Bienvenido al BackUp de los Archivos y Directorios de Linux"
	echo "1- BackUp Manual de los Archivos y Directorios de Linux "
	echo "2 - BackUp Automatizado de los Archivos y Directorios de Linux"
	echo "3 - Volver al menú Operador"
	echo "0 - Salir del Operador"
}

function backUpAyDManual()
{
	echo "Submenu BackUp Manual"
	echo "1-Archivo passwd"
	echo "2-Directorio home"
	echo "3-Archivo gpasswd"
	echo "4-Archivo gshadow"
	echo "5-Configuración SSH"
	echo "6-Archivo squid"
	echo "7-Directorio mysql"
	echo "8-Directorio Zimbra"
	echo "9-Archivo shadow"
	echo "q-Init Script iptables"
	echo "w-Configuración iptables"
	echo "e-Archivo binario iptables"
	echo "r-Configuraciones de crontab"
	echo "t-Autenticaciones"
	echo "y-Mensajes del sistema"
	echo "u-Archivo de Sesiones"
	echo "i-Volver a menu backUpAyDLinux"
	echo "o-Volver a Operador"
	echo "0-Salir del Operador"
}

backUpAyDLinux
read -p "Seleccione una opción del menú Archivos y Directorios de Linux" opcionAyDLinux
case $opcionAyDLinux in 
	1)
		backUpAyDManual
		read -p "Seleccione una opción del menú BackUp Manual Archivos y Directorios Linux" opcionAyDLinuxManual
		case $opcionAyDLinuxManual in 
			1)
			#Archivo passwd
			;;
			2)
			#Directorio home
			;;
			3)
			#Archivo gpasswd
			;;
			4)
			#Archivo gshadow
			;;
			5)
			#Configuración SSH
			;;
			6)
			#Archivo squid
			;;
			7)
			#Directorio mysql
			;;
			8)
			#Directorio Zimbra
			;;
			9)
			#Archivo shadow
			;;
			q)
			#Init Script iptables
			;;
			w)
			#Configuración iptables
			;;
			e)
			#Archivo binario iptables
			;;
			r)
			#Configuraciones de crontab
			;;
			t)
			#Autenticaciones
			;;
			y)
			#Mensajes del sistema
			;;
			u)
			#Archivo de Sesiones
			;;
			i)
			#Volver a menu backUpAyDLinux
			;;
			o)
			#Volver a Operador
			;;
			0)
			#0-Salir del Operador
			;;
			*)
			echo "Selección del menu BackUp Manual de Archivos y Directorios de Linux Incorrecta!!"
		esac

