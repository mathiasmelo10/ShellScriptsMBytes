read -p "Ingrese si desea desactivar demonio de intefaz de red prestablecido" nmcontrolled
sed -i "s/NM_CONTROLLED=.*/NM_CONTROLLED=$nmcontrolled/1" etc/sysconfig/network-scripts/ifcfg-ens33