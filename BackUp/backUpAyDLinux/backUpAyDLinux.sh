#!/bin/bash
function backUpAyDLinux()
{
	echo "Bienvenido al BackUp de los Archivos y Directorios de Linux"
	echo "1- BackUp Manual de los Archivos y Directorios de Linux "
	echo "2 - BackUp Parcial de los Archivos y Directorios de Linux"
	echo "3 - Volver al menú Operador"
	echo "0 - Salir del Operador"
}

function backUpAyDManual()
{
	echo "***SUB MENÚ MANUAL ASISTIDO***"
	echo "1-BACK UP MANUAL ASISTIDO -- Archivo passwd"
	echo "2-BACK UP MANUAL ASISTIDO -- Directorio home"
	echo "3-BACK UP MANUAL ASISTIDO -- Archivo gpasswd"
	echo "4-BACK UP MANUAL ASISTIDO -- Archivo gshadow"
	echo "5-BACK UP MANUAL ASISTIDO -- Configuración SSH"
	echo "6-BACK UP MANUAL ASISTIDO -- Archivo squid"
	echo "7-BACK UP MANUAL ASISTIDO -- Directorio mysql"
	echo "8-BACK UP MANUAL ASISTIDO -- Directorio Zimbra"
	echo "9-BACK UP MANUAL ASISTIDO -- Archivo shadow"
	echo "q-BACK UP MANUAL ASISTIDO -- Init Script iptables"
	echo "w-BACK UP MANUAL ASISTIDO -- Configuración iptables"
	echo "e-BACK UP MANUAL ASISTIDO -- Archivo binario iptables"
	echo "r-BACK UP MANUAL ASISTIDO -- Configuraciones de crontab"
	echo "t-BACK UP MANUAL ASISTIDO -- Autenticaciones"
	echo "y-BACK UP MANUAL ASISTIDO -- Mensajes del sistema"
	echo "u-BACK UP MANUAL ASISTIDO -- Archivo de Sesiones"
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
			cp /etc/passwd /etc/passwdBkp
			gzip /etc/passwdBkp
			mv /etc/passwdBkp.gz /bkp/bkpAyDLinux/bkpPasswd
			echo "BackUp Manual de Archivo Passwd realizado con éxito!!"
			;;
			2)
			#Directorio home 
			tar cvfz /bkp/bkpAyDLinux/bkpHomeTar$(date +%Y-%m-%d).tar.gz /home
			mv /bkp/bkpAyDLinux/bkpHomeTar.tar.gz /bkp/bkpAyDLinux/bkpHomeDir
			echo "BackUp Manual del Directorio Home realizado con éxito!!"  
			;;
			3)
			#Archivo gpasswd
			cp /etc/gpasswd /etc/gpasswdBkp
			gzip /etc/gpasswdBkp
			mv /etc/gpasswdBkp.gz /bkp/bkpAyDLinux/bkpGpasswd
			echo "BackUp Manual de Archivo Gpasswd realizado con éxito!!"
			;;
			4)
			#Archivo gshadow
			cp /etc/gshadow /etc/gshadowBkp
			gzip /etc/gshadowBkp
			mv /etc/gshadowBkp.gz /bkp/bkpAyDLinux/bkpGshadow
			echo "BackUp Manual de Archivo Gshadow realizado con éxito!!" 
			;;
			5)
			#Configuración SSH
			cp /etc/ssh/sshd /etc/sshdBkp
			gzip /etc/sshdBkp
			mv /etc/sshdBkp.gz /bkp/bkpAyDLinux/bkpSshd
			echo "BackUp Manual de la Configuración del SSH realizado con éxito!!"
			;;
			6)
			#Archivo squid
			cp /etc/squid /etc/squidBkp
			gzip /etc/squidBkp
			mv /etc/squidBkp.gz /bkp/bkpAyDLinux/bkpSquid
			echo "BackUp Manual de Archivo Squid realizado con éxito!!"
			;;
			7)
			#Directorio mysql
			tar cvfz /bkp/bkpAyDLinux/bkpMysqlTar$(date +%Y-%m-%d).tar.gz /var/lib/mysql
			mv /bkp/bkpAyDLinux/bkpMysqlTar.tar.gz /bkp/bkpAyDLinux/bkpMysqlDir
			echo "BackUp Manual de Directorio Mysql realizado con éxito!!"
			;;
			8)
			#Directorio Zimbra
			;;
			9)
			#Archivo shadow
			cp /etc/shadow /etc/shadowBkp
			gzip /etc/shadowBkp
			mv /etc/shadowBkp.gz /bkp/bkpAyDLinux/bkpShadow
			echo "BackUp Manual de Archivo Shadow realizado con éxito!!"
			;;
			q)
			#Init Script iptables
			cp /etc/init.d/iptables /etc/init.d/iptablesScriptBkp
			gzip /etc/iptablesScriptBkp
			mv /etc/iptablesScriptBkp.gz /bkp/bkpAyDLinux/bkpIptablesScript
			echo "BackUp Manual del Script Iptables realizado con éxito!!"
			;;
			w)
			#Configuración iptables
			cp /etc/sysconfing/iptables /etc/sysconfig/iptablesCfgBkp
			gzip /etc/iptablesCfgBkp
			mv /etc/iptablesCfgBkp.gz /bkp/bkpAyDLinux/bkpIptablesCfg
			echo "BackUp Manual de la Configuración del Iptables realizado con éxito!!"
			;;
			e)
			#Archivo binario iptables
			cp /sbin/iptables /sbin/iptablesBinBkp
			gzip /etc/iptablesBinBkp
			mv /etc/iptablesBinBkp.gz /bkp/bkpAyDLinux/bkpIptablesBin
			echo "BackUp Manual de Archivo Binario Iptables realizado con éxito!!"
			;;
			r)
			#Configuraciones de crontab
			cp /var/log/cron /var/log/cronBkp
			gzip /var/log/cronBkp
			mv /var/log/cronBkp.gz /bkp/bkpAyDLinux/bkpCron
			echo "BackUp Manual de las Configuraciónes Crontab realizado con éxito!!"
			;;
			t)
			#Autenticaciones
			cp /var/log/secure /var/log/secureBkp
			gzip /var/log/secureBkp
			mv /var/log/secureBkp.gz /bkp/bkpAyDLinux/bkpSecure
			echo "BackUp Manual de las Autenticaciones realizado con éxito!!"
			;;
			y)
			#Mensajes del sistema
			cp /var/log/messages /var/log/messagesBkp
			gzip /var/log/messagesBkp
			mv /var/log/messagesBkp.gz /bkp/bkpAyDLinux/bkpMessages
			echo "BackUp Manual de los Mensajes del Sistema realizado con éxito!!"
			;;
			u)
			#Archivo de Sesiones que las muestra en lenguaje humano con el comando last
			cp /var/log/wtmp /var/log/wtmpBkp
			gzip /var/log/wtmpBkp
			mv /var/log/wtmpBkp.gz /bkp/bkpAyDLinux/bkpWtmp
			echo "BackUp Manual de Archivo de Sesiones realizado con éxito!!"
			;;
			i)
			#Volver a menu backUpAyDLinux
			backUpAyDLinux
			echo "Volviendo al menú BackUp de Archivos y Directorios de Linux"
			;;
			o)
			#Volver a Operador
			operador
			echo "Volviendo al Operador"
			;;
			0)
			#0-Salir del Operador
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
					echo "No se ha seleccionado ninguna de las opciones anteriores"
					;;
				esac
			;;
			*)
			echo "Selección del menu BackUp Manual de Archivos y Directorios de Linux Incorrecta!!"
			;;
		esac
	;;
	2)	
	sh rsyncAyDLinux.sh
	;;
	3)
	operador
	echo "Volviendo al Operador"
	;;
	0)
	#0-Salir del Operador
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
			echo "No se ha seleccionado ninguna de las opciones anteriores"
			;;
		esac
		;;
	*)
	echo "Selección del menu BackUp de Archivos y Directorios de Linux Incorrecta!!"
	;;
esac		
