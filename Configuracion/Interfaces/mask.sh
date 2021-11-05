read -p "Ingrese Mascara" mask
sed -i "s/NETMASK=.*/NETMASK=$mask/1" etc/sysconfig/network-scripts/ifcfg-ens33