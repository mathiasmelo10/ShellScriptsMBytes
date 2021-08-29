#!/bin/bash
#Parámetros de conexión
echo +==============================================+
echo + Write database parameters:                   +
echo +==============================================+
read -p "Escriba HOST: " host 
echo
read -p "Escriba USER: " user  
echo
read -sp "Escriba PASSWORD: " password
echo
read -p "Escriba DATABASE: " database 
echo +=============================================+ 
mysql sql_host= $host
mysql slq_usuario= $user
mysql sql_password= $password
mysql sql_database= $database


