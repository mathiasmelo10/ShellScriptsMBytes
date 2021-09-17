#!/bin/bash
tar -cvfz /bkp/bkp-Operador/bkpOperadorIncremental$(date +%Y-%m-%d).tar.gz /home/admin/Operador
rm /bkp/bkp-OperadorIncremental2
mv /bkp/bkp-OperadorIncremental1 /bkp/bkp-OperadorIncremental2
mv /bkp/bkp-OperadorIncremental /bkp/bkp-OperadorIncremental1
tar -xvfz /bkp/bkp-Operador/bkpOperadorIncremental$(date +%Y-%m-%d).tar.gz /bkp/bkp-OperadorIncremental
rsync -avh /home/admin/Operador /bkp/bkp-OperadorIncremental
echo "Cambios sincronizados del Operador realizado con éxito!"
