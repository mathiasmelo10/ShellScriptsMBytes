removeGroups(){
echo -e "+==================================================================+"
echo -e "+ Welcome to Remove Group                                        +"
echo -e "+==================================================================+"
read -p "Select the group ID to be removed: " groupID 
echo "+==================================================================+"
}
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "SELECT * FROM groups;"
removeGroups
mysql -h localhost -u root -padmin.root -D prueba_proyecto -s -e "DELETE FROM groups WHERE ID=$groupID;"