read -p "Escriba el tipo de conexion que desea tener en su IP- static o dinamic" bootprotto
sed -i "s/BOOTPROTO=.*/BOOTPROTO=$bootprotto/1" etc/sysconfig/network-scripts/ifcfg-ens33
