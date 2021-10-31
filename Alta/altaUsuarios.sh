#!/bin/bash

userRegister(){
echo -e "+==================================================================+"
echo -e "+ Welcome to Users Register                                        +"
echo -e "+==================================================================+"
echo -e "\n1- Register a New User"
echo -e "\n2-Go back Operator"
echo -e "\n0- Exit Operator"
echo -e "+==================================================================+"
}
userRegister
read -p "Insert a User Register Option" registerOption
case $registerOption in
 1)
	echo -e "+==================================================================+"
	read -p "Write a New User Name: " userName
	echo
	read -p "Write a CI: " ci
	echo
	read -p "Write a First Name: " firstName
	echo
	read -p "Write a Second Name: " secondName
	echo
	read -p "Write a First Surname: " firstSurname
	echo
	read -p "Write a Second Surname: " secondSurname
	echo
	read -p "Write a Nick Name: " nickName
	echo -e "+==================================================================+"
	# Sentencia Sql para que la muestre
	mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "INSERT INTO users(User_Login,User_Password)VALUES('$userName','cABhAHMAcwB3AG8AcgBkAA==');"
	mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "INSERT INTO persons(CI,First_Name,Second_Name,First_Surname,Second_Surname,Nick_Name)VALUES('$ci','$firstName','$secondName','$firstSurname','$secondSurname','$nickName');"
	userRegister
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


