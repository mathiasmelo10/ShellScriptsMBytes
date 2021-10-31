#!/bin/bash
modificarUsuario()
{
echo -e "+==================================================================+"
echo -e "+ Welcome to Users Modify                                          +"
echo -e "+==================================================================+"
read -p "Select the User Data to be Modified : " modifyOption
echo -e "\n1-Change User Name" 
echo -e "\n2-Change First Name"
echo -e "\n3-Change Second Name"
echo -e "\n4-Change First Surname"
echo -e "\n5-Change Second Surname"
echo -e "\n6-Change Nick Name" 
echo -e "\n7-Go back to Operator"
echo -e "\n0-Exit to Operator"
echo "+=====================================================================+" 
}


modificarUsuario

case $modifyOption in 
	1)
		mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM users;"
		read -p "Write the OLD User Name: " oldUserName
		read -p "Write the NEW User Name: " newUserName
		mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "UPDATE users SET User_Login='$newUserName' WHERE User_Login ='$oldUserName';"
		modificarUsuario

	;;
	2)
		mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM persons;"
		read -p "Write the OLD First Name: " oldFirstName
		read -p "Write th NEW First Name: " newFirstName
		mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "UPDATE persons SET First_Name='$newFirstName' WHERE First_Name='$oldFirstName';"
		modificarUsuario

	;;
	3)
		mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM persons;"
		read -p "Write the OLD Second Name: " oldSecondName
		read -p "Write th NEW Second Name: " newSecondName
		mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "UPDATE persons SET Second_Name='$newSecondName' WHERE Second_Name='$oldSecondName';"
 		modificarUsuario

	;;
	4)
		mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM persons;"
		read -p "Write the OLD First Surname: " oldFirstSurname
		read -p "Write th NEW First Surname: " newFirstSurname
		mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "UPDATE persons SET First_Surname='$newFirstSurname' WHERE First_Surname='$oldFirstSurname';"
		modificarUsuario

	;;
	5)
		mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM persons;"
		read -p "Write the OLD Second Surname: " oldSecondSurname
		read -p "Write th NEW Second Surname: " newSecondSurname
		mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "UPDATE persons SET First_Surname='$newSecondSurname' WHERE First_Surname='$oldSecondSurname';"
		modificarUsuario

	;;
	6)
		mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM persons;"
		read -p "Write the OLD Nick Name: " oldNickName
		read -p "Write th NEW Nick Name: " newNickName
		mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "UPDATE persons SET First_Surname='$newNickName' WHERE First_Surname='$oldNickName';"
		modificarUsuario

	;;
	7)
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
