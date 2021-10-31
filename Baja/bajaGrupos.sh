removeGroups(){
echo -e "+==================================================================+"
echo -e "+ Welcome to Remove Groups                                        +"
echo -e "+==================================================================+"
echo -e "\n1- Remove group"
echo -e "\n2- Go back Operator"
echo -e "\n0- Exit Operator"  
echo -e "+==================================================================+"
}
removeGroups
read -p "Insert Remove Groups Option" removeGroupsOption
case $removeGroupsOption in
    1)
    echo -e "+==================================================================+"
    read -p "Select the group ID to be removed: " groupID 
    echo -e "+==================================================================+"
    mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM groups;"
    mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "DELETE FROM groups WHERE ID=$groupID;"
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