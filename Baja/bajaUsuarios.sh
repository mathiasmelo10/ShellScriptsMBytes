#!/bin/bash
eliminarUsuario()
{
echo -e "+==================================================================+"
echo -e "+ Welcome to Remove Users                                           +"
echo -e "+==================================================================+"
echo -e "\n1-Insert User ID to be removed"
echo -e "\n2-Go back to Operator menu"
echo -e "\n0-Exit Operator"
echo "+=====================================================================+"
}                                                                   
mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e "SELECT * FROM users;"
eliminarUsuario
read -p "Insert a option" removeOption
case $removeOption in 
 1)
	echo -e "+=====================================================================+"
	read -p "Select the User ID : " userID
	mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e "DELETE FROM users WHERE ID=$userID;"
	echo -e "+=====================================================================+"
 ;;
 2)
	clear
	sh /home/admin/ShellScriptsMBytes/operador.sh
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
 ;;
 *)
	 echo -e "Incorrect Option" 
 ;;
esac
