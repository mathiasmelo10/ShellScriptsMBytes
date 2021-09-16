#!/bin/bash
cp /etc/sysconfig/network-scripts/ifcfg-ens33 /etc/sysconfig/network-scripts/ifcfg-ens33Incremental
rm /bkp/bkp-ens33Incremental2
mv /bkp/bkp-ens33Incremental1 /bkp/bkp-ens33Incremental2
mv /bkp/bkp-ens33Incremental /bkp/bkp-ens33Incremental1
rsync -avh /etc/sysconfig/network-scripts/ifcfg-ens33Incremental /bkp/bkp-ens33Incremental
echo "Cambios sincronizados de la Configuración de red realizado con éxito!"
