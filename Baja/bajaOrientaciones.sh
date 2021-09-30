#!/bin/bash
removeOrientation(){
echo -e "+==================================================================+"
echo -e "+ Welcome to Remove Orientation                                        +"
echo -e "+==================================================================+"
read -p "Select the course ID to be removed: " courseID 
echo "+==================================================================+"
}
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM courses;"
removeOrientation
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "DELETE FROM courses WHERE ID=$courseID;"