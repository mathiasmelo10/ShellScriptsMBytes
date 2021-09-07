#!/bin/bash
#Parámetros de conexión
echo -e "+==============================================+"
echo -e "+ Write database parameters:                   +"
echo -e "+==============================================+"
read -p "Escriba HOST: " host 
echo
read -p "Escriba USER: " user  
echo
read -sp "Escriba PASSWORD: " password
echo
read -p "Escriba DATABASE: " database 
echo -e "+=============================================+" 
mysql sql_host=$host
mysql slq_usuario=$user
mysql sql_password=$password
mysql sql_database=$database


