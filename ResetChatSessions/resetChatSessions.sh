resetChatSessionsMenu()
{
echo -e "+==================================================================+"    
echo -e "Welcome to Hard Reset Chat Sessions"
echo -e "+==================================================================+"
echo -e "\n1. Reset All Chat Sessions"
echo -e "\n2. Go back to Operator"
echo -e "\n0. Exit Operator"
echo -e "+==================================================================+"
} 
resetChatSessionsMenu
read -p"Select a Net Configuration Option: " resetChatSessionsOption
case $resetChatSessionsOption in
    1) 
        mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e "DELETE FROM chatparticipants WHERE ID>=1";
        mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e "DELETE FROM chatsessions WHERE ID>=1;"     
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
esac    