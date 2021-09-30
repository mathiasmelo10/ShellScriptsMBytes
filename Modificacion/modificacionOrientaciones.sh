#!/bin/bash
modifyOrientation()
{
echo -e "+==================================================================+"
echo -e "+ Welcome to Modify Orientation                                           +"
echo -e "+==================================================================+"
read -p "Select the course ID to be modified : " courseID  
read -p "Write the NEW course : " newCourse
echo "+=====================================================================+"                                                                 
}
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM courses;"
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM grades;"
modifyOrientation
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE courses SET Name='$newCourse' WHERE ID=$courseID;"
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE grades SET Name='1º $newCourse' WHERE Course_ID=$courseID;"
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE grades SET Name='2º $newCourse' WHERE Course_ID=$courseID;"
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "UPDATE grades SET Name='3º $newCourse' WHERE Course_ID=$courseID;"