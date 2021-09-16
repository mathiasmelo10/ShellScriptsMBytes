#!/bin/bash
rsync -avh /etc/sysconfig/network-scripts/ifcfg-ens33 /bkp/bkp-ens33
echo "Cambios sincronizados de la Configuración de red realizado con éxito!"
