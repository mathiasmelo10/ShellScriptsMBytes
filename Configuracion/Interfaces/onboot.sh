read -p "Ingrese si desea cargar las configuraciones establecidas al inicio del sistema" onboot
sed -i "s/ONBOOT=.*/ONBOOT=$onboot/1" etc/sysconfig/network-scripts/ifcfg-ens33