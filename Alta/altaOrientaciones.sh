#!/bin/bash
orientationRegister(){
echo -e "+==================================================================+"
echo -e "+ Welcome to Orientation Register                                        +"
echo -e "+==================================================================+"
echo -e "\n1- Insert a new Orientation"
echo -e "\n2- Go Back Operator "
echo -e "\n0- Exit Operator"
echo -e "+==================================================================+"
}

orientationRegister
read -p "Insert a Orientation Register Option: " orientationRegisterOption
case $orientationRegisterOption in 
    1)
        mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e "SELECT * FROM courses;"
        echo -e "+==================================================================+"
        read -p "Write a New Orientation Name: " newCourseName  
        echo -e "+==================================================================+"
        mysql -h 192.168.5.50 -u leandro.tiscornia -p54388733 -D mbytes -s -e "INSERT INTO courses(Name)VALUES('$newCourseName');"
        orientationRegister    
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