#!/bin/bash
modifyGroups()
{
echo -e "+==================================================================+"
echo -e "+ Welcome to Modify Groups                                           +"
echo -e "+==================================================================+"
read -p "Select the group ID to be modified : " groupID  
read -p "Write the NEW group : " newGroup
echo "+=====================================================================+"                                                                 
}
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM groups;"
modifyGroups
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE groups SET Name='$newGroup' WHERE ID=$groupID;"
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE grades SET Name='1º $newGroup' WHERE Course_ID=$gradeID;"
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE grades SET Name='2º $newGroup' WHERE Course_ID=$couID;"
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE grades SET Name='3º $newGroup' WHERE Course_ID=$courseID;"

#Solucionar problema de ID de curso e id de grado 