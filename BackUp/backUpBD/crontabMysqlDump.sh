#!/bin/bash
touch /home/admin/Operador/dumpMySQL.txt
mv /home/admin/Operador/dumpMySQL.txt /bkp/bkp-mysqlDump
mysqldump -h 192.168.0.7 -u root -padmin.root prueba_proyecto > /bkp/bkp-mysqlDump/SCIdumpDiario.sql
echo "BackUp Automatizado de la Base de Datos DIARIO realizado con éxito!"

