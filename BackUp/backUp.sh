function backup()
{
	echo "Bienvenido al Menú de Back Up"
	echo "1- Back Up Manual de Archivos"
	echo "2-Back Up Manual de la Base de Datos"   
	echo "3-Back Up Manual de la Configuración de Red" #Hecho
	echo "4-Back Up Manual del Operador" #Hecho
	echo "5-Back Up Automatizado"
}
backup

read -p "Seleccione una opción de Back Up: " opcionBackUp
		case $opcionBackUp in 
			1) 
			clear
			#Definicion de archivos a respaldar
			;;
			2)
			read -p "Base de datos que desea respaldar: " BD
			read -p "Nombre del archivo donde desea guardar la base de datos:" nombreDump
			if [ -d /var/lib/mysql/$BD ];
			then
				mysqldump -u root -padmin.root $BD > $nombreDump
				gzip /var/lib.mysql/$BD/$nombreDump
				mv /var/lib.mysql/$BD/$nombreDump.gz /bkp/bkp-mysqlDump  
			else
				echo "La base de datos que usted escribió no existe o cambio su nombre"
			fi	
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
			#Automatizado
			;;  
			6)
			backup
			;;
			0)
			operador
			;;
			*)
			echo No se ha seleccionado ninguna de las opciones anteriores
			;; 
		esac	