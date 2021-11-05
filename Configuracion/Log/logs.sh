log(){
echo "Welcome to Red Hat Operative System Logs"
echo "\n1.  Logs - January"
echo "\n2.  Logs - February"
echo "\n3.  Logs - March"
echo "\n4.  Logs - April"
echo "\n5.  Logs - May"
echo "\n6.  Logs - June"
echo "\n7.  Logs - July"
echo "\n8.  Logs - August"
echo "\n9.  Logs - September"
echo "\n10. Logs - October"
echo "\n11. Logs - November"
echo "\n12. Logs - December"
echo "\n13. Go Back to Operator"
echo "\n0.  Exit Operator"
}
log
read -p "Seleccione una opcion: " opcionLogs
case $opcionLogs in 
	1)
	grep -i Jan /var/log/messages
	;;
	2)
	grep -i Feb /var/log/messages
	;;
	3)
	grep -i Mar /var/log/messages
	;;
	4)
	grep -i Apr /var/log/messages
	;;
	5)
	grep -i May /var/log/messages
	;;
	6)
	grep -i Jun /var/log/messages
	;;
	7)
	grep -i Jul /var/log/messages
	;;
	8)
	grep -i Aug /var/log/messages
	;;
	9)
	grep -i Set /var/log/messages
	;;
	10)
	grep -i Oct /var/log/messages
	;;
	11)
	grep -i Nov /var/log/messages
	;;
	12)
	grep -i Dic /var/log/messages
	;;
	13)
	sh /home/adminPractico(MathiasMelo)/adminPractico.sh
	;;
	0)
	break
	;;
esac 