read -p "Ingrese IP" ip
sed "5,8d" etc/sysconfig/network-scripts/ifcfg-ens33
sed -i "s/IPADDR=.*/IPADDR=$ip/1" etc/sysconfig/network-scripts/ifcfg-ens33
