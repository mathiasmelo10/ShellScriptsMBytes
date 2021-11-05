netConfigs()
{
echo -e "+==================================================================+"    
echo -e "Welcome to Net Configurations"
echo -e "+==================================================================+"
echo -e "\n1. Interfaces"
echo -e "\n2. Net Services"
echo -e "\n3. Go back to Operator"
echo -e "\n4. Exit Operator"
echo -e "+==================================================================+"
} 
netConfigs 
read -p"Select a Net Configuration Option: " netOption
case $netOption in
    1) 
    sh Interfaces/interfaces.sh
    ;;
    2)
    sh ServiciosDeRed/serviciosDeRed.sh
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
