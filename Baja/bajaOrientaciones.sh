#!/bin/bash
removeOrientation(){
echo -e "+==================================================================+"
echo -e "+ Welcome to Remove Orientation                                        +"
echo -e "+==================================================================+"
echo -e "\n1- Remove Orientation"
echo -e "\n2- Go back Operator"
echo -e "\n0- Exit Operator"
echo -e "+==================================================================+"
}
removeOrientation
read - p "Insert Remove Orientation Option: " removeOrientationOption
case $removeOrientationOption in
 1)
    echo -e "+==================================================================+"
    read -p "Select the course ID to be removed: " courseID 
    echo -e "+==================================================================+"
    mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e "SELECT * FROM courses;"
    mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e "DELETE FROM courses WHERE ID=$courseID;"
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