function backUpAyDParcial()
{
	echo "***SUB MENÚ PARCIAL RSYNC***"
	echo "1-BACK UP PARCIAL RSYNC -- Archivo passwd"
	echo "2-BACK UP PARCIAL RSYNC -- Directorio home"
	echo "3-BACK UP PARCIAL RSYNC -- Archivo gpasswd"
	echo "4-BACK UP PARCIAL RSYNC -- Archivo gshadow"
	echo "5-BACK UP PARCIAL RSYNC -- Configuración SSH"
	echo "6-BACK UP PARCIAL RSYNC -- Archivo squid"
	echo "7-BACK UP PARCIAL RSYNC -- Directorio mysql"
	echo "8-BACK UP PARCIAL RSYNC -- Directorio Zimbra"
	echo "9-BACK UP PARCIAL RSYNC -- Archivo shadow"
	echo "q-BACK UP PARCIAL RSYNC -- Init Script iptables"
	echo "w-BACK UP PARCIAL RSYNC -- Configuración iptables"
	echo "e-BACK UP PARCIAL RSYNC -- Archivo binario iptables"
	echo "r-BACK UP PARCIAL RSYNC -- Configuraciones de crontab"
	echo "t-BACK UP PARCIAL RSYNC -- Autenticaciones"
	echo "y-BACK UP PARCIAL RSYNC -- Mensajes del sistema"
	echo "u-BACK UP PARCIAL RSYNC -- Archivo de Sesiones"
	echo "i-Volver a menu backUpAyDLinux"
	echo "o-Volver a Operador"
	echo "0-Salir del Operador"
}
backUpAyDParcial
read -p "Seleccione una opción del menú BackUp Parcial Archivos y Directorios Linux" opcionAyDLinuxParcial
		case $opcionAyDLinuxParcial in 
			1)
			#Archivo passwd
			rsync -avh /etc/passwd /bkp/bkpAyDLinux/bkpPasswd
			echo "BackUp Parcial de Archivo Passwd realizado con éxito!!"
			;;
			2)
			#Directorio home 
			rsync -avh /home /bkp/bkpAyDLinux/bkpHomeDir
			echo "BackUp Parcial del Directorio Home realizado con éxito!!"  
			;;
			3)
			#Archivo gpasswd
			rsync -avh /etc/gpasswd /bkp/bkpAyDLinux/bkpGpasswd
			echo "BackUp Parcial de Archivo Gpasswd realizado con éxito!!"
			;;
			4)
			#Archivo gshadow
			rsync -avh /etc/gshadow /bkp/bkpAyDLinux/bkpGshadow
			echo "BackUp Parcial de Archivo Gshadow realizado con éxito!!" 
			;;
			5)
			#Configuración SSH
			rsync -avh /etc/ssh/sshd /bkp/bkpAyDLinux/bkpSshd
			echo "BackUp Parcial de la Configuración del SSH realizado con éxito!!"
			;;
			6)
			#Archivo squid
			rsync -avh /etc/squid /bkp/bkpAyDLinux/bkpSquid
			echo "BackUp Parcial de Archivo Squid realizado con éxito!!"
			;;
			7)
			#Directorio mysql
			rsyn -avh /var/lib/mysql /bkp/bkpAyDLinux/bkpMysqlDir
			echo "BackUp Parcial de Directorio Mysql realizado con éxito!!"
			;;
			8)
			#Directorio Zimbra
			;;
			9)
			#Archivo shadow
			rsync -avh /etc/shadow /bkp/bkpAyDLinux/bkpShadow
			echo "BackUp Parcial de Archivo Shadow realizado con éxito!!"
			;;
			q)
			#Init Script iptables
			rsync -avh /etc/init.d/iptables /bkp/bkpAyDLinux/bkpIptablesScript
			echo "BackUp Parcial del Script Iptables realizado con éxito!!"
			;;
			w)
			#Configuración iptables
			rsync -avh /etc/sysconfing/iptables /bkp/bkpAyDLinux/bkpIptablesCfg
			echo "BackUp Parcial de la Configuración del Iptables realizado con éxito!!"
			;;
			e)
			#Archivo binario iptables
			rsync -avh /sbin/iptables /bkp/bkpAyDLinux/bkpIptablesBin
			echo "BackUp Parcial de Archivo Binario Iptables realizado con éxito!!"
			;;
			r)
			#Configuraciones de crontab
			rsync -avh /var/log/cron /bkp/bkpAyDLinux/bkpCron
			echo "BackUp Parcial de las Configuraciónes Crontab realizado con éxito!!"
			;;
			t)
			#Autenticaciones
			rsync -avh /var/log/secure /bkp/bkpAyDLinux/bkpSecure
			echo "BackUp Parcial de las Autenticaciones realizado con éxito!!"
			;;
			y)
			#Mensajes del sistema
			rsync -avh /var/log/messages /bkp/bkpAyDLinux/bkpMessages
			echo "BackUp Parcial de los Mensajes del Sistema realizado con éxito!!"
			;;
			u)
			#Archivo de Sesiones que las muestra en lenguaje humano con el comando last
			rsync -avh /var/log/wtmp /bkp/bkpAyDLinux/bkpWtmp
			echo "BackUp Parcial de Archivo de Sesiones realizado con éxito!!"
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
			echo "Selección del menu BackUp Parcial de Archivos y Directorios de Linux Incorrecta!!"
			;;
		esac
	;;
