#!/bin/bash

userInformation(){
echo -e "+==================================================================+"
echo -e "+ Welcome to Users Register                                        +"
echo -e "+==================================================================+"
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
echo "+==================================================================+"                                                                 

}
userInformation 
# Sentencia Sql para que la muestre
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "INSERT INTO users(User_Login,User_Password)VALUES('$userName','$userPassword');"
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "INSERT INTO persons(CI,First_Name,Second_Name,First_Surname,Second_Surname,Nick_Name)VALUES('$ci','$firstName','$secondName','$firstSurname','$secondSurname','$nickName');"

