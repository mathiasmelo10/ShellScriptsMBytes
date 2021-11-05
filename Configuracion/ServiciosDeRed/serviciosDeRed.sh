serviciosDeRed(){
echo -e "+==================================================================+"
echo -e "Welcome to Net Services"
echo -e "+==================================================================+"
echo -e "\n1. Recharge SSH Service"
echo -e "\n2. Restart Net Service"
echo -e "\n3. Go back Operator"
echo -e "\n0. Exit Operator"
echo -e "+==================================================================+"
}
serviciosDeRed
read -p "Seleccione una opcion: " opcionServicios
case $opcionServicios in 
	1)
	sh sshd.sh
	;;
	2)
	sh network.sh
	;;
	3)
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
	