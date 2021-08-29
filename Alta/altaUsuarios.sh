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
echo +==================================================================+
echo + Welcome to Users Register                                        +
echo +==================================================================+
read -p "Write a New User Name: " userName  
echo                                                                                                           
read -sp "Write a New Password: " userPassword
echo 
read -sp "Confirm Password: " confirmUserPassword
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
echo +==================================================================+                                                                 

}
userInformation
sh .Datos/conectarBD.sh 
# Sentencia Sql para que la muestre
mysql -h $sql_host -u $slq_usuario -p$sql_password -D $sql_database -s -e "INSERT INTO users(User_Login,User_Password) VALUES ($userName,$userPassword);"
mysql -h $sql_host -u $slq_usuario -p$sql_password -D $sql_database -s -e "INSERT INTO persons(CI,Firt_Name,Second_Name,First_Surname,Second_Surname,Nick_Name) VALUES ($ci,$firstName,$secondName,$firstSurname,$secondSurname,$nickName);"

