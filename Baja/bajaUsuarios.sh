sh /Datos/conectarBD.sh

eliminarUsuario()
{
echo -e "+==================================================================+"
echo -e "+ Welcome to Users Delete                                          +"
echo -e "+==================================================================+"
read -p "Select the User ID : " userID  
echo "+=====================================================================+"                                                                 
}
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM users;"
eliminarUsuario
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "DELETE FROM users WHERE ID=$userID;"

