#!/bin/bash


#function checkUserPassword (){
#passwordConfirmed = ""
#while true
#do	
#if $userPassword != $confirmUserPassword
#then 
#	$passwordConfirmed = false
#	echo Passwords dont match

#elif $userPassword = $confirmUserPassword
#then
#	$passwordConfirmed = true
#	echo Passwords match perfectly
#	break
#fi
#done
#}

function userInformation(){
echo Welcome to Users Register
echo Write a User Name:
read userName
echo Write a Password:
read userPassword
echo Confirm Password:
read confirmUserPassword
echo Write a CI:
read ci
echo Write a First Name:
read firstName
echo Write a Second Name:
read secondName
echo Write a First Surname:
read firstSurname
echo Write a Second Surname:
read secondSurname
echo Write a Nick Name 
read nickName
}

### Se monta los parámetros de conexión
sql_args= -h"localhost" -u "root" -p"maidana10398" -D "sistema_de_chat_institucional" -s -e
### Mi sentencia Sql para que la muestre
mysql $sql_args "INSERT INTO users(User_Login,User_Password) VALUES ($userName,$userPassword); "
mysql $sql_args "INSERT INTO persons(CI,Firt_Name,Second_Name,First_Surname,Second_Surname,Nick_Name) VALUES ($ci,$firstName,$secondName,$firstSurname,$secondSurname,$nickName); "


#mysql -u "root" -p"maidana10398." -D "sistema_de_chat_institucional" -e "INSERT INTO users(User_Login,User_Password) VALUES ($userName,$userPassword); "
#mysql -u "root" -p"maidana10398." -D "sistema_de_chat_institucional" -e "INSERT INTO persons(CI,Firt_Name,Second_Name,First_Surname,Second_Surname,Nick_Name) VALUES ($ci,$firstName,$secondName,$firstSurname,$secondSurname,$nickName); "

#sh ~/source/repos/mathiasmelo10/ShellScriptsMBytes/"Shell Script Operador"/.Datos/bd.sh
userInformation

