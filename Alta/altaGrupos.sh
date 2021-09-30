#!/bin/bash
groupsRegister(){
echo -e "+==================================================================+"
echo -e "+ Welcome to Groups Register                                        +"
echo -e "+==================================================================+"
read -p "Write a New Group: " newGroupName  
read -p "Write the New Group's Shift : " newGroupShift 
echo "+==================================================================+"
}
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM groups;"
groupsRegister
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "INSERT INTO groups(Name,Shift)VALUES('$courseName','$newGroupShift');"