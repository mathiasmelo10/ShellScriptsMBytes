#Archivo passwd
cp /etc/passwd /etc/passwdBkpIncremental
rm /bkp/bkpAyDLinux/bkpPasswdIncremental2
mv /bkp/bkpAyDLinux/bkpPasswdIncremental1 /bkp/bkpAyDLinux/bkpPasswdIncremental2
mv /bkp/bkpAyDLinux/bkpPasswdIncremental /bkp/bkpAyDLinux/bkpPasswdIncremental1
rsync -avh /etc/passwdIncremental /bkp/bkpAyDLinux/bkpPasswdIncremental

#Directorio home 
tar -cvfz /bkp/bkpAyDLinux/bkpHomeIncremental$(date +%Y-%m-%d).tar.gz /home
rm /bkp/bkpAyDLinux/bkpHomeDirIncremental2
mv /bkp/bkpAyDLinux/bkpHomeDirIncremental1 /bkp/bkpAyDLinux/bkpHomeDirIncremental2
mv /bkp/bkpAyDLinux/bkpHomeDirIncremental /bkp/bkpAyDLinux/bkpHomeDirIncremental1
mv /bkp/bkpAyDLinux/bkpHomeIncremental.tar.gz /bkp/bkpAyDLinux/bkpHomeDirIncremental
tar -xvfz /bkp/bkpAyDLinux/bkpHomeIncremental$(date +%Y-%m-%d).tar.gz /bkp/bkpAyDLinux/bkpHomeDirIncremental
rsync -avh /home /bkp/bkpAyDLinux/bkpHomeDirIncremental

#Archivo gpasswd
cp /etc/gpasswd /etc/gpasswdBkpIncremental
rm /bkp/bkpAyDLinux/bkpGpasswdIncremental2
mv /bkp/bkpAyDLinux/bkpGpasswdIncremental1 /bkp/bkpAyDLinux/bkpGpasswdIncremental2
mv /bkp/bkpAyDLinux/bkpGpasswdIncremental /bkp/bkpAyDLinux/bkpGpasswdIncremental1
rsync -avh /etc/gpasswdBkpIncremental /bkp/bkpAyDLinux/bkpGpasswdIncremental

#Archivo gshadow
cp /etc/gshadow /etc/gshadowBkpIncremental
rm /bkp/bkpAyDLinux/bkpGshadowIncremental2
mv /bkp/bkpAyDLinux/bkpGshadowIncremental1 /bkp/bkpAyDLinux/bkpGshadowIncremental2
mv /bkp/bkpAyDLinux/bkpGshadowIncremental /bkp/bkpAyDLinux/bkpGshadowIncremental1
rsync -avh /etc/gshadowBkpIncremental /bkp/bkpAyDLinux/bkpGshadowIncremental

#Configuración SSH
cp /etc/ssh/sshd /etc/ssh/sshdIncremental
rm /bkp/bkpAyDLinux/bkpSshdIncremental2
mv /bkp/bkpAyDLinux/bkpSshdIncremental1 /bkp/bkpAyDLinux/bkpSshdIncremental2
mv /bkp/bkpAyDLinux/bkpSshdIncremental /bkp/bkpAyDLinux/bkpSshdIncremental1   
rsync -avh /etc/ssh/sshdIncremental /bkp/bkpAyDLinux/bkpSshdIncremental

#Archivo squid
cp /etc/squid /etc/squidIncremental
rm /bkp/bkpAyDLinux/bkpSquidIncremental2
mv /bkp/bkpAyDLinux/bkpSquidIncremental1 /bkp/bkpAyDLinux/bkpSquidIncremental2
mv /bkp/bkpAyDLinux/bkpSquidIncremental /bkp/bkpAyDLinux/bkpSquidIncremental1   
rsync -avh /etc/squidIncremental /bkp/bkpAyDLinux/bkpSquidIncremental

#Directorio mysql
tar -cvfz /bkp/bkpAyDLinux/bkpMysqlIncremental$(date +%Y-%m-%d).tar.gz /home
rm /bkp/bkpAyDLinux/bkpMysqlDirIncremental2
mv /bkp/bkpAyDLinux/bkpMysqlDirIncremental1 /bkp/bkpAyDLinux/bkpMysqlDirIncremental2
mv /bkp/bkpAyDLinux/bkpMsyqlDirIncremental /bkp/bkpAyDLinux/bkpMysqlDirIncremental1
mv /bkp/bkpAyDLinux/bkpMsqlIncremental.tar.gz /bkp/bkpAyDLinux/bkpMysqlDirIncremental
tar -xvfz /bkp/bkpAyDLinux/bkpMysqlIncremental$(date +%Y-%m-%d).tar.gz /bkp/bkpAyDLinux/bkpMysqlDirIncremental
rsyn -avh /var/lib/mysql /bkp/bkpAyDLinux/bkpMsyqlDirIncremental

#Archivo shadow
cp /etc/squid /etc/shadowIncremental
rm /bkp/bkpAyDLinux/bkpShadowIncremental2
mv /bkp/bkpAyDLinux/bkpShadowIncremental1 /bkp/bkpAyDLinux/bkpShadowIncremental2
mv /bkp/bkpAyDLinux/bkpShadowIncremental /bkp/bkpAyDLinux/bkpShadowIncremental1
rsync -avh /etc/shadow /bkp/bkpAyDLinux/bkpShadowIncremental

#Init Script iptables
cp /etc/init.d/iptables /etc/init.d/iptablesIncremental
rm /bkp/bkpAyDLinux/bkpIptablesScriptIncremental2
mv /bkp/bkpAyDLinux/bkpSquidIptablesScriptIncremental1 /bkp/bkpAyDLinux/bkpIptablesScriptIncremental2
mv /bkp/bkpAyDLinux/bkpSquidIptablesScriptIncremental /bkp/bkpAyDLinux/bkpIptablesScriptIncremental1
rsync -avh /etc/init.d/iptablesIncremental /bkp/bkpAyDLinux/bkpIptablesScriptIncremental

#Configuración iptables
cp /etc/sysconfing/iptables /etc/sysconfing/iptablesCfgIncremental
rm /bkp/bkpAyDLinux/bkpIptablesCfgIncremental2
mv /bkp/bkpAyDLinux/bkpIptablesCfgIncremental1 /bkp/bkpAyDLinux/bkpIptablesCfgIncremental2
mv /bkp/bkpAyDLinux/bkpIptablesCfgIncremental /bkp/bkpAyDLinux/bkpIptablesCfgIncremental1
rsync -avh /etc/sysconfing/iptablesIncremental /bkp/bkpAyDLinux/bkpIptablesCfgIncremental

#Archivo binario iptables
cp /sbin/iptables /sbin/iptablesBinIncremental
rm /bkp/bkpAyDLinux/bkpIptablesBinIncremental2
mv /bkp/bkpAyDLinux/bkpIptablesBinIncremental1 /bkp/bkpAyDLinux/bkpIptablesBinIncremental2
mv /bkp/bkpAyDLinux/bkpIptablesBinIncremental /bkp/bkpAyDLinux/bkpIptablesBinIncremental1 
rsync -avh /sbin/iptables /bkp/bkpAyDLinux/bkpIptablesBinIncremental

#Configuraciones de crontab
cp /var/log/cron /var/log/cronIncremental
rm /bkp/bkpAyDLinux/bkpCronIncremental2
mv /bkp/bkpAyDLinux/bkpCronIncremental1 /bkp/bkpAyDLinux/bkpCronIncremental2
mv /bkp/bkpAyDLinux/bkpCronIncremental /bkp/bkpAyDLinux/bkpCronIncremental1
rsync -avh /var/log/cronIncremental /bkp/bkpAyDLinux/bkpCronIncremental

#Autenticaciones
cp /var/log/secure /var/log/secureIncremental
rm /bkp/bkpAyDLinux/bkpSecureIncremental2
mv /bkp/bkpAyDLinux/bkpSecureIncremental1 /bkp/bkpAyDLinux/bkpSecureIncremental2
mv /bkp/bkpAyDLinux/bkpSecureIncremental /bkp/bkpAyDLinux/bkpSecureIncremental1
rsync -avh /var/log/secureIncremental /bkp/bkpAyDLinux/bkpSecureIncremental

#Mensajes del sistema
cp /var/log/messages /var/log/messagesIncremental
rm /bkp/bkpAyDLinux/bkpMessagesIncremental2
mv /bkp/bkpAyDLinux/bkpMessagesIncremental1 /bkp/bkpAyDLinux/bkpMessagesIncremental2
mv /bkp/bkpAyDLinux/bkpMessagesIncremental /bkp/bkpAyDLinux/bkpMessagesIncremental1
rsync -avh /var/log/messagesIncremental /bkp/bkpAyDLinux/bkpMessagesIncremental

#Archivo de Sesiones que las muestra en lenguaje humano con el comando last
cp /var/log/wtmp /var/log/wtmpIncremental
rm /bkp/bkpAyDLinux/bkpWtmpIncremental2
mv /bkp/bkpAyDLinux/bkpWtmpIncremental1 /bkp/bkpAyDLinux/bkpWtmpIncremental2
mv /bkp/bkpAyDLinux/bkpWtmpIncremental /bkp/bkpAyDLinux/bkpWtmpIncremental1
rsync -avh /var/log/wtmpIncremental /bkp/bkpAyDLinux/bkpWtmpIncremental

#Configuracion de red
cp /etc/sysconfig/network-scripts/ifcfg-ens33 /etc/sysconfig/network-scripts/ifcfg-ens33Incremental
rm /bkp/bkp-ens33Incremental2
mv /bkp/bkp-ens33Incremental1 /bkp/bkp-ens33Incremental2
mv /bkp/bkp-ens33Incremental /bkp/bkp-ens33Incremental1
rsync -avh /etc/sysconfig/network-scripts/ifcfg-ens33Incremental /bkp/bkp-ens33Incremental

#Operador
tar -cvfz /bkp/bkp-Operador/bkpOperadorIncremental$(date +%Y-%m-%d).tar.gz /home/admin/Operador
rm /bkp/bkp-OperadorIncremental2
mv /bkp/bkp-OperadorIncremental1 /bkp/bkp-OperadorIncremental2
mv /bkp/bkp-OperadorIncremental /bkp/bkp-OperadorIncremental1
tar -xvfz /bkp/bkp-Operador/bkpOperadorIncremental$(date +%Y-%m-%d).tar.gz /bkp/bkp-OperadorIncremental
rsync -avh /home/admin/Operador /bkp/bkp-OperadorIncremental

#Dump de la Base de Datos
rm /bkp/bkp-mysqlDumpIncremental2
mv bkp/bkp-mysqlDumpIncremental1 bkp/bkp-mysqlDumpIncremental2
mv bkp/bkp-mysqlDumpIncremental bkp/bkp-mysqlDumpIncremental1
mysqldump -u root -padmin.root prueba_proyecto > /bkp/bkp-mysqlDumpIncremental/SCIdumpIncremental.sql
rsync -avh /bkp/bkp-mysqlDump/SCIdump.sql /bkp/bkp-mysqlDumpIncremental/SCIdumpIncremental.sql