#Archivo passwd
rsync -avh /etc/passwd /bkp/bkpAyDLinux/bkpPasswd

#Directorio home 
rsync -avh /home /bkp/bkpAyDLinux/bkpHomeDir

#Archivo gpasswd
rsync -avh /etc/gpasswd /bkp/bkpAyDLinux/bkpGpasswd

#Archivo gshadow
rsync -avh /etc/gshadow /bkp/bkpAyDLinux/bkpGshadow

#Configuración SSH
rsync -avh /etc/ssh/sshd /bkp/bkpAyDLinux/bkpSshd

#Archivo squid
rsync -avh /etc/squid /bkp/bkpAyDLinux/bkpSquid

#Directorio mysql
rsyn -avh /var/lib/mysql /bkp/bkpAyDLinux/bkpMysqlDir

#Archivo shadow
rsync -avh /etc/shadow /bkp/bkpAyDLinux/bkpShadow

#Init Script iptables
rsync -avh /etc/init.d/iptables /bkp/bkpAyDLinux/bkpIptablesScript

#Configuración iptables
rsync -avh /etc/sysconfing/iptables /bkp/bkpAyDLinux/bkpIptablesCfg

#Archivo binario iptables
rsync -avh /sbin/iptables /bkp/bkpAyDLinux/bkpIptablesBin

#Configuraciones de crontab
rsync -avh /var/log/cron /bkp/bkpAyDLinux/bkpCron

#Autenticaciones
rsync -avh /var/log/secure /bkp/bkpAyDLinux/bkpSecure

#Mensajes del sistema
rsync -avh /var/log/messages /bkp/bkpAyDLinux/bkpMessages

#Archivo de Sesiones que las muestra en lenguaje humano con el comando last
rsync -avh /var/log/wtmp /bkp/bkpAyDLinux/bkpWtmp

#Configuracion de red
rsync -avh /etc/sysconfig/network-scripts/ifcfg-ens33 /bkp/bkp-ens33

#Operador
rsync -avh /home/admin/Operador /bkp/bkp-Operador

#Dump de la Base de Datos
mysqldump -u administrator -padministrator prueba_proyecto > /bkp/bkp-mysqlDump/SCIdump.sql
rsync -avh /bkp/bkp-mysqlDump/SCIdump.sql /bkp/bkp-mysqlDump/SCIdump.sql