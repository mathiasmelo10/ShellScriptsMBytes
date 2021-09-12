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
			clear
			#Definicion de archivos a respaldar
			;;
			2)
			sh backUpBD.sh
			;;
			3)
			mkdir /etc/sysconfig/network-scripts/BackUp-SCI-ens33 
			cp /etc/sysconfig/network-scripts/ifcfg-ens33 /etc/sysconfig/network-scripts/BackUp-SCI-ens33  
			gzip /etc/sysconfig/network-scripts/BackUp-SCI-ens33
			mv /etc/sysconfig/network-scripts/BackUp-SCI-ens33.gz /bkp/bkp-ens33
			;;
			4)
			mkdir /bkp/bkp-SCI
			tar cvfz /bkp/bkp-SCI-$(date +%Y-%m-%d).tar.gz /home/admin/Operador
			;;
			5)
			operador
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
					operador
					;;
					N)
					echo Hola de nuevo!
					operador
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