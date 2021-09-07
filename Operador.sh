#!/bin/bash
function operador()
{
	echo "Bienvenido al Operador del Sistema de Chat Institucional MBytes"
	echo "1-Gestión"
	echo "2-Logs"
	echo "3-Back Up"
	echo "4-Configurar BD" 
	echo "0-Salir"
}

function gestion()
{
	echo "1- Alta"
	echo "2- Baja"
	echo "3- Modificación"
	echo "4- Volver a Menú Operador"
	echo "0- Salir del Operador"
}


function logs()
{
	sh Logs/Logs.sh
}

function backup()
{
	echo "Bienvenido al Menú de Back Up"
	echo "1- Back Up Archivos"
	echo "2-Back Up Base de Datos"   
	echo "3-Back Up Configuración de Red" #Hecho
	echo "4-Back Up Operador" #Hecho

}

operador
while true
do
	read -p "Seleccione una opción de Operador: " opcion
	case $opcion in
		1) gestion
			read -p "Seleccione una opción de Gestión: " opcionGestion
			case $opcionGestion in
				1)
				clear	
				echo Usted esta en ALTA	
				echo 1- Alta Usuarios
				echo 2- Alta Materias 
				echo 3- Alta Grupos
				echo 4-Volver a Menú de Gestión
				echo 5- Volver a Menú Operador
				echo 0- Salir del Operador
				read  -p "Seleccione una opción de Alta: " opcionAlta
			case $opcionAlta in
				1) clear
			   	   	sh Alta/altaUsuarios.sh
								;;
				2) clear
			   		sh Alta/altaMaterias.sh
								;;
				3) clear
			   		sh Alta/altaGrupos.sh
								;;
				4) clear
			   		gestion	
			   					;;
				5)clear
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
				*) echo Opción Incorrecta
				;;
							
			esac
			;;
			2)
			clear
			echo Usted está en BAJA
			echo 1- Baja Usuarios
			echo 2- Baja Materias
			echo 3- Baja Grupos
			echo 4- Volver a Menú Gestión
			echo 5- Volver a Menú Operador
			echo 0- Salir del Operador
			read  -p "Seleccione una opción de Baja: " opcionBaja
			case $opcionBaja in
				1)clear
			  		sh Baja/bajaUsuarios.sh
			  				;;
				2) clear
			   		sh Baja/bajaMaterias.sh
			   		;;
				3) clear
			   		sh Baja/bajaGrupos.sh
			   				;;
				4) 
			   		gestion
			   				;;
				5) clear
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

				        	
				*) echo Opción Incorrecta
				        	;;
			esac
			;;
			3)
			clear
			echo Usted está en MODIFICACIÓN
			echo 1- Modicación Usuarios
			echo 2- Modifación Materias
			echo 3- Modificación Grupos
			echo 4- Volver a Menú Gestión
			echo 5- Volver a Menú Operador
			echo 0- Salir del Operador
			read  -p "Seleccione una opción del Modicación: " opcionModificacion
			case $opcionModificacion in
				1) clear
			   	sh Modificacion/modificacionUsuarios.sh
			   		 				;;
				2) clear
			   	sh Modificacion/modificacionMaterias.sh
			   						;;
				3) clear
			   	sh Modificacion/modificacionGrupos.sh
			   						;;
				4) gestion
				        			;;
				5) clear
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
		        *) echo Opción Incorrecta
				        			;;
			esac
			;;
			4)
			clear
			echo "1-Insertar parámetros de la Base de Datos."
			echo "2-Volver al Operador."
			read -p "Seleccione una opción de Configurar BD:" opcionConfigBD
			case $opcionConfigBD in 
				1) 
				source .Datos/conectarBD.sh	
				;;
				2)
				operador
				echo -e "Volviendo a operador"
				;;
			esac
			5) salir
				;;
		*) echo Opción Incorrecta 
			;;
		esac	
		;;
		2) logs
		;;
		3) #backUp
		backup
		read -p "Seleccione una opción de Back Up: " opcionBackUp
		case $opcionBackUp in 
			1) 
			clear
			#Definicion de archivos a respaldar
			;;
			2)
			read -p "Base de datos que desea respaldar: " base



			;;
			3)
			mkdir /etc/sysconfig/network-scripts/BackUp-SCI-ens33 
			cp /etc/sysconfig/network-scripts/ifcfg-ens33 /etc/sysconfig/network-scripts/BackUp-SCI-ens33  
			gzip /etc/sysconfig/network-scripts/BackUp-SCI-ens33
			mkdir /bkp/bkp-ens33
			mv /etc/sysconfig/network-scripts/BackUp-SCI-ens33.gz /bkp/bkp-ens33
			;;
			4)
			mkdir /bkp/bkp-SCI
			tar cvfz /bkp/bkp-SCI-$(date +%Y-%m-%d).tar.gz /home/admin/Operador
			;;
			*)
			echo No se ha seleccionado ninguna de las opciones anteriores
			;; 
		esac	
		   
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
			echo Opción Incorrecta
			;;
	esac
		
done
echo Finalizo Operador

	
