interfaces(){
echo -e "+==================================================================+"
echo -e "Welcome to Interfaces"
echo -e "+==================================================================+"
echo -e "\n1. Config -Connection Type"
echo -e "\n2. Config -IP"
echo -e "\n3. Config -Mask"
echo -e "\n4. Config -Gateway"
echo -e "\n5. Config -On boot Configs"
echo -e "\n6. Config -Disable Defualt Net Interface Demon"
echo -e "\n7. Go back Operator"
echo -e "\n0. Exit Operator"
echo -e "+==================================================================+"
}
interfaces
read -p "Seleccione una opcion: " opcionInterfaces
case $opcionIntefaces in 
	1)
	sh bootprotto.sh
	;;
	2)
	sh ip.sh
	;;
	3)
	sh mask.sh 
	;;
	4)
	sh gateway.sh
	;;
	5)
	sh onboot.sh
	;;
	6)
	sh nmcontrolled.sh
	;;
	7) 
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
	