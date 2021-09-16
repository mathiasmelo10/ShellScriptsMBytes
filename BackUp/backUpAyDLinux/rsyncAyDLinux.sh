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
	echo "8-SINCRONIZAR RSYNC -- Configuraciones CRONTAB"
	echo "9-SINCRONIZAR RSYNC -- Archivo shadow"
	echo "q-SINCRIONIZAR RSYNC -- Init Script iptables"
	echo "w-SINCRONIZAR RSYNC -- Configuración iptables"
	echo "e-SINCRONIZAR RSYNC -- Archivo binario iptables"
	echo "r-SINCRONIZAR RSYNC -- Configuraciones de Logs de Cron"
	echo "t-SINCRONIZAR RSYNC -- Autenticaciones"
	echo "y-SINCRONIZAR RSYNC -- Mensajes del sistema"
	echo "u-SINCRONIZAR RSYNC -- Archivo de Sesiones"
	echo "i-SINCRONIZAR RSYNC -- Configuracion de red"
	echo "o-SINCRONIZAR RSYNC -- Operador"
	echo "a-Volver a menu backUpAyDLinux"
	echo "s-Volver a Operador"
	echo "0-Salir del Operador"
}
sincronizarCambiosAyD
read -p "Seleccione una opción del menú BackUp Parcial Archivos y Directorios Linux" opcionAyDLinuxParcial
		case $opcionAyDLinuxParcial in 
			1)
			#Archivo passwd
			cp /etc/passwd /etc/passwdBkpIncremental
			rm /bkp/bkpAyDLinux/bkpPasswdIncremental2
			mv /bkp/bkpAyDLinux/bkpPasswdIncremental1 /bkp/bkpAyDLinux/bkpPasswdIncremental2
			mv /bkp/bkpAyDLinux/bkpPasswdIncremental /bkp/bkpAyDLinux/bkpPasswdIncremental1
			rsync -avh /etc/passwdIncremental /bkp/bkpAyDLinux/bkpPasswdIncremental
			echo "Cambios sincronizados de Archivo Passwd realizado con éxito!!"
			;;
			2)
			#Directorio home 
			tar -cvfz /bkp/bkpAyDLinux/bkpHomeIncremental$(date +%Y-%m-%d).tar.gz /home
			rm /bkp/bkpAyDLinux/bkpHomeDirIncremental2
			mv /bkp/bkpAyDLinux/bkpHomeDirIncremental1 /bkp/bkpAyDLinux/bkpHomeDirIncremental2
			mv /bkp/bkpAyDLinux/bkpHomeDirIncremental /bkp/bkpAyDLinux/bkpHomeDirIncremental1
			mv /bkp/bkpAyDLinux/bkpHomeIncremental.tar.gz /bkp/bkpAyDLinux/bkpHomeDirIncremental
			tar -xvfz /bkp/bkpAyDLinux/bkpHomeIncremental$(date +%Y-%m-%d).tar.gz /bkp/bkpAyDLinux/bkpHomeDirIncremental
			rsync -avh /home /bkp/bkpAyDLinux/bkpHomeDirIncremental
			echo "Cambios sincronizados del Directorio Home realizado con éxito!!"  
			;;
			3)
			#Archivo gpasswd
			cp /etc/gpasswd /etc/gpasswdBkpIncremental
			rm /bkp/bkpAyDLinux/bkpGpasswdIncremental2
			mv /bkp/bkpAyDLinux/bkpGpasswdIncremental1 /bkp/bkpAyDLinux/bkpGpasswdIncremental2
			mv /bkp/bkpAyDLinux/bkpGpasswdIncremental /bkp/bkpAyDLinux/bkpGpasswdIncremental1
			rsync -avh /etc/gpasswdBkpIncremental /bkp/bkpAyDLinux/bkpGpasswdIncremental
			echo "Cambios sincronizados de Archivo Gpasswd realizado con éxito!!"
			;;
			4)
			#Archivo gshadow
			cp /etc/gshadow /etc/gshadowBkpIncremental
			rm /bkp/bkpAyDLinux/bkpGshadowIncremental2
			mv /bkp/bkpAyDLinux/bkpGshadowIncremental1 /bkp/bkpAyDLinux/bkpGshadowIncremental2
			mv /bkp/bkpAyDLinux/bkpGshadowIncremental /bkp/bkpAyDLinux/bkpGshadowIncremental1
			rsync -avh /etc/gshadowBkpIncremental /bkp/bkpAyDLinux/bkpGshadowIncremental
			echo "Cambios sincronizados de Archivo Gshadow realizado con éxito!!" 
			;;
			5)
			#Configuración SSH
			cp /etc/ssh/sshd /etc/ssh/sshdIncremental
			rm /bkp/bkpAyDLinux/bkpSshdIncremental2
			mv /bkp/bkpAyDLinux/bkpSshdIncremental1 /bkp/bkpAyDLinux/bkpSshdIncremental2
			mv /bkp/bkpAyDLinux/bkpSshdIncremental /bkp/bkpAyDLinux/bkpSshdIncremental1   
			rsync -avh /etc/ssh/sshdIncremental /bkp/bkpAyDLinux/bkpSshdIncremental
			echo "cambios sincronizados de la Configuración del SSH realizado con éxito!!"
			;;
			6)
			#Archivo squid
			cp /etc/squid /etc/squidIncremental
			rm /bkp/bkpAyDLinux/bkpSquidIncremental2
			mv /bkp/bkpAyDLinux/bkpSquidIncremental1 /bkp/bkpAyDLinux/bkpSquidIncremental2
			mv /bkp/bkpAyDLinux/bkpSquidIncremental /bkp/bkpAyDLinux/bkpSquidIncremental1   
			rsync -avh /etc/squidIncremental /bkp/bkpAyDLinux/bkpSquidIncremental
			echo "Cambios sincronizados de Archivo Squid realizado con éxito!!"
			;;
			7)
			#Directorio mysql
			tar -cvfz /bkp/bkpAyDLinux/bkpMysqlIncremental$(date +%Y-%m-%d).tar.gz /home
			rm /bkp/bkpAyDLinux/bkpMysqlDirIncremental2
			mv /bkp/bkpAyDLinux/bkpMysqlDirIncremental1 /bkp/bkpAyDLinux/bkpMysqlDirIncremental2
			mv /bkp/bkpAyDLinux/bkpMsyqlDirIncremental /bkp/bkpAyDLinux/bkpMysqlDirIncremental1
			mv /bkp/bkpAyDLinux/bkpMsqlIncremental.tar.gz /bkp/bkpAyDLinux/bkpMysqlDirIncremental
			tar -xvfz /bkp/bkpAyDLinux/bkpMysqlIncremental$(date +%Y-%m-%d).tar.gz /bkp/bkpAyDLinux/bkpMysqlDirIncremental
			rsyn -avh /var/lib/mysql /bkp/bkpAyDLinux/bkpMsyqlDirIncremental
			echo "Cambios sincronizados de Directorio Mysql realizado con éxito!!"
			;;
			8)
			#Configuracion de CRONTAB
			cp /etc/crontab /etc/crontabIncremental
			rm /bkp/bkpAyDLinux/bkpCRONTABIncremental2
			mv /bkp/bkpAyDLinux/bkpCRONTABIncremental1 /bkp/bkpAyDLinux/bkpCRONTABIncremental2
			mv /bkp/bkpAyDLinux/bkpCRONTABIncremental /bkp/bkpAyDLinux/bkpCRONTABIncremental1
			rsync -avh /etc/crontabIncremental /bkp/bkpAyDLinux/bkpCRONTABIncremental
			;;
			9)
			#Archivo shadow
			cp /etc/squid /etc/shadowIncremental
			rm /bkp/bkpAyDLinux/bkpShadowIncremental2
			mv /bkp/bkpAyDLinux/bkpShadowIncremental1 /bkp/bkpAyDLinux/bkpShadowIncremental2
			mv /bkp/bkpAyDLinux/bkpShadowIncremental /bkp/bkpAyDLinux/bkpShadowIncremental1
			rsync -avh /etc/shadow /bkp/bkpAyDLinux/bkpShadowIncremental
			echo "Cambios sincronizados de Archivo Shadow realizado con éxito!!"
			;;
			q)
			#Init Script iptables
			cp /etc/init.d/iptables /etc/init.d/iptablesIncremental
			rm /bkp/bkpAyDLinux/bkpIptablesScriptIncremental2
			mv /bkp/bkpAyDLinux/bkpSquidIptablesScriptIncremental1 /bkp/bkpAyDLinux/bkpIptablesScriptIncremental2
			mv /bkp/bkpAyDLinux/bkpSquidIptablesScriptIncremental /bkp/bkpAyDLinux/bkpIptablesScriptIncremental1
			rsync -avh /etc/init.d/iptablesIncremental /bkp/bkpAyDLinux/bkpIptablesScriptIncremental
			echo "Cambios sincronizados del Script Iptables realizado con éxito!!"
			;;
			w)
			#Configuración iptables
			cp /etc/sysconfing/iptables /etc/sysconfing/iptablesCfgIncremental
			rm /bkp/bkpAyDLinux/bkpIptablesCfgIncremental2
			mv /bkp/bkpAyDLinux/bkpIptablesCfgIncremental1 /bkp/bkpAyDLinux/bkpIptablesCfgIncremental2
			mv /bkp/bkpAyDLinux/bkpIptablesCfgIncremental /bkp/bkpAyDLinux/bkpIptablesCfgIncremental1
			rsync -avh /etc/sysconfing/iptablesIncremental /bkp/bkpAyDLinux/bkpIptablesCfgIncremental
			echo "Cambios sincronizados de la Configuración del Iptables realizado con éxito!!"
			;;
			e)
			#Archivo binario iptables
			cp /sbin/iptables /sbin/iptablesBinIncremental
			rm /bkp/bkpAyDLinux/bkpIptablesBinIncremental2
			mv /bkp/bkpAyDLinux/bkpIptablesBinIncremental1 /bkp/bkpAyDLinux/bkpIptablesBinIncremental2
			mv /bkp/bkpAyDLinux/bkpIptablesBinIncremental /bkp/bkpAyDLinux/bkpIptablesBinIncremental1 
			rsync -avh /sbin/iptables /bkp/bkpAyDLinux/bkpIptablesBinIncremental
			echo "Cambios sincronizados de Archivo Binario Iptables realizado con éxito!!"
			;;
			r)
			#Logs de cron
			cp /var/log/cron /var/log/cronIncremental
			rm /bkp/bkpAyDLinux/bkpCronIncremental2
			mv /bkp/bkpAyDLinux/bkpCronIncremental1 /bkp/bkpAyDLinux/bkpCronIncremental2
			mv /bkp/bkpAyDLinux/bkpCronIncremental /bkp/bkpAyDLinux/bkpCronIncremental1
			rsync -avh /var/log/cronIncremental /bkp/bkpAyDLinux/bkpCronIncremental
			echo "Cambios sincronizados de las Configuraciónes Cron realizado con éxito!!"
			;;
			t)
			#Autenticaciones
			cp /var/log/secure /var/log/secureIncremental
			rm /bkp/bkpAyDLinux/bkpSecureIncremental2
			mv /bkp/bkpAyDLinux/bkpSecureIncremental1 /bkp/bkpAyDLinux/bkpSecureIncremental2
			mv /bkp/bkpAyDLinux/bkpSecureIncremental /bkp/bkpAyDLinux/bkpSecureIncremental1
			rsync -avh /var/log/secureIncremental /bkp/bkpAyDLinux/bkpSecureIncremental
			echo "Cambios sincronizados de las Autenticaciones realizado con éxito!!"
			;;
			y)
			#Mensajes del sistema
			cp /var/log/messages /var/log/messagesIncremental
			rm /bkp/bkpAyDLinux/bkpMessagesIncremental2
			mv /bkp/bkpAyDLinux/bkpMessagesIncremental1 /bkp/bkpAyDLinux/bkpMessagesIncremental2
			mv /bkp/bkpAyDLinux/bkpMessagesIncremental /bkp/bkpAyDLinux/bkpMessagesIncremental1
			rsync -avh /var/log/messagesIncremental /bkp/bkpAyDLinux/bkpMessagesIncremental
			echo "Cambios sincronizados de los Mensajes del Sistema realizado con éxito!!"
			;;
			u)
			#Archivo de Sesiones que las muestra en lenguaje humano con el comando last
			cp /var/log/wtmp /var/log/wtmpIncremental
			rm /bkp/bkpAyDLinux/bkpWtmpIncremental2
			mv /bkp/bkpAyDLinux/bkpWtmpIncremental1 /bkp/bkpAyDLinux/bkpWtmpIncremental2
			mv /bkp/bkpAyDLinux/bkpWtmpIncremental /bkp/bkpAyDLinux/bkpWtmpIncremental1
			rsync -avh /var/log/wtmpIncremental /bkp/bkpAyDLinux/bkpWtmpIncremental
			echo "Cambios sincronizados de Archivo de Sesiones realizado con éxito!!"
			;;
			i)
			#Configuracion de red
			cp /etc/sysconfig/network-scripts/ifcfg-ens33 /etc/sysconfig/network-scripts/ifcfg-ens33Incremental
			rm /bkp/bkp-ens33Incremental2
			mv /bkp/bkp-ens33Incremental1 /bkp/bkp-ens33Incremental2
			mv /bkp/bkp-ens33Incremental /bkp/bkp-ens33Incremental1
			rsync -avh /etc/sysconfig/network-scripts/ifcfg-ens33Incremental /bkp/bkp-ens33Incremental
			;;
			o)
			#Operador
			tar -cvfz /bkp/bkp-Operador/bkpOperadorIncremental$(date +%Y-%m-%d).tar.gz /home/admin/Operador
			rm /bkp/bkp-OperadorIncremental2
			mv /bkp/bkp-OperadorIncremental1 /bkp/bkp-OperadorIncremental2
			mv /bkp/bkp-OperadorIncremental /bkp/bkp-OperadorIncremental1
			tar -xvfz /bkp/bkp-Operador/bkpOperadorIncremental$(date +%Y-%m-%d).tar.gz /bkp/bkp-OperadorIncremental
			rsync -avh /home/admin/Operador /bkp/bkp-OperadorIncremental
			;;
			a)
			#Volver a menu backUpAyDLinux
			backUpAyDLinux
			echo "Volviendo al menú BackUp de Archivos y Directorios de Linux"
			;;
			s)
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
