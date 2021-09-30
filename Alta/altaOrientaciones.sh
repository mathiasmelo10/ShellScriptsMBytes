#!/bin/bash
orientationRegister(){
echo -e "+==================================================================+"
echo -e "+ Welcome to Orientation Register                                        +"
echo -e "+==================================================================+"
read -p "Write a New Orientation Name: " newCourseName  
echo "+==================================================================+"
}
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM courses;"
orientationRegister
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "INSERT INTO courses(Name)VALUES('$newCourseName');"