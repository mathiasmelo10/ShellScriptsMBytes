#!/bin/bash
modifyGroups()
{
echo -e "+==================================================================+"
echo -e "+ Welcome to Modify Groups                                           +"
echo -e "+==================================================================+"
echo -e "\n1- Modify group"   
echo -e "\n2- Go back Operator"
echo -e "\n0- Exit Operator" 
echo "+=====================================================================+"                                                                 
}
read -p "Insert Modify Groups Option: " modifyGroupsOption
case $modifyGroupsOption in
 1)
    modifyGroups
    echo -e "+==================================================================+"
    read -p "Select the group ID to be modified : " groupID  
    read -p "Write the NEW group : " newGroup
    echo "+=====================================================================+" 
    mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e "SELECT * FROM groups;"
    mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e "UPDATE groups SET Name='$newGroup' WHERE ID=$groupID;"
    modifyGroups
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
 *)
	 echo -e "Incorrect Option" 
 ;;
esac

