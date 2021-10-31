#!/bin/bash
modifyOrientation()
{
echo -e "+==================================================================+"
echo -e "+ Welcome to Modify Orientation                                           +"
echo -e "+==================================================================+"
echo -e "\n1- Modify an Orientation" 
echo -e "\n2- Go back Operator"
echo -e "\n0- Exit Operator"
echo -e "+=====================================================================+"                                                                 
}
modifyOrientation
read -p "Insert a Modify Orientation Option: " modifyOrientationOption
case $modifyOrientationOption in
 1)
    echo -e "+==================================================================+"
    read -p "Select the course ID to be modified : " courseID  
    read -p "Write the NEW course : " newCourse
    echo -e "+=====================================================================+"
    mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM courses;"
    mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM grades;"
    mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "UPDATE courses SET Name='$newCourse' WHERE ID=$courseID;"
    mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "UPDATE grades SET Name='1º $newCourse' WHERE Course_ID=$courseID;"
    mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "UPDATE grades SET Name='2º $newCourse' WHERE Course_ID=$courseID;"
    mysql -h 192.168.0.7 -u root -padmin.root -D prueba_proyecto -s -e "UPDATE grades SET Name='3º $newCourse' WHERE Course_ID=$courseID;"
    modifyOrientation
 ;;
 2)
    clear
    sh /home/admin/ShellScriptsMBytes/operador.sh
 ;;
 0)
    read -p "Are you sure to exit ? y/Y = YES | n/N = NO " opcionSalir
		case $opcionSalir in 
			y)
			break
			;;
			Y)
			break
			;;
			n)
			echo -e "Hi again!"
			sh /home/admin/ShellScriptsMBytes/operador.sh
			;;
			N)
			echo -e "Hi again!"
			sh /home/admin/ShellScriptsMBytes/operador.sh
			;;
			*)
			echo -e "The last options never were selected" 
			;;
		esac
		;;	
 ;;
 *)
	 echo -e "Incorrect Option" 
 ;;
esac

    