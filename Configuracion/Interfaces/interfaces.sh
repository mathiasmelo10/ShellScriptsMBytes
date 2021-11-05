interfaces(){
echo "Bienvenido al menu de Interfaces"
echo "1) Configurar -Tipo de conexion"
echo "2) Configurar -IP"
echo "3) Configurar -Mascara"
echo "4) Configurar -Puerta de enlace"
echo "5) Configurar -Configuraciones Establecidas Al Inicio Del Sistema"
echo "6) Configuar -Desactivar demonio de intefaz de red prestablecido"
echo "7) Volver a Menu Admin"
echo "0) Salir"
}
interfaces
read -p "Seleccione una opcion: " opcionInterfaces
case $opcionIntefaces in 
	1)
	sh bootprotto.sh
	;;
	2)
	sh ip.sh
	;;
	3)
	sh mask.sh 
	;;
	4)
	sh gateway.sh
	;;
	5)
	sh onboot.sh
	;;
	6)
	sh nmcontrolled.sh
	;;
	7) 
	sh /home/adminPractico(MathiasMelo)/adminPractico.sh
	;;
	0)
	break
	;;
	*)
	echo "Opcion seleccionada incorrecta"
	;;
esac
	