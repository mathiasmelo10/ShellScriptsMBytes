read -p "Ingrese Gateway" gateway
sed -i "s/GATEWAY=.*/GATEWAY=$gateway/1" etc/sysconfig/network-scripts/ifcfg-ens33