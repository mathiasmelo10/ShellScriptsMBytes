logsMenu()
{
echo -e "+==================================================================+"    
echo -e "Welcome to Logs"
echo -e "+==================================================================+"
echo -e "\n1. Institutional Chat System Logs"
echo -e "\n2. Red Hat Operative System Logs"
echo -e "\n3. Go back to Operator"
echo -e "\n0. Exit Operator"
echo -e "+==================================================================+"
} 
logsMenu
read -p"Select a Net Configuration Option: " logSystemOption
case $logSystemOption in
    1) 
    cut -d "|" -f 1,3-6 Logs/AppLog.txt
    ;;
    2)
    systemLogs(){
    echo "Welcome to Red Hat Operative System Logs"
    echo "\n1.  Logs - January"
    echo "\n2.  Logs - February"
    echo "\n3.  Logs - March"
    echo "\n4.  Logs - April"
    echo "\n5.  Logs - May"
    echo "\n6.  Logs - June"
    echo "\n7.  Logs - July"
    echo "\n8.  Logs - August"
    echo "\n9.  Logs - September"
    echo "\n10. Logs - October"
    echo "\n11. Logs - November"
    echo "\n12. Logs - December"
    echo "\n13. Go Back to Operator"
    echo "\n0.  Exit Operator"
    }
    systesmLogslog
    read -p "Seleccione una opcion: " optionLogs
    case $optionLogs in 
	    1)
	    grep -i Jan /var/log/messages
	    ;;
	    2)
	    grep -i Feb /var/log/messages
	    ;;
	    3)
	    grep -i Mar /var/log/messages
	    ;;
	    4)
	    grep -i Apr /var/log/messages
	    ;;
	    5)
	    grep -i May /var/log/messages
	    ;;
	    6)
	    grep -i Jun /var/log/messages
	    ;;
	    7)
	    grep -i Jul /var/log/messages
	    ;;
	    8)
	    grep -i Aug /var/log/messages
	    ;;
	    9)
	    grep -i Set /var/log/messages
	    ;;
	    10)
	    grep -i Oct /var/log/messages
	    ;;
	    11)
	    grep -i Nov /var/log/messages
	    ;;
	    12)
	    grep -i Dic /var/log/messages
	    ;;
	    13)
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
    ;;
    3)
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





