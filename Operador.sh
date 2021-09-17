#!/bin/bash
menuPrincipalOperador()
{
	echo -e "\n***Bienvenido al Operador del Sistema de Chat Institucional MBytes***" 
	echo -e "\n1. Gestión" 
	echo -e "\n2. Logs" 
	echo -e "\n3. Back Up" 
	echo -e "\n0. Salir"
}

subMenuGestion()
{
	echo "1-Alta"
	echo "2-Baja"
	echo "3-Modificación"
	echo "4-Volver a Menú Operador"
	echo "0-Salir del Operador"
}


subMenulogs()
{
	sh Logs/Logs.sh
}

subMenubackup()
{
	sh /BackUp/backUp.sh	
}

subMenualta(){
	echo "Usted esta en ALTA"	
	echo "1- Alta Usuarios"
	echo "2- Alta Materias" 
	echo "3- Alta Grupos"
	echo "4-Volver a Menú de Gestión"
	echo "5- Volver a Menú Operador"
	echo "0- Salir del Operador"
}

subMenubaja(){
	echo "Usted está en BAJA"
	echo "1- Baja Usuarios"
	echo "2- Baja Materias"
	echo "3- Baja Grupos"
	echo "4- Volver a Menú Gestión"
	echo "5- Volver a Menú Operador"
	echo "0- Salir del Operador"
}

subMenuModificacion(){
	echo "Usted está en MODIFICACIÓN"
	echo "1- Modicación Usuarios"
	echo "2- Modifación Materias"
	echo "3- Modificación Grupos"
	echo "4- Volver a Menú Gestión"
	echo "5- Volver a Menú Operador"
	echo "0- Salir del Operador"
}

menuPrincipalOperador
while true
do
	read -p "Seleccione una opción de Operador: " opcion
	case $opcion in
		1) subMenuGestion
			read -p "Seleccione una opción de Gestión: " opcionGestion
			case $opcionGestion in
				1)
				clear	
				subMenualta
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
			   		subMenuGestion	
			   					;;
				5)clear
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
				*) echo Opción Incorrecta
				;;
							
			esac
			;;
			2)
			clear
			subMenubaja
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
			   		subMenuGestion
			   				;;
				5) clear
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

				        	
				*) echo Opción Incorrecta
				        	;;
			esac
			;;
			3)
			clear
			subMenuModificacion
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
				4) 
				subMenuGestion
				;;
				5) clear
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
		        *) echo Opción Incorrecta
				;;
			esac
			;;
			4)
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
				echo Opción Incorrecta 
			;;
		esac	
		;;
		2) 
			subMenulogs
		;;
		3) 
			subMenubackup
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
			echo Opción Incorrecta
			;;
	esac
		
done
echo Finalizo Operador

	
