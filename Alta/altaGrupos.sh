#!/bin/bash
groupsRegister(){
echo -e "+==================================================================+"
echo -e "+ Welcome to Groups Register                                        +"
echo -e "+==================================================================+"
echo -e "\n1- Insert New Group"   
echo -e "\n2- Go back Operator menu"
echo -e "\n0- Exit Operator"  
echo -e "+==================================================================+"
}
groupsRegister
read -p "Insert Groups Register Option: " groupsRegisterOption
case $groupsRegisterOption in
 1)
    echo -e "+==================================================================+"
    read -p "Write a New Group: " newGroupName  
    read -p "Write the New Group's Shift : " newGroupShift 
    echo -e "+==================================================================+"
    mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e "SELECT * FROM groups;"
    mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e "INSERT INTO groups(Name,Shift)VALUES('$courseName','$newGroupShift');"
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
