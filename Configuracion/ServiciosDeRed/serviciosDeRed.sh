serviciosDeRed(){
echo "Bienvenido al menu de Servicios de Red"
echo "1) Recargar Servicio SSH"
echo "2) Reiniciar Servicio de Red"
echo "3) Volver a Menu Admin"
echo "0) Salir"
}
serviciosDeRed
read -p "Seleccione una opcion: " opcionServicios
case $opcionServicios in 
	1)
	sh sshd.sh
	;;
	2)
	sh network.sh
	;;
	3)sh /home/adminPractico(MathiasMelo)/adminPractico.sh
	;;
	0)
	break
	;;
esac
	