#Archivo passwd
cp /etc/passwd /etc/passwdBkp
gzip /etc/passwdBkp
rm /bkp/bkpAyDLinux/bkpPasswd2
mv /bkp/bkpAyDLinux/bkpPasswd1 /bkp/bkpAyDLinux/bkpPasswd2
mv /bkp/bkpAyDLinux/bkpPasswd /bkp/bkpAyDLinux/bkpPasswd1
mv /etc/passwdBkp.gz /bkp/bkpAyDLinux/bkpPasswd
echo "BackUp Automatizado de Archivo Passwd realizado con éxito!!"

#Directorio home
tar cvfz /bkp/bkpAyDLinux/bkpHomeTar$(date +%Y-%m-%d).tar.gz /home
rm /bkp/bkpAyDLinux/bkpHomeDir2
mv /bkp/bkpAyDLinux/bkpHomeDir1 /bkp/bkpAyDLinux/bkpHomeDir2
mv /bkp/bkpAyDLinux/bkpHomeDir /bkp/bkpAyDLinux/bkpHomeDir1
mv /bkp/bkpAyDLinux/bkpHomeTar.tar.gz /bkp/bkpAyDLinux/bkpHomeDir
echo "BackUp Automatizado del Directorio Home realizado con éxito!!"

#Archivo gpasswd
cp /etc/gpasswd /etc/gpasswdBkp
gzip /etc/gpasswdBkp
rm /bkp/bkpAyDLinux/bkpGpasswd2
mv /bkp/bkpAyDLinux/bkpGpasswd1 /bkp/bkpAyDLinux/bkpGpasswd2
mv /bkp/bkpAyDLinux/bkpGpasswd /bkp/bkpAyDLinux/bkpGpasswd1
mv /etc/gpasswdBkp.gz /bkp/bkpAyDLinux/bkpGpasswd
echo "BackUp Automatizado de Archivo Gpasswd realizado con éxito!!"

#Archivo gshadow
cp /etc/gshadow /etc/gshadowBkp
gzip /etc/gshadowBkp
rm /bkp/bkpAyDLinux/bkpGshadow
mv /bkp/bkpAyDLinux/bkpGshadow1 /bkp/bkpAyDLinux/bkpGshadow2
mv /bkp/bkpAyDLinux/bkpGshadow /bkp/bkpAyDLinux/bkpGshadow1
mv /etc/gshadowBkp.gz /bkp/bkpAyDLinux/bkpGshadow
echo "BackUp Automatizado de Archivo Gshadow realizado con éxito!!"

#Configuración SSH
cp /etc/ssh/sshd /etc/sshdBkp
gzip /etc/sshdBkp
rm /bkp/bkpAyDLinux/bkpSshd2
mv /bkp/bkpAyDLinux/bkpSshd1 /bkp/bkpAyDLinux/bkpSshd2
mv /bkp/bkpAyDLinux/bkpSshd /bkp/bkpAyDLinux/bkpSshd1
mv /etc/sshdBkp.gz /bkp/bkpAyDLinux/bkpSshd
echo "BackUp Automatizado de la Configuración del SSH realizado con éxito!!"

 #Archivo squid
cp /etc/squid /etc/squidBkp
gzip /etc/squidBkp
rm /bkp/bkpAyDLinux/bkpSquid2
mv /bkp/bkpAyDLinux/bkpSquid1 /bkp/bkpAyDLinux/bkpSquid2
mv /bkp/bkpAyDLinux/bkpSquid /bkp/bkpAyDLinux/bkpSquid1
mv /etc/squidBkp.gz /bkp/bkpAyDLinux/bkpSquid
echo "BackUp Automatizado de Archivo Squid realizado con éxito!!"

 #Directorio mysql
tar cvfz /bkp/bkpAyDLinux/bkpMysqlTar$(date +%Y-%m-%d).tar.gz /var/lib/mysql
rm /bkp/bkpAyDLinux/bkpMysqlDir2 
mv /bkp/bkpAyDLinux/bkpMysqlDir1 /bkp/bkpAyDLinux/bkpMysqlDir2
mv /bkp/bkpAyDLinux/bkpMysqlDir /bkp/bkpAyDLinux/bkpMysqlDir1
mv /bkp/bkpAyDLinux/bkpMysqlTar.tar.gz /bkp/bkpAyDLinux/bkpMysqlDir
echo "BackUp Automatizado de Directorio Mysql realizado con éxito!!"

#Dump Mysql
rm /bkp/bkp-mysqlDump2
mv bkp/bkp-mysqlDump1 bkp/bkp-mysqlDump2
mv bkp/bkp-mysqlDump bkp/bkp-mysqlDump1
mysqldump -h 192.168.0.7 -u root -padmin.root prueba_proyecto > /bkp/bkp-mysqlDump/SCIdump.sql
echo "BackUp Automatizado de la Base de Datos realizado con éxito!"

#Archivo shadow
cp /etc/shadow /etc/shadowBkp
gzip /etc/shadowBkp
rm /bkp/bkpAyDLinux/bkpShadow2
mv /bkp/bkpAyDLinux/bkpShadow1 /bkp/bkpAyDLinux/bkpShadow2
mv /bkp/bkpAyDLinux/bkpShadow /bkp/bkpAyDLinux/bkpShadow1
mv /etc/shadowBkp.gz /bkp/bkpAyDLinux/bkpShadow
echo "BackUp Automatizado de Archivo Shadow realizado con éxito!!"

#Init Script iptables
cp /etc/init.d/iptables /etc/init.d/iptablesScriptBkp
gzip /etc/iptablesScriptBkp
rm /bkp/bkpAyDLinux/bkpIptablesScript2
mv /bkp/bkpAyDLinux/bkpIptablesScript1 /bkp/bkpAyDLinux/bkpIptablesScript2
mv /bkp/bkpAyDLinux/bkpIptablesScript /bkp/bkpAyDLinux/bkpIptablesScript1
mv /etc/iptablesScriptBkp.gz /bkp/bkpAyDLinux/bkpIptablesScript
echo "BackUp Automatizado del Script Iptables realizado con éxito!!"


#Configuración iptables
cp /etc/sysconfing/iptables /etc/sysconfig/iptablesCfgBkp
gzip /etc/iptablesCfgBkp
rm /bkp/bkpAyDLinux/bkpIptablesCfg2
mv /bkp/bkpAyDLinux/bkpIptablesCfg1 /bkp/bkpAyDLinux/bkpIptablesCfg2
mv /bkp/bkpAyDLinux/bkpIptablesCfg /bkp/bkpAyDLinux/bkpIptablesCfg1
mv /etc/iptablesCfgBkp.gz /bkp/bkpAyDLinux/bkpIptablesCfg
echo "BackUp Automatizado de la Configuración del Iptables realizado con éxito!!"

#Archivo binario iptables
cp /sbin/iptables /sbin/iptablesBinBkp
gzip /etc/iptablesBinBkp
mv /bkp/bkpAyDLinux/bkpIptablesBin2
mv /bkp/bkpAyDLinux/bkpIptablesBin1 /bkp/bkpAyDLinux/bkpIptablesBin2
mv /bkp/bkpAyDLinux/bkpIptablesBin /bkp/bkpAyDLinux/bkpIptablesBin1
mv /etc/iptablesBinBkp.gz /bkp/bkpAyDLinux/bkpIptablesBin
echo "BackUp Automatizado de Archivo Binario Iptables realizado con éxito!!"

#Configuraciones de crontab
cp /etc/crontab /etc/crontabBkp
gzip /etc/crontabBkp
rm /bkp/bkpAyDLinux/bkpCrontab2
mv /bkp/bkpAyDLinux/bkpCrontab1 /bkp/bkpAyDLinux/bkpCrontab2
mv /bkp/bkpAyDLinux/bkpCrontab /bkp/bkpAyDLinux/bkpCrontab1
mv /etc/crontabBkp.gz /bkp/bkpAyDLinux/bkpCrontab
echo "BackUp Automatizado de Crontab realizado con éxito!!"

#Logs de cron
cp /var/log/cron /var/log/cronBkp
gzip /var/log/cronBkp
rm /bkp/bkpAyDLinux/bkpCron2
mv /bkp/bkpAyDLinux/bkpCron1 /bkp/bkpAyDLinux/bkpCron2
mv /bkp/bkpAyDLinux/bkpCron /bkp/bkpAyDLinux/bkpCron1
mv /var/log/cronBkp.gz /bkp/bkpAyDLinux/bkpCron
echo "BackUp Automatizado de Logs de Cron realizado con éxito!!"

#Autenticaciones
cp /var/log/secure /var/log/secureBkp
gzip /var/log/secureBkp
rm /bkp/bkpAyDLinux/bkpSecure2
mv /bkp/bkpAyDLinux/bkpSecure1 /bkp/bkpAyDLinux/bkpSecure2
mv /bkp/bkpAyDLinux/bkpSecure /bkp/bkpAyDLinux/bkpSecure1 
mv /var/log/secureBkp.gz /bkp/bkpAyDLinux/bkpSecure
echo "BackUp Automatizado de las Autenticaciones realizado con éxito!!"

#Mensajes del sistema
cp /var/log/messages /var/log/messagesBkp
gzip /var/log/messagesBkp
rm /bkp/bkpAyDLinux/bkpMessages2
mv /bkp/bkpAyDLinux/bkpMessages1 /bkp/bkpAyDLinux/bkpMessages2
mv /bkp/bkpAyDLinux/bkpMessages /bkp/bkpAyDLinux/bkpMessages1
mv /var/log/messagesBkp.gz /bkp/bkpAyDLinux/bkpMessages
echo "BackUp Automatizado de los Mensajes del Sistema realizado con éxito!!"

#Archivo de Sesiones que las muestra en lenguaje humano con el comando last
cp /var/log/wtmp /var/log/wtmpBkp
gzip /var/log/wtmpBkp
rm /bkp/bkpAyDLinux/bkpWtmp2
mv /bkp/bkpAyDLinux/bkpWtmp1 /bkp/bkpAyDLinux/bkpWtmp2
mv /bkp/bkpAyDLinux/bkpWtmp /bkp/bkpAyDLinux/bkpWtmp1
mv /var/log/wtmpBkp.gz /bkp/bkpAyDLinux/bkpWtmp
echo "BackUp Automatizado de Archivo de Sesiones realizado con éxito!!"
