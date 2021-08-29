#!/bin/bash
#Parámetros de conexión
echo Indique los parámetros de conexión:
read -p "Escriba HOST" host 
read -p "Escriba USER" user  
read -sp "Escriba PASSWORD" password
read -p "Escriba DATABASE " database  
mysql sql_host= $host
mysql slq_usuario= $user
mysql sql_password= $password
mysql sql_database= $database

### Se monta los parámetros de conexión
sql_args=”-h $sql_host -u $slq_usuario -p$sql_password -D $sql_database -s -e”
### Mi sentencia Sql para que la muestre
mysql $sql_args “INSERT INTO users(User_Login,User_Password) VALUES ($userName,$userPassword);”
mysql $sql_args “INSERT INTO persons(CI,Firt_Name,Second_Name,First_Surname,Second_Surname,Nick_Name) VALUES ($ci,$firstName,$secondName,$firstSurname,$secondSurname,$nickName);”
