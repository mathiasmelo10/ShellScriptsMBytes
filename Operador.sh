#!/bin/bash
menuPrincipalOperador()
{
	echo -e "\n***Welcome to Institutional Chat System's Operator MBytes***" 
	echo -e "\n1. Management" 
	echo -e "\n2. Logs" 
	echo -e "\n3. Back Up" 
	echo -e "\n4. Net Configurations"
	echo -e "\n0. Exit"
}

subMenuGestion()
{
	echo -e "\n1. Register"
	echo -e "\n2. Delete"
	echo -e "\n3. Modify"
	echo -e "\n4. Go back Operator Menu"
	echo -e "\n0. Exit Operator"
}


subMenulogs()
{
	sh Logs/Logs.sh
}

subMenubackup()
{
	sh /BackUp/backUp.sh	
}

subMenuConfiguracionDeRed()
{
	sh /Configuracion/netConfigurations.sh
}

subMenualta(){
	echo -e "You are in  REGISTER now"	
	echo -e "\n1. Users Register"
	echo -e"\n2.  Subjects Register" 
	echo -e "\n3. Groups Register"
	echo -e "\n4. Go back Register Menu"
	echo -e "\n5. Go bak Management Menu"
	echo -e "\n0. Exit Operator"
}

subMenubaja(){
	echo -e "You are in DELETE now "
	echo -e "\n1. Users Delete"
	echo -e "\n2. Subjects Delete"
	echo -e "\n3. Groups Delete"
	echo -e "\n4. Go Back DELETE Menu"
	echo -e "\n5. Go Back Management Menu"
	echo -e "\n0. Exit Operator"
}

subMenuModificacion(){
	echo -e "You are in MODIFY now"
	echo -e "\n1. Users Modify"
	echo -e "\n2. Subjects Modify"
	echo -e "\n3. Groups Modify"
	echo -e "\n4. Go back Modify Menu"
	echo -e "\n5. Go back Management Menu"
	echo -e "\n0. Exit Operator"
}

menuPrincipalOperador
validar=0
while [[ $validar == 0 ]]
do
	read -p "Select a Operator Option: " opcion
	case $opcion in
		1) subMenuGestion
			read -p "Select a Management Option: " opcionGestion
			case $opcionGestion in
				1)
				clear	
				subMenualta
				read  -p "Select a Register Option: " opcionAlta
				case $opcionAlta in
					1) clear
			   	   		sh Alta/altaUsuarios.sh
					;;
					2) clear
			   			sh Alta/altaOrientaciones.sh
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
						read -p "Are you sure to exit ? y/Y = YES | n/N = NO " opcionSalir
							case $opcionSalir in 
								y)
								break
								;;
								Y)
								break
								;;
								n)
								echo -e "Hi again!"
								sh /home/admin/ShellScriptsMBytes/operador.sh
								;;
								N)
								echo -e "Hi again!"
								sh /home/admin/ShellScriptsMBytes/operador.sh
								;;
								*)
								echo -e "The last options never were selected" 
								;;
							esac
					;;
			esac		
 		;;
 		*)
	 	echo -e "Incorrect Option" 
 		;;
	esac
	
		2)
		clear
		subMenubaja
		read  -p "Select a Delete Option: " opcionBaja
			case $opcionBaja in
				1)clear
			  		sh Baja/bajaUsuarios.sh
			  				;;
				2) clear
			   		sh Baja/bajaOrientaciones.sh
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
					read -p "Are you sure to exit ? y/Y = YES | n/N = NO " opcionSalir
					case $opcionSalir in 
						y)
						break
						;;
						Y)
						break
						;;
						n)
						echo -e "Hi again!"
						sh /home/admin/ShellScriptsMBytes/operador.sh
						;;
						N)
						echo -e "Hi again!"
						sh /home/admin/ShellScriptsMBytes/operador.sh
						;;
						*)
						echo -e "The last options never were selected" 
						;;
					esac
				;;
			esac		
 		;;
 		*)
	 	echo -e "Incorrect Option" 
 		;;
	esac
		3)
		clear
		subMenuModificacion
		read  -p "Select a Modify Option: " opcionModificacion
			case $opcionModificacion in
				1) clear
			   	sh Modificacion/modificacionUsuarios.sh
			   	;;
				2) clear
			   	sh Modificacion/modificacionOrientaciones.sh
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
				read -p "Are you sure to exit ? y/Y = YES | n/N = NO " opcionSalir
				case $opcionSalir in 
					y)
					break
					;;
					Y)
					break
					;;
					n)
					echo -e "Hi again!"
					sh /home/admin/ShellScriptsMBytes/operador.sh
					;;
					N)
					echo -e "Hi again!"
					sh /home/admin/ShellScriptsMBytes/operador.sh
					;;
					*)
					echo -e "The last options never were selected" 
					;;
				esac
				;;
			esac		
 			;;
 		*)
	 		echo -e "Incorrect Option" 
 		;;
	esac
		4)
			menuPrincipalOperador
		;;
		0) 	
		read -p "Are you sure to exit ? y/Y = YES | n/N = NO " opcionSalir
			case $opcionSalir in 
				y)
				break
				;;
				Y)
				break
				;;
				n)
				echo -e "Hi again!"
				sh /home/admin/ShellScriptsMBytes/operador.sh
				;;
				N)
				echo -e "Hi again!"
				sh /home/admin/ShellScriptsMBytes/operador.sh
				;;
				*)
				echo -e "The last options never were selected" 
				;;
			esac
			;;	
		
 		*)
			echo -e "Incorrect Option" 
			;;

		esac	
		;;
		2) 
			subMenulogs
		;;
		3) 
			subMenubackup
		;;
		4)
			subMenuConfiguracionDeRed
		;;
		0) 	
		read -p "Are you sure to exit ? y/Y = YES | n/N = NO " opcionSalir
			case $opcionSalir in 
				y)
				break
				;;
				Y)
				break
				;;
				n)
				echo -e "Hi again!"
				sh /home/admin/ShellScriptsMBytes/operador.sh
				;;
				N)
				echo -e "Hi again!"
				sh /home/admin/ShellScriptsMBytes/operador.sh
				;;
				*)
				echo -e "The last options never were selected" 
				;;
			esac
		;;
	esac		
 	;;
 *)
	 echo -e "Incorrect Option" 
 ;;
esac
		
done
echo -e "Operator End"

	
