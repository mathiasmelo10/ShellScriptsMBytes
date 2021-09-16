sincronizarCambiosAyD()
{
	echo "***SUB MENÚ RSYNC***"
	echo "1-SINCRONIZAR RSYNC -- Archivo passwd"
	echo "2-SINCRONIZAR RSYNC -- Directorio home"
	echo "3-SINCRONIZAR RSYNC -- Archivo gpasswd"
	echo "4-SINCRONIZAR RSYNC -- Archivo gshadow"
	echo "5-SINCRONIZAR RSYNC -- Configuración SSH"
	echo "6-SINCRONIZAR RSYNC -- Archivo squid"
	echo "7-SINCRONIZAR RSYNC -- Directorio mysql"
	echo "8-SINCRONIZAR RSYNC -- Directorio Zimbra"
	echo "9-SINCRONIZAR RSYNC -- Archivo shadow"
	echo "q-SINCRIONIZAR RSYNC -- Init Script iptables"
	echo "w-SINCRONIZAR RSYNC -- Configuración iptables"
	echo "e-SINCRONIZAR RSYNC -- Archivo binario iptables"
	echo "r-SINCRONIZAR RSYNC -- Configuraciones de crontab"
	echo "t-SINCRONIZAR RSYNC -- Autenticaciones"
	echo "y-SINCRONIZAR RSYNC -- Mensajes del sistema"
	echo "u-SINCRONIZAR RSYNC -- Archivo de Sesiones"
	echo "i-Volver a menu backUpAyDLinux"
	echo "o-Volver a Operador"
	echo "0-Salir del Operador"
}
sincronizarCambiosAyD
read -p "Seleccione una opción del menú BackUp Parcial Archivos y Directorios Linux" opcionAyDLinuxParcial
		case $opcionAyDLinuxParcial in 
			1)
			#Archivo passwd
			rsync -avh /etc/passwd /bkp/bkpAyDLinux/bkpPasswd
			echo "Cambios sincronizados de Archivo Passwd realizado con éxito!!"
			;;
			2)
			#Directorio home 
			rsync -avh /home /bkp/bkpAyDLinux/bkpHomeDir
			echo "Cambios sincronizados del Directorio Home realizado con éxito!!"  
			;;
			3)
			#Archivo gpasswd
			rsync -avh /etc/gpasswd /bkp/bkpAyDLinux/bkpGpasswd
			echo "Cambios sincronizados de Archivo Gpasswd realizado con éxito!!"
			;;
			4)
			#Archivo gshadow
			rsync -avh /etc/gshadow /bkp/bkpAyDLinux/bkpGshadow
			echo "Cambios sincronizados de Archivo Gshadow realizado con éxito!!" 
			;;
			5)
			#Configuración SSH
			rsync -avh /etc/ssh/sshd /bkp/bkpAyDLinux/bkpSshd
			echo "cambios sincronizados de la Configuración del SSH realizado con éxito!!"
			;;
			6)
			#Archivo squid
			rsync -avh /etc/squid /bkp/bkpAyDLinux/bkpSquid
			echo "Cambios sincronizados de Archivo Squid realizado con éxito!!"
			;;
			7)
			#Directorio mysql
			rsyn -avh /var/lib/mysql /bkp/bkpAyDLinux/bkpMysqlDir
			echo "Cambios sincronizados de Directorio Mysql realizado con éxito!!"
			;;
			8)
			#Directorio Zimbra
			echo "Funcion en desarrollo"
			;;
			9)
			#Archivo shadow
			rsync -avh /etc/shadow /bkp/bkpAyDLinux/bkpShadow
			echo "Cambios sincronizados de Archivo Shadow realizado con éxito!!"
			;;
			q)
			#Init Script iptables
			rsync -avh /etc/init.d/iptables /bkp/bkpAyDLinux/bkpIptablesScript
			echo "Cambios sincronizados del Script Iptables realizado con éxito!!"
			;;
			w)
			#Configuración iptables
			rsync -avh /etc/sysconfing/iptables /bkp/bkpAyDLinux/bkpIptablesCfg
			echo "Cambios sincronizados de la Configuración del Iptables realizado con éxito!!"
			;;
			e)
			#Archivo binario iptables
			rsync -avh /sbin/iptables /bkp/bkpAyDLinux/bkpIptablesBin
			echo "Cambios sincronizados de Archivo Binario Iptables realizado con éxito!!"
			;;
			r)
			#Configuraciones de crontab
			rsync -avh /var/log/cron /bkp/bkpAyDLinux/bkpCron
			echo "Cambios sincronizados de las Configuraciónes Crontab realizado con éxito!!"
			;;
			t)
			#Autenticaciones
			rsync -avh /var/log/secure /bkp/bkpAyDLinux/bkpSecure
			echo "Cambios sincronizados de las Autenticaciones realizado con éxito!!"
			;;
			y)
			#Mensajes del sistema
			rsync -avh /var/log/messages /bkp/bkpAyDLinux/bkpMessages
			echo "Cambios sincronizados de los Mensajes del Sistema realizado con éxito!!"
			;;
			u)
			#Archivo de Sesiones que las muestra en lenguaje humano con el comando last
			rsync -avh /var/log/wtmp /bkp/bkpAyDLinux/bkpWtmp
			echo "Cambios sincronizados de Archivo de Sesiones realizado con éxito!!"
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
