#!/bin/bash
modificarUsuario()
{
echo -e "+==================================================================+"
echo -e "+ Welcome to Users Modify                                          +"
echo -e "+==================================================================+"

read -p "Select the User Data to be Modified : " modifyOption
echo -e "1-Change User Name"
echo -e "2-Change Password" 
echo -e "3-Change First Name"
echo -e "4-Change Second Name"
echo -e "5-Change First Surname"
echo -e "6-Change Second Surname"
echo -e "7-Change Nick Name" 
echo -e "8-Go back to Operador"
echo -e "0-Exit to Operador"
echo "+=====================================================================+" 
}


modificarUsuario

case $modifyOption in 
	1)
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM users;"
		read -p "Write the OLD User Name: " oldUserName
		read -p "Write the NEW User Name: " newUserName
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE users SET User_Login='$newUserName' WHERE User_Login ='$oldUserName';"
	;;
	2)
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM users;"
		read -p "Select the User ID: " selectedUserID
		read -p "Write the NEW Password: " newPassword
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE users SET User_Login='$newPassword' WHERE ID ='$selectedUserID';" 
	;;
	3)
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM persons;"
		read -p "Write the OLD First Name: " oldFirstName
		read -p "Write th NEW First Name: " newFirstName
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE persons SET First_Name='$newFirstName' WHERE First_Name='$oldFirstName';"
	;;
	4)
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM persons;"
		read -p "Write the OLD Second Name: " oldSecondName
		read -p "Write th NEW Second Name: " newSecondName
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE persons SET Second_Name='$newSecondName' WHERE Second_Name='$oldSecondName';"
	;;
	5)
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM persons;"
		read -p "Write the OLD First Surname: " oldFirstSurname
		read -p "Write th NEW First Surname: " newFirstSurname
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE persons SET First_Surname='$newFirstSurname' WHERE First_Surname='$oldFirstSurname';"	
	;;
	6)
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM persons;"
		read -p "Write the OLD Second Surname: " oldSecondSurname
		read -p "Write th NEW Second Surname: " newSecondSurname
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE persons SET First_Surname='$newSecondSurname' WHERE First_Surname='$oldSecondSurname';"
	;;
	7)
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM persons;"
		read -p "Write the OLD Nick Name: " oldNickName
		read -p "Write th NEW Nick Name: " newNickName
		mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE persons SET First_Surname='$newNickName' WHERE First_Surname='$oldNickName';"
	;;
	8)
		menuPrincipalOperador		
	;;
	0)
		read -p "Esta seguro que desea salir del operador ? s/S = SI | n/N = NO " opcionSalir
			case $opcionSalir in 
				s)
				break
				;;
				S)
				break
				;;
				n)
				echo Hola de nuevo!
				menuPrincipalOperador
				;;
				N)
				echo Hola de nuevo!
				menuPrincipalOperador
				;;
				*)
				echo No se ha seleccionado ninguna de las opciones anteriores
				;;
			esac
	;;
	*) echo Opción Incorrecta
	;;
esac		